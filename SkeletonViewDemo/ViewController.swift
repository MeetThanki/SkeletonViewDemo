//
//  ViewController.swift
//  SkeletonViewDemo
//
//  Created by Meet Thanki on 09/07/20.
//  Copyright © 2020 Meet Thanki. All rights reserved.
//

import UIKit
import SkeletonView

class ViewController: UIViewController {
    
    @IBOutlet weak var img : UIImageView!
    @IBOutlet weak var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        img.skeletonCornerRadius = 40
        img.showSkeleton()
        label.skeletonCornerRadius = 10
        label.showSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.view.hideSkeleton()
        }
        
    }


}

