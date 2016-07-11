//
//  CardViewController.swift
//  mastergoose
//
//  Created by Christopher on 11/07/16.
//  Copyright © 2016 geesmasters. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    let cards:[String: String] = ["soppa":"shurba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.showRandomCard();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var currentQuestion="";
    func showAnswer(sender:UITapGestureRecognizer){
        // do other task
        let card = cards[currentQuestion]
        showCard(card!)
    }
    
    @IBOutlet weak var titlesmutt: UILabel!

    func showRandomCard() {
        let index: Int = Int(arc4random_uniform(UInt32(cards.count)))
        let card = Array(cards.keys)[index] // the swedish word first
        currentQuestion = card
        showCard(card)
    }
    
    func showCard(title: String) {
        //     Make a view
        let cardView: UIView = UIView(frame: CGRectMake(0, 0, 340, 340))
        cardView.backgroundColor = UIColor.blueColor()
        cardView.alpha = 1
        cardView.tag = 100
        cardView.userInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: "showAnswer:")
        cardView.addGestureRecognizer(gesture)
        
        cardView.center = CGPointMake(view.bounds.size.width  / 2,
                                      view.bounds.size.height / 2);
        
        let label = UILabel(frame: CGRectMake(0, 0, 320, 30))
        label.center = CGPointMake(cardView.bounds.size.width  / 2,
                                   cardView.bounds.size.height / 2)
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont(name: label.font.fontName, size: 28)
        label.textColor = UIColor.whiteColor()
        
        label.text = title
        cardView.addSubview(label)
        
        view.addSubview(cardView)
    }
}