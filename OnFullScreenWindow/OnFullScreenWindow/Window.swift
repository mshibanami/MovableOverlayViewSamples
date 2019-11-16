//
//  Window.swift
//  OnFullScreenWindow
//
//  Created by abc on 7/2/16.
//  Copyright © 2016 mshibanami. All rights reserved.
//

import Cocoa

class Window: NSWindow
{
    override init(contentRect: NSRect, styleMask aStyle: NSWindow.StyleMask, backing bufferingType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: aStyle, backing: bufferingType, defer: flag)
        
        styleMask = .borderless
        level = .statusBar
        backgroundColor = NSColor.blue.withAlphaComponent(0.1)
        isOpaque = false
        collectionBehavior = NSWindow.CollectionBehavior.canJoinAllSpaces
    }
}
