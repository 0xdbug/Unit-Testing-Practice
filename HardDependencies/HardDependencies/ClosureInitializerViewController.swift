//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by dbug on 3/10/25.
//

import UIKit

class ClosureInitializerViewController: UIViewController {
    
    private let makeAnalytics: () -> Analytics
    
    init(makeAnalytics: @escaping () -> Analytics = { Analytics.shared }) {
        self.makeAnalytics = makeAnalytics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
