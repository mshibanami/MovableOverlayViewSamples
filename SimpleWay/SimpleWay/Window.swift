//
//  Window.swift
//  SimpleWay
//
//  Created by abc on 7/2/16.
//  Copyright © 2016 mshibanami. All rights reserved.
//

import Cocoa

class Window: NSWindow
{
    override init(contentRect: NSRect, styleMask aStyle: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: aStyle, backing: bufferingType, defer: flag)

        styleMask = [NSBorderlessWindowMask]
        level = Int(CGWindowLevelForKey(CGWindowLevelKey.statusWindow))
        backgroundColor = NSColor.red.withAlphaComponent(0.1)
        isOpaque = false
        isMovableByWindowBackground = true
    }
}

class WindowController: NSWindowController
{
}
