//
//  AppDelegate.swift
//  OnFullScreenWindow
//
//  Created by abc on 1/28/17.
//  Copyright © 2017 mshibanami. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate
{
    let windowController: WindowController!
        = NSStoryboard(name: String(describing: WindowController.self), bundle: nil).instantiateInitialController()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        windowController.showWindow(nil)
    }
}

