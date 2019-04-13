//
//  ViewController.swift
//  MergedPodsSample
//
//  Created by Siddharth Gupta on 13/04/19.
//  Copyright © 2019 Siddharth Gupta. All rights reserved.
//

import UIKit
import Alamofire
import AFNetworking
import SDWebImage
import MBProgressHUD
import SwiftyJSON
import SecureDefaults

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MBProgressHUD.showAdded(to: self.view, animated: true)
        
        Alamofire.request("https://httpbin.org/get").responseJSON { _ in
            MBProgressHUD.hide(for: self.view, animated: true)
        }
    
    }


}

