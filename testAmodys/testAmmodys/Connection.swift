//
//  Connection.swift
//  testAmmodys
//
//  Created by jordan faucher on 22/09/2017.
//  Copyright © 2017 jordan faucher. All rights reserved.
//

import Foundation
import UIKit

class Connection : UIViewController {
    
    @IBOutlet weak var connexionButton: UIButton!
    @IBOutlet weak var inscriptionButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func connexion(_ sender: Any) {
       connexionButton.isHidden = true
        inscriptionButton.isHidden = true
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 100)
        label.textAlignment = .center
        label.text = "Email"
        self.view.addSubview(label)
        
        let email = UITextField(frame: CGRect(x:0, y:0, width: 200, height: 21))
        email.center = CGPoint(x: 160, y: 130)
        email.borderStyle = UITextBorderStyle.roundedRect
        
        self.view.addSubview(email)
        
        let passwordText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        passwordText.center = CGPoint(x: 160, y: 150)
        passwordText.textAlignment = .center
        passwordText.text = "Password"
        
        self.view.addSubview(passwordText)
    
        let password = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        password.center = CGPoint(x: 160, y: 170)
        password.borderStyle = UITextBorderStyle.roundedRect
        self.view.addSubview(password)
        
        let buttonOk = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        buttonOk.center = CGPoint(x: 160, y: 200)
        //buttonOk.tintColor = UIColor.white
        buttonOk.backgroundColor = UIColor(red: 0/255, green: 102/255, blue: 204/255, alpha: 1)
        buttonOk.layer.cornerRadius = 5.0
        buttonOk.setTitle("test", for: .normal)
        buttonOk.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(buttonOk)
    }
    
    @IBAction func inscription(_ sender: Any) {
        connexionButton.isEnabled = false
        inscriptionButton.isEnabled = false
        
        
    }
    
    func buttonAction(sender: UIButton!){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "main")
        self.present(nextViewController, animated: true, completion: nil)
    }
}
