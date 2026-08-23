import * as React from "react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { SidebarTrigger } from "@/components/ui/sidebar";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import ProcessorIcon from "@/components/icons/proccesor";
import MobileNotifications from "@/components/dashboard/notifications/mobile-notifications";
import type { MockData } from "@/types/dashboard";
import BellIcon from "@/components/icons/bell";

interface MobileHeaderProps { mockData: MockData; }

export function MobileHeader({ mockData }: MobileHeaderProps) {
  const unreadCount = mockData.notifications.filter((n) => !n.read).length;
  return (
    <div className="lg:hidden h-header-mobile sticky top-0 z-50 bg-background/85 backdrop-blur-2xl border-b border-border">
      <div className="flex items-center justify-between px-4 py-3">
        <SidebarTrigger />
        <div className="flex items-center gap-2">
          <div className="observatory-brand-mark h-9 px-3 rounded-xl flex items-center justify-center gap-2 text-primary-foreground"><ProcessorIcon className="size-4" /><span className="text-xs font-display tracking-wider">AICHD</span></div>
        </div>
        <Sheet>
          <SheetTrigger asChild>
            <Button variant="secondary" size="icon" className="relative border border-border bg-accent/50">
              {unreadCount > 0 && <Badge className="absolute border-2 border-background -top-1 -left-2 h-5 w-5 text-xs p-0 flex items-center justify-center">{unreadCount > 9 ? "9+" : unreadCount}</Badge>}
              <BellIcon className="size-4" />
            </Button>
          </SheetTrigger>
          <SheetContent closeButton={false} side="right" className="w-[86%] max-w-md p-0 bg-popover/95 backdrop-blur-2xl"><MobileNotifications initialNotifications={mockData.notifications} /></SheetContent>
        </Sheet>
      </div>
    </div>
  );
}
