//
//  SegueNextViewController.swift
//  Navigation
//
//  Created by dbug on 3/12/25.
//

import UIKit

class SegueNextViewController: UIViewController {
    
    var labelText: String?
    
    @IBOutlet private(set) var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = labelText
        
    }
    
}
