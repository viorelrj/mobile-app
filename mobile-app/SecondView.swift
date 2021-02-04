//
//  SecondView.swift
//  mobile-app
//
//  Created by Viorel Rinja on 2/4/21.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var mainViewController:ViewController?
    
    var completionHandler: ((String?) -> Void)?
    
    @IBOutlet weak var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        completionHandler?(input.text)
        
        dismiss(animated: true, completion: nil)
    }
}
