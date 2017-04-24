//
//  ViewController.swift
//  SwiftTableViweDemo
//
//  Created by lisa on 2016/12/19.
//  Copyright © 2016年 lisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var navVC: UINavigationController?  //导航控制器变量
    let root = RootViewController()   //根控制器变量

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navVC = UINavigationController(rootViewController:root)
        self.view.addSubview(navVC!.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

