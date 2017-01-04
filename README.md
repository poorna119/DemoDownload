# DemoDownload
`DemoDownload` is a customized button used for downloading in iOS.
![alt tag](https://uimovement.com/media/resource_image/image_2648.gif)
#### Highlights
- Starts downloading when the button is tapped.
- When downloading is completed, the button animation stops.
## Code Example
When the download button is tapped downloading starts. The download stops when the user calls the function downloadFinish().
## Installation
### CocoaPods: 
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:
```bash
$ gem install cocoapods
```
To integrate `DemoDownload` into your Xcode project using CocoaPods, specify it in your Podfile:
```ruby
platform :ios, '8.0'
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!
target ’Test’ do
  pod ‘DemoDownload’
end
```
Then, run the following command:
```bash
$ pod install
```
## Requirements
- Xcode 7.3+
- iOS 9.0+
- Swift 2.3+


## Communication

- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Usage

The user should import DemoDownload to his/her respective project.
```ruby
import DemoDownload
```
The button that should be used as download button should be given the class DownloadButton. Create an outlet of the button by holding down the Control key and drag (or right-click-and-drag).
```ruby
@IBOutlet weak var downloadButton: DownloadButton!
``` 
Call the function downloadFinish() using the outlet whenever the user wants to stop the downloading.
```ruby
downloadButton.downloadFinish()
```   
## Author
Poorna Raju, poorna119@gmail.com

## License

Copyright (c) 2016 Poorna Raju
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

