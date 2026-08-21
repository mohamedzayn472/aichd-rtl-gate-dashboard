FROM node:22-bookworm-slim

ENV NODE_ENV=production \
    PYTHONUNBUFFERED=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PATH="/opt/venv/bin:${PATH}"

RUN apt-get update \
    && apt-get install -y --no-install-recommends python3 python3-venv build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install only the runtime Python dependencies used by predict.py.
COPY requirements.runtime.txt ./
RUN python3 -m venv /opt/venv \
    && /opt/venv/bin/python -m pip install --upgrade pip \
    && /opt/venv/bin/pip install --no-cache-dir -r requirements.runtime.txt

# Install the dashboard dependencies with the lockfile before copying source.
COPY dashboard/package.json dashboard/package-lock.json ./dashboard/
WORKDIR /app/dashboard
RUN npm ci

# Copy the dashboard and backend source. The .dockerignore excludes local
# virtual environments, node_modules, caches, and generated development files.
WORKDIR /app
COPY dashboard ./dashboard
COPY rtl_gate_estimator ./rtl_gate_estimator
COPY README.md ./README.md

WORKDIR /app/dashboard
RUN npm run build

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=5s --start-period=45s --retries=3 \
  CMD node -e "fetch('http://127.0.0.1:'+(process.env.PORT||3000)+'/').then(r=>process.exit(r.status<500?0:1)).catch(()=>process.exit(1))"

CMD ["sh", "-c", "npm run start -- --hostname 0.0.0.0 --port ${PORT:-3000}"]
