//
//  ViewVC.swift
//  View on View
//
//  Created by omrobbie on 28/04/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class ViewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func showView(_ onView: ViewController) {
        onView.view.addSubview(view)
    }

    func snapTo(_ insideView: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            view.topAnchor.constraint(equalTo: insideView.topAnchor),
            view.rightAnchor.constraint(equalTo: insideView.rightAnchor),
            view.bottomAnchor.constraint(equalTo: insideView.bottomAnchor),
            view.leftAnchor.constraint(equalTo: insideView.leftAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
