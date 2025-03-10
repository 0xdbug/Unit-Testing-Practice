//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by dbug on 3/10/25.
//

import UIKit

class InstancePropertyViewController: UIViewController {
    lazy var analytics = Analytics.shared
    

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
