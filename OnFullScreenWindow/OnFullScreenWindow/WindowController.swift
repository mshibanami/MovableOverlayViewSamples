//
//  WindowController.swift
//  OnFullScreenWindow
//
//  Created by abc on 6/30/16.
//  Copyright © 2016 mshibanami. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController
{
    override func windowDidLoad() {
        super.windowDidLoad()

        let screens = NSScreen.screens
        
        let fullFrame = screens.reduce(NSZeroRect) {
            NSUnionRect($0, $1.frame)
        }
        window?.setFrame(fullFrame, display: true)
    }
}
