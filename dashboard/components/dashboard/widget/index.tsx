"use client";

import React, { useState, useEffect } from "react";
import { Card, CardContent } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import TVNoise from "@/components/ui/tv-noise";
import Image from "next/image";

export default function Widget() {
  const [currentTime, setCurrentTime] = useState(new Date());

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentTime(new Date());
    }, 1000);
    return () => clearInterval(timer);
  }, []);

  const formatTime = (date: Date) =>
    date.toLocaleTimeString("en-US", { hour12: true, hour: "numeric", minute: "2-digit" });

  const formatDate = (date: Date) => ({
    dayOfWeek: date.toLocaleDateString("en-US", { weekday: "long" }),
    restOfDate: date.toLocaleDateString("en-US", { year: "numeric", month: "short", day: "numeric" }),
  });

  const dateInfo = formatDate(currentTime);

  return (
    <Card className="w-full aspect-[2] relative overflow-hidden">
      <TVNoise opacity={0.3} intensity={0.2} speed={40} />
      <CardContent className="bg-accent/30 flex-1 flex flex-col justify-between text-sm font-medium uppercase relative z-20">
        <div className="flex justify-between items-center">
          <span className="opacity-50">{dateInfo.dayOfWeek}</span>
          <span>{dateInfo.restOfDate}</span>
        </div>
        <div className="text-center">
          <div className="text-4xl font-display leading-tight" suppressHydrationWarning>
            {formatTime(currentTime)}
          </div>
          <div className="text-xs text-muted-foreground mt-1 tracking-widest">
            PLATFORM UPTIME
          </div>
        </div>
        <div className="flex justify-between items-center">
          <span className="opacity-50 text-xs">R² 0.9612</span>
          <span className="text-xs">RTL GATE AI</span>
          <Badge variant="secondary" className="bg-accent text-xs">
            SYNCED
          </Badge>
        </div>
        <div className="absolute inset-0 -z-[1]">
          <Image
            src="/assets/pc_blueprint.gif"
            alt="Platform status animation"
            width={250}
            height={250}
            className="size-full object-contain"
          />
        </div>
      </CardContent>
    </Card>
  );
}
