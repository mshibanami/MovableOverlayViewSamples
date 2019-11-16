//
//  ViewController.swift
//  OnFullScreenWindow
//
//  Created by abc on 6/30/16.
//  Copyright © 2016 mshibanami. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var imageView:            ImageView!
    @IBOutlet weak var imageViewLeftSpacing: NSLayoutConstraint!
    @IBOutlet weak var imageViewTopSpacing:  NSLayoutConstraint!

    var dragStartPoint: NSPoint?

    override func mouseDown(with theEvent: NSEvent) {
        super.mouseDown(with: theEvent)

        dragStartPoint = imageView.convert(theEvent.locationInWindow, from: nil)
    }

    override func mouseDragged(with theEvent: NSEvent) {
        super.mouseDragged(with: theEvent)

        let viewPoint = view.convert(theEvent.locationInWindow, from: nil)

        if let dragStartPoint = dragStartPoint
        {
            let viewPointOnWindow = CGPoint(x: viewPoint.x - dragStartPoint.x,
                                            y: viewPoint.y - dragStartPoint.y)

            imageViewLeftSpacing.constant = viewPointOnWindow.x
            imageViewTopSpacing.constant = viewPointOnWindow.y
        }
    }
}

class View: NSView {
    override var isFlipped: Bool {
        get {
            return true
        }
    }
}

class ImageView: NSImageView {
    override var isFlipped: Bool {
        get {
            return true
        }
    }
}
