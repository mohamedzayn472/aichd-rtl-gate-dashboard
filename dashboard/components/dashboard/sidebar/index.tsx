"use client";

import * as React from "react";
import { usePathname } from "next/navigation";
import { Sidebar, SidebarContent, SidebarFooter, SidebarGroup, SidebarGroupContent, SidebarGroupLabel, SidebarHeader, SidebarMenu, SidebarMenuButton, SidebarMenuItem, SidebarRail } from "@/components/ui/sidebar";
import { Popover, PopoverContent, PopoverTrigger } from "@/components/ui/popover";
import { cn } from "@/lib/utils";
import AtomIcon from "@/components/icons/atom";
import BracketsIcon from "@/components/icons/brackets";
import ProcessorIcon from "@/components/icons/proccesor";
import CuteRobotIcon from "@/components/icons/cute-robot";
import EmailIcon from "@/components/icons/email";
import GearIcon from "@/components/icons/gear";
import MonkeyIcon from "@/components/icons/monkey";
import BoomIcon from "@/components/icons/boom";
import DotsVerticalIcon from "@/components/icons/dots-vertical";
import { Bullet } from "@/components/ui/bullet";
import Image from "next/image";

const data = {
  navMain: [
    { title: "Platform", items: [
      { title: "Overview", url: "/", icon: BracketsIcon },
      { title: "Dashboard", url: "/dashboard", icon: AtomIcon },
      { title: "Predict Tool", url: "/predict", icon: ProcessorIcon },
      { title: "Faithfulness", url: "/faithfulness", icon: CuteRobotIcon },
      { title: "Validation", url: "/validation", icon: EmailIcon },
    ] },
    { title: "Analysis", items: [
      { title: "Model Comparison", url: "/model-comparison", icon: GearIcon },
      { title: "Learning Curve", url: "/learning-curve", icon: BoomIcon },
      { title: "Latency Bench", url: "/latency", icon: MonkeyIcon },
      { title: "Developer Docs", url: "/docs", icon: GearIcon },
    ] },
  ],
  user: { name: "RTL-ENG", email: "engineer@rtl-gate.ai", avatar: "/avatars/user_krimson.png" },
};

export function DashboardSidebar({ className, ...props }: React.ComponentProps<typeof Sidebar>) {
  const pathname = usePathname();
  return (
    <Sidebar {...props} className={cn("py-3 rounded-2xl border border-sidebar-border bg-sidebar/80 backdrop-blur-2xl shadow-[0_24px_72px_rgba(2,9,25,0.34)]", className)}>
      <SidebarHeader className="flex gap-3 flex-row px-3 pb-5">
        <div className="observatory-brand-mark flex overflow-clip size-11 shrink-0 items-center justify-center rounded-xl text-sidebar-primary-foreground">
          <AtomIcon className="size-7" />
        </div>
        <div className="grid flex-1 text-left leading-tight min-w-0">
          <span className="observatory-brand-name text-xl font-display leading-tight">AICHD</span>
          <span className="observatory-brand-subtitle text-[9px] uppercase whitespace-nowrap">RTL observatory</span>
        </div>
      </SidebarHeader>
      <SidebarContent>
        {data.navMain.map((group) => (
          <SidebarGroup key={group.title}>
            <SidebarGroupLabel><Bullet className="mr-2" />{group.title}</SidebarGroupLabel>
            <SidebarGroupContent>
              <SidebarMenu>
                {group.items.map((item) => (
                  <SidebarMenuItem key={item.title} className="group">
                    <SidebarMenuButton asChild isActive={pathname === item.url}>
                      <a href={item.url}><item.icon className="size-5" /><span>{item.title}</span></a>
                    </SidebarMenuButton>
                  </SidebarMenuItem>
                ))}
              </SidebarMenu>
            </SidebarGroupContent>
          </SidebarGroup>
        ))}
      </SidebarContent>
      <SidebarFooter className="p-0">
        <SidebarGroup>
          <SidebarGroupLabel><Bullet className="mr-2" />Operator</SidebarGroupLabel>
          <SidebarGroupContent>
            <SidebarMenu>
              <SidebarMenuItem>
                <Popover>
                  <PopoverTrigger className="flex gap-0.5 w-full group cursor-pointer">
                    <div className="shrink-0 flex size-12 items-center justify-center rounded-lg bg-sidebar-primary text-sidebar-primary-foreground overflow-clip">
                      <Image src={data.user.avatar} alt={data.user.name} width={120} height={120} />
                    </div>
                    <div className="group/item pl-3 pr-1.5 py-1.5 flex-1 flex bg-sidebar-accent hover:bg-sidebar-accent-active/75 items-center rounded-lg group-data-[state=open]:bg-sidebar-accent-active group-data-[state=open]:text-sidebar-accent-foreground">
                      <div className="grid flex-1 text-left text-sm leading-tight min-w-0"><span className="truncate text-lg font-display">{data.user.name}</span><span className="truncate text-[9px] uppercase opacity-60">{data.user.email}</span></div>
                      <DotsVerticalIcon className="ml-auto size-4" />
                    </div>
                  </PopoverTrigger>
                  <PopoverContent className="w-56 p-0" side="bottom" align="end" sideOffset={4}>
                    <div className="flex flex-col"><button className="flex items-center px-4 py-2 text-sm hover:bg-accent"><ProcessorIcon className="mr-2 h-4 w-4" />Profile</button><button className="flex items-center px-4 py-2 text-sm hover:bg-accent"><GearIcon className="mr-2 h-4 w-4" />Settings</button></div>
                  </PopoverContent>
                </Popover>
              </SidebarMenuItem>
            </SidebarMenu>
          </SidebarGroupContent>
        </SidebarGroup>
      </SidebarFooter>
      <SidebarRail />
    </Sidebar>
  );
}
