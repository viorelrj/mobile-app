//
//  ViewController.swift
//  mobile-app
//
//  Created by Viorel Rinja on 2/4/21.
//

import UIKit
import os.log

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onNavigationTap(_ sender: Any) {
        let vc = storyboard!.instantiateViewController(identifier: "second") as SecondViewController
        vc.completionHandler = { text in
            self.mainLabel.text = text
        }
        
        present(vc, animated: true)
        vc.input.text = mainLabel.text
    }
    
    
    public func updateLabel(value:String?) {
        print("called")
        mainLabel.text = value ?? "Was Nil"
    }
}

