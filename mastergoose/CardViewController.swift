//
//  CardViewController.swift
//  mastergoose
//
//  Created by Christopher on 11/07/16.
//  Copyright © 2016 geesmasters. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.addCards();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func addCards() {
        //     Make a view
        let testView: UIView = UIView(frame: CGRectMake(0, 0, 320, 568))
        testView.backgroundColor = UIColor.blueColor()
        testView.alpha = 0.5
        testView.tag = 100
        testView.userInteractionEnabled = true
        self.view.addSubview(testView)
        
        view.addSubview(testView)
    }
}