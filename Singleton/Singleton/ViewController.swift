//
//  ViewController.swift
//  Singleton
//
//  Created by Mykhailo Bondarenko on 18.02.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let safe = Safe.shared
        print(safe.money)
    }


}

