This is three samples to move a image view on a transparent window by dragging.

SimpleWay
---
This is literally a simple solution. it just uses the following properties:

- [NSWindow.isMovableByWindowBackground](https://developer.apple.com/reference/appkit/nswindow/1419072-ismovablebywindowbackground)
- [NSView.mouseDownCanMoveWindow](https://developer.apple.com/reference/appkit/nsview/1483666-mousedowncanmovewindow)

But it seems that we can't put the window on the status bar on El Capitan or earlier. But except Sierra (possibly or later). I don't know why. Maybe Apple changed something.


OnFullScreenWindow
---
The window is fixed and full screen. Only the view moves on the window.

It can move even on the status bar, but this doesn't work properly on multi monitors if macOS's separate Spaces (System Preferences -> Mission Control -> Displays have separate Spaces) is enabled. Because each screens don't show other screen's windows for the setting.


SelfCalculation
---
Calculate the window position instead of using the properties of SimpleWay.
The window can move even on the status bar on all macOS, probably. And works fine even on multi monitors.
