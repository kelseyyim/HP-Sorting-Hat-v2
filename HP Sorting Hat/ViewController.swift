//
//  ViewController.swift
//  HP Sorting Hat
//
//  Created by Kelsey Yim on 2/27/19.
//  Copyright © 2019 Kelsey Yim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func findOutButton(_ sender: Any) {
        performSegue(withIdentifier: "questionPage", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

