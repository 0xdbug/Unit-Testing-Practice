//
//  InstanceInitializerViewController.swift
//  HardDependencies
//
//  Created by dbug on 3/10/25.
//

import UIKit

class InstanceInitializerViewController: UIViewController {
    private let analytics: Analytics
    
    init(analytics: Analytics = Analytics.shared) {
        self.analytics = analytics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
