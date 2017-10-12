//
//  ViewController.swift
//  SnapkitDemo
//
//  Created by Syed Askari on 12/10/2017.
//  Copyright © 2017 Syed Askari. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var box = UIView()
    lazy var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(box)
        box.snp.makeConstraints { (make) in
            make
                .width
                .height
                .equalTo(50)
            make
                .center
                .equalTo(self.view)
        }
        
        self.box.addSubview(label)
        label.text = "hi!"
        label.snp.makeConstraints { (make) in
            make
                .width
                .height
                .equalTo(30)
            make
                .center
                .equalTo(box)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension UIViewController {
    
    #if DEBUG
    @objc func injected() {
        self.view.subviews.flatMap {
            $0.removeFromSuperview()
        }
        viewDidLoad()
    }
    #endif
    
}

