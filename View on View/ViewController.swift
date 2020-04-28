//
//  ViewController.swift
//  View on View
//
//  Created by omrobbie on 28/04/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!

    fileprivate var viewVC = ViewVC()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewVC()
    }

    fileprivate func setupViewVC() {
        viewVC.delegate = self
        viewVC.showView(self)
        viewVC.snapTo(myView)
    }

    @IBAction func btnRemoveTapped(_ sender: Any) {
        viewVC.removeFromSuperview()
    }
}

extension ViewController: ViewVCDelegate {

    func buttonDidTapped() {
        print("You click me!")
    }
}
