//
//  createEvent.swift
//  testAmmodys
//
//  Created by jordan faucher on 22/09/2017.
//  Copyright © 2017 jordan faucher. All rights reserved.
//

import Foundation
import UIKit

class createEvent : UIViewController {
    
    @IBOutlet weak var EventName: UITextField!
    @IBOutlet weak var StartDate: UIDatePicker!
    @IBOutlet weak var EndDate: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func DoneEvent(_ sender: Any) {
        /*
         send event to database
        */
    }
}
