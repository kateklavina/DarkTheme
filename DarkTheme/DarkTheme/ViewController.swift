//
//  ViewController.swift
//  DarkTheme
//
//  Created by Arkadijs Makarenko on 22/10/2019.
//  Copyright © 2019 Arkadijs Makarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var darkButton: UIButton!
    var isOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func darkButtonTapped(_ sender: Any) {
        if isOn{
            self.isOn = false
            self.darkButton.setTitle("Dark Theme On", for: .normal)
            self.darkButton.setTitleColor(UIColor.white, for: .normal)
            self.darkButton.setImage(UIImage(named: "mail.png"), for: .normal)
            self.darkButton.tintColor = .white
            self.darkButton.contentVerticalAlignment = .fill
            self.darkButton.contentHorizontalAlignment = .fill
            self.darkButton.imageEdgeInsets = UIEdgeInsets(top: 40, left: 0, bottom: 40, right: 0)
            self.view.backgroundColor = UIColor.black
        }else{
            self.isOn = true
            self.darkButton.setTitle("Dark Theme Of", for: .normal)
            self.darkButton.setTitleColor(UIColor.black, for: .normal)
            self.view.backgroundColor = UIColor.white
        }
    }
}

