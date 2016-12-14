//
//  ViewController.swift
//  Demo
//
//  Created by qbuser on 06/12/16.
//  Copyright © 2016 qbuser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var downloadButton: DownloadButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.test()
    }
    
    func test() {
        let triggerTime = (Int64(NSEC_PER_SEC) * 10)
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, triggerTime), dispatch_get_main_queue(), { () -> Void in
            self.downloadButton.downloadFinish()
        })
        
    }
}
