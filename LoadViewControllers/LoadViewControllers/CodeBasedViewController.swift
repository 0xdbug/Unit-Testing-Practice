//
//  CodeBasedViewController.swift
//  LoadViewControllers
//
//  Created by dbug on 3/9/25.
//

import UIKit

class CodeBasedViewController: UIViewController {
    
    private let data: String
    
    init(data: String) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  }
