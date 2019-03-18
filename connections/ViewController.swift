//
//  ViewController.swift
//  connections
//
//  Created by Steven Lipton on 3/17/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var button:UIButton!
    

    @IBAction func buttonUp(sender:UIButton){
        sender.backgroundColor = .white
        sender.setTitleColor(.black, for: .normal)
        label.text = "Button Up"
    }
    
    @IBAction func buttonAction(sender:UIButton){
        sender.backgroundColor = .yellow
        sender.setTitleColor(.black, for: .normal)
        label.text = "Button Action 1"
    }
    
    @IBAction func buttonAction2(sender:UIButton){
        sender.backgroundColor = .darkGray
        sender.setTitleColor(.white, for: .normal)
        label.text = "Button Action 2"
    }
    

    override func viewDidLayoutSubviews() {
       var edge = button.frame.width
        if button.frame.height > button.frame.width{
            edge = button.frame.height
        }
        button.layer.cornerRadius = 0.15 * edge
        button.setTitleColor(.black, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

