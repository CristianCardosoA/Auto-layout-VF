//
//  ViewController.swift
//  Auto-layout-VF
//
//  Created by Cristian Cardoso on 7/3/17.
//  Copyright © 2017 Cristian Cardoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mainContainer = UIView()
        mainContainer.backgroundColor = UIColor.blue
        mainContainer.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainContainer)
        
        let views = ["mainContainer" : mainContainer]
        
        let metrics = ["mainContainerWidth" : self.view.bounds.width]
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[mainContainer]|", options: [], metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[mainContainer]|", options: [], metrics: metrics, views: views))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

