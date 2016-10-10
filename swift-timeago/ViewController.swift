//
//  ViewController.swift
//  swift-timeago
//
//  Created by Mirco Zeiss on 9/7/15.
//  Copyright © 2015 zemirco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(timeAgoSince(Date()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

