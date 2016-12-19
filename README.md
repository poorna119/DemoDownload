#DemoDownload
DemoDownload is a customized button used for downloading in iOS.
#Code Example
When the download button is tapped downloading starts. The download stops when the user calls the function downloadFinish().
#Installation
To install the Download Button, the user must first import DemoDownload from cocoapods to his/her respective project. Then podfile should be updated. 
#Tests
The button that should be used as download button should be given the class DownloadButton. The width and height of the button should be 115 and 115. Create an outlet of the button and call the function downloadFinish using the outlet whenever the user wants to stop the downloading.
   @IBOutlet weak var downloadButton: DownloadButton!
   downloadButton.downloadFinish()
#Notes
The width and height of the button to be used as download button should be 115 and 115.
#Developed By
Poorna Raju.
#License
Copyright (c) 2016 Poorna Raju
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
![alt tag](https://uimovement.com/media/resource_image/image_2648.gif)
