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
        
        
        
        //  EXAMPLE 1.
        //  ======================================
         
        /*let mainContainer = UIView()
        mainContainer.backgroundColor = UIColor.blue
        mainContainer.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainContainer)
        
        let views = ["mainContainer" : mainContainer]
        
        let metrics = ["mainContainerWidth" : self.view.bounds.width]
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[mainContainer]|", options: [], metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[mainContainer]|", options: [], metrics: metrics, views: views))*/
        
        
        //  EXAMPLE 2.
        //  ======================================
 
        /*let firstView = UIView()
        firstView.backgroundColor = UIColor.blue
        firstView.translatesAutoresizingMaskIntoConstraints = false
        
        let secondView = UIView()
        secondView.backgroundColor = UIColor.red
        secondView.translatesAutoresizingMaskIntoConstraints = false
         
        self.view.addSubview(firstView)
        self.view.addSubview(secondView)
        
        let views = ["firstView" : firstView, "secondView": secondView]
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[firstView]|", options: [], metrics: [:], views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[secondView]|", options: [], metrics: [:], views: views))
         
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[firstView][secondView(==firstView)]|", options: [], metrics: [:], views: views))*/
        
        
        //  EXAMPLE 3.
        //  ======================================
        
        let firstView = UIView()
        firstView.backgroundColor = UIColor.blue
        firstView.translatesAutoresizingMaskIntoConstraints = false
         
        let secondView = UIView()
        secondView.backgroundColor = UIColor.red
        secondView.translatesAutoresizingMaskIntoConstraints = false
        
        let thirdView = UIView()
        thirdView.backgroundColor = UIColor.yellow
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(firstView)
        self.view.addSubview(secondView)
        self.view.addSubview(thirdView)
        
        let metrics = ["padding" : self.view.bounds.height / 10]
        
        let views = ["firstView" : firstView, "secondView": secondView, "thirdView": thirdView]
         
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[firstView][secondView(==firstView)][thirdView(==firstView)]|", options: [], metrics: [:], views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(padding)-[firstView]-(padding)-|", options: [], metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(padding)-[secondView]-(padding)-|", options: [], metrics: metrics, views: views))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(padding)-[thirdView]-(padding)-|", options: [], metrics: metrics, views: views))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

