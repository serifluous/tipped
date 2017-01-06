# Pre-work - tipped

tipped is a tip calculator application for iOS.

Submitted by: Sarah Li

Time spent: 2 hours spent in total

## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Custom font
* [x] UI animations
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

* [x] Keeps font size of bill total constant when text overflows
* [ ] Split bill
* [ ] App icon
* [ ] Change height of UISegmentedControl

## Video Walkthrough

Here's a walkthrough of the current implementation:

<a href="https://raw.githubusercontent.com/serifluous/tipped/master/Resources/tipped_recording.gif" target="_blank"><img src="https://raw.githubusercontent.com/serifluous/tipped/master/Resources/tipped_recording.gif" title="Video Walkthrough" width='' alt="tipped Video Walkthrough" /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

- Had to change "Any" argument in calculateTip to "AnyObject" to be able to drag Value Changed event for the tipControl to the function
- Used a tutorial (http://codewithchris.com/common-mistakes-with-adding-custom-fonts-to-your-ios-app/) to add custom font, but couldn't find an easy way to change the system font
- Found a way to replace the font for UISegmentedControl (http://stackoverflow.com/questions/27940042/how-to-change-font-size-and-font-name-of-uisegmentedcontrol-programmatically-on) and also fiddled with AppDelegate (http://stackoverflow.com/questions/34559989/swift-application-didfinishlaunchingwithoptions-method)
- Used a tutorial (https://www.raywenderlich.com/113674/ios-animation-tutorial-getting-started) for animations

## License

    Copyright 2017 Sarah Li

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.