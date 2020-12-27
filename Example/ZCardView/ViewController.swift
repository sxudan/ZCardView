//
//  ViewController.swift
//  ZCardView
//
//  Created by sxudan on 12/27/2020.
//  Copyright (c) 2020 sxudan. All rights reserved.
//

import UIKit
import ZCardView

class ViewController: UIViewController {
    
    @IBOutlet weak var cardButton: ZCardButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create a Card
        let card = ZCardView(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
        card.backgroundColor = .white
        card.shadowColor = .darkGray
        card.radius = card.frame.height / 2.0
        card.shadowRadius = 10
        card.backgroundColor = .purple
        self.view.addSubview(card)
        
        //label
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 24))
        lbl.text = "Programmatic Card View"
        lbl.textColor = .white
        card.addSubview(lbl)
        lbl.sizeToFit()
        lbl.center = card.center
        
        //constraints
        card.translatesAutoresizingMaskIntoConstraints = false
        card.widthAnchor.constraint(equalToConstant: card.frame.width).isActive = true
        card.heightAnchor.constraint(equalToConstant: card.frame.height).isActive = true
        card.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        card.topAnchor.constraint(equalTo: cardButton.bottomAnchor, constant: 24).isActive = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

