//
//  Window.swift
//  SelfCalculation
//
//  Created by abc on 7/2/16.
//  Copyright © 2016 mshibanami. All rights reserved.
//

import Cocoa

class Window: NSWindow {
    override var contentViewController: NSViewController? {
        didSet {
            if let contentViewController = contentViewController {
                setFrame(contentViewController.view.frame, display: true)
            }
        }
    }

    override init(contentRect: NSRect, styleMask aStyle: NSWindow.StyleMask, backing bufferingType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: aStyle, backing: bufferingType, defer: flag)
        styleMask = .borderless
        level = .statusBar
        isOpaque = false
        backgroundColor = NSColor.green.withAlphaComponent(0.1)
    }
}
