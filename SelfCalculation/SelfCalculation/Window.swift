//
//  Window.swift
//  SelfCalculation
//
//  Created by abc on 7/2/16.
//  Copyright © 2016 mshibanami. All rights reserved.
//

import Cocoa

class Window: NSWindow
{
    override var contentViewController: NSViewController? {
        didSet {
            if let contentViewController = contentViewController
            {
                setFrame(contentViewController.view.frame, display: true)
            }
        }
    }

    override init(contentRect: NSRect, styleMask aStyle: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: aStyle, backing: bufferingType, defer: flag)

        styleMask = [NSBorderlessWindowMask]
        level = Int(CGWindowLevelForKey(CGWindowLevelKey.statusWindow))
        isOpaque = false
        backgroundColor = NSColor.green.withAlphaComponent(0.1)
    }
}
