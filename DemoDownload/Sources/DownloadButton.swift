//
//  DownloadButton.swift
//  Demo
//
//  Created by qbuser on 09/12/16.
//  Copyright © 2016 qbuser. All rights reserved.
//

import UIKit

public class DownloadButton: UIButton {
    
    override public func awakeFromNib() {
        self.tintColor = UIColor.darkGrayColor()
        let bundle = NSBundle(forClass: DownloadButton.self)
        let image = UIImage(named: "1.png", inBundle: bundle, compatibleWithTraitCollection: nil)
        self.setImage((image)! ,  forState: .Normal)
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    override public func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        var imageArray = [UIImage]()
        for i in 2...16 {
            let bundle = NSBundle(forClass: DownloadButton.self)
            let image = UIImage(named: "\(i).png", inBundle: bundle, compatibleWithTraitCollection: nil)
            imageArray.append(image!)
        }
      
        self.imageView!.animationRepeatCount = 1
        self.imageView!.animationImages = imageArray
        self.imageView!.animationDuration = 1.0
        self.imageView!.startAnimating()
           let triggerTime = (Int64(NSEC_PER_SEC) * 1)
         dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
         self.downloadStart()
         })
    }
    func downloadStart(){
        var newImageArray = [UIImage]()
        for i in 14...19 {
            let bundle = NSBundle(forClass: DownloadButton.self)
            let image = UIImage(named: "\(i).png", inBundle: bundle, compatibleWithTraitCollection: nil)
            newImageArray.append(image!)
        }
        self.imageView!.animationRepeatCount = 0
        self.imageView!.animationImages = newImageArray
        self.imageView!.animationDuration = 1.0
        self.imageView!.startAnimating()
    }
   public func downloadFinish()  {
        var finishImageArray = [UIImage]()
        for i in 20...37 {
            let bundle = NSBundle(forClass: DownloadButton.self)
            let image = UIImage(named: "\(i).png", inBundle: bundle, compatibleWithTraitCollection: nil)
            finishImageArray.append(image!)
        }
        self.imageView!.animationRepeatCount = 0
        self.imageView!.animationImages = finishImageArray
        self.imageView!.animationDuration = 1.2
        self.imageView!.startAnimating()

        let triggerTime = (Int64(NSEC_PER_SEC) * 1)
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
            self.imageView!.stopAnimating()
        })
    }
}