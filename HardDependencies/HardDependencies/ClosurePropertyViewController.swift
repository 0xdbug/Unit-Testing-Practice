//
//  ClosurePropertyViewController.swift
//  HardDependencies
//
//  Created by dbug on 3/10/25.
//

import UIKit

class ClosurePropertyViewController: UIViewController {
    var makeAnalytics: () -> Analytics = { Analytics.shared }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
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
