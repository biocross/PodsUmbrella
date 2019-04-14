//
//  ViewController.swift
//  MergedPodsSample
//
//  Created by Siddharth Gupta on 13/04/19.
//  Copyright © 2019 Siddharth Gupta. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage
import SwiftyJSON
import SecureDefaults

import MergedPods.MBProgressHUD
import MergedPods.AFNetworking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MBProgressHUD.showAdded(to: self.view, animated: true)
        
        let manager = AFHTTPSessionManager.init(sessionConfiguration: URLSessionConfiguration.default)
        let request = URLRequest(url: URL(string: "https://httpbin.org/get")!)

        manager.dataTask(with: request) { (_, _, _) in
            MBProgressHUD.hide(for: self.view, animated: true)
        }.resume()
        
        Alamofire.request("https://httpbin.org/get").responseJSON { _ in
            MBProgressHUD.hide(for: self.view, animated: true)
        }
    }


}

