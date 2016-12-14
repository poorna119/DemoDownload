//
//  DownloadButton.swift
//  Demo
//
//  Created by qbuser on 09/12/16.
//  Copyright © 2016 qbuser. All rights reserved.
//

import UIKit

class DownloadButton: UIButton {
    
    override func awakeFromNib() {
        self.setImage(UIImage(named: "1.png")! ,  forState: .Normal)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        /*  UIView.animateWithDuration(0.1, animations: { () -> Void in
         self.transform = CGAffineTransformMakeScale(0.8, 0.8)
         
         })
         super.touchesBegan(touches, withEvent: event)
         */
        var imageArray = [UIImage]()
        for i in 2...16 {
            imageArray.append(UIImage(named: "\(i).png")!)
        }
        
        self.setImage(UIImage(named: "1.png")!, forState: .Normal)
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
            newImageArray.append(UIImage(named: "\(i).png")!)
        }
        self.imageView!.animationRepeatCount = 0
        self.imageView!.animationImages = newImageArray
        self.imageView!.animationDuration = 1.0
        self.imageView!.startAnimating()
       /* let triggerTime = (Int64(NSEC_PER_SEC) * 5)
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
            self.downloadFinish()
        })
 */
    }
    func downloadFinish()  {
        var finishImageArray = [UIImage]()
        for i in 20...37 {
            finishImageArray.append(UIImage(named: "\(i).png")!)
        }
        self.imageView!.animationRepeatCount = 0
        self.imageView!.animationImages = finishImageArray
        self.imageView!.animationDuration = 1.2
        self.imageView!.startAnimating()
        
        //   sender.setImage(UIImage(named: nil)! ,  forState: .Normal)
        let triggerTime = (Int64(NSEC_PER_SEC) * 1)
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
            self.imageView!.stopAnimating()
        })
        
    }
    
    
    
    
    /*   override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
     
     
     UIView.animateWithDuration(0.5,
     delay: 0,
     usingSpringWithDamping: 0.2,
     initialSpringVelocity: 6.0,
     options: UIViewAnimationOptions.AllowUserInteraction,
     animations: { () -> Void in
     self.transform = CGAffineTransformIdentity
     }) { (Bool) -> Void in
     super.touchesCancelled(touches, withEvent: event)
     }
     
     }
     
     
     override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
     UIView.animateWithDuration(0.5,
     delay: 0,
     usingSpringWithDamping: 0.2,
     initialSpringVelocity: 6.0,
     options: UIViewAnimationOptions.AllowUserInteraction,
     animations: { () -> Void in
     self.transform = CGAffineTransformIdentity
     }) { (Bool) -> Void in
     super.touchesEnded(touches, withEvent: event)
     }
     }
     
     
     
     
     */
    
    
    
    /* override var highlighted: Bool {
     get {
     return super.highlighted
     }
     set {
     if newValue {
     backgroundColor = UIColor.blackColor()
     }
     else {
     backgroundColor = UIColor.brownColor()
     }
     super.highlighted = newValue
     }
     
     
     }*/
    
    
}