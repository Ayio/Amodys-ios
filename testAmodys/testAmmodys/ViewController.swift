//
//  ViewController.swift
//  testAmmodys
//
//  Created by jordan faucher on 05/09/2017.
//  Copyright © 2017 jordan faucher. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var test: UIView!

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShow = false
    override func viewDidLoad() {
        super.viewDidLoad()
        test.backgroundColor = UIColor(red: 53/255, green: 56/255, blue: 64/255, alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openMenu(_ sender: Any) {
        if (menuShow){
            leadingConstraint.constant = -140
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShow = !menuShow
    }

}

