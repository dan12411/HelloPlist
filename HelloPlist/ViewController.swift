//
//  ViewController.swift
//  HelloPlist
//
//  Created by 洪德晟 on 2016/10/7.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 找到路徑檔案
        if let scorePlist = Bundle.main.path(forResource: "Score", ofType: "plist") {
            
            // 用路徑檔案生出Array(optional)
            if let scoreArray = NSArray(contentsOfFile: scorePlist) {
                
                // 找出math score
                if let dictionary = scoreArray[0] as? NSDictionary {
                    if let mathScore = dictionary["math"] as? Int {
                        print(mathScore)
                    }
                }
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

