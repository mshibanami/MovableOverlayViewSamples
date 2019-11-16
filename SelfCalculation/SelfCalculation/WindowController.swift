//
//  WindowController.swift
//  SelfCalculation
//
//  Created by abc on 6/30/16.
//  Copyright © 2016 mshibanami. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
    var viewController: NSViewController?
    var dragStartPoint: NSPoint?

    override func windowDidLoad() {
        super.windowDidLoad()

        viewController = window?.contentViewController
    }

    override func mouseDown(with theEvent: NSEvent) {
        super.mouseDown(with: theEvent)

        dragStartPoint = theEvent.locationInWindow
    }


    override func mouseDragged(with event: NSEvent) {
        super.mouseDragged(with: event)

        guard let window = window, let dragStartPoint = dragStartPoint else {
            return
        }

        let rect = CGRect(x: event.locationInWindow.x,
                          y: event.locationInWindow.y,
                          width: 0,
                          height: 0)

        let cp = window.convertToScreen(rect)

        let pt = CGPoint(x: cp.origin.x - dragStartPoint.x,
                         y: cp.origin.y - dragStartPoint.y)

        let rc = CGRect(x: pt.x, y: pt.y, width: window.frame.width, height: window.frame.height)

        window.setFrame(rc, display: true)
    }
}
