//
//  ViewController.swift
//  MergedPodsSample
//
//  Created by Siddharth Gupta on 13/04/19.
//  Copyright © 2019 Siddharth Gupta. All rights reserved.
//

import UIKit

// ObjC
import MergedPods.MBProgressHUD
import MergedPods.AFNetworking

// Swift
import MergedSwiftPods


class ViewController: UIViewController {

  let error: SwiftyJSONError = .unsupportedType
  let some: JSON = JSON(arrayLiteral: [])

  override func viewDidLoad() {
    super.viewDidLoad()

    MBProgressHUD.showAdded(to: self.view, animated: true)

    let manager = AFHTTPSessionManager.init(sessionConfiguration: URLSessionConfiguration.default)
    let request = URLRequest(url: URL(string: "https://httpbin.org/get")!)

    manager.dataTask(with: request, uploadProgress: nil, downloadProgress: nil) { (_, _, _) in
      MBProgressHUD.hide(for: self.view, animated: true)
    }

//    Alamofire.request("https://httpbin.org/get").responseJSON { _ in
//      MBProgressHUD.hide(for: self.view, animated: true)
//    }

    _ = SecureDefaults.init(suiteName: "MySecureDefaults")
  }
}

