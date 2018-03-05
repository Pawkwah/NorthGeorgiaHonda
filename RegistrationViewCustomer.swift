//
//  RegistrationViewCustomer.swift
//  NorthGeorgiaHonda
//
//  Created by Jay Virtanen and Parker Harris on 2/23/18.
//  Copyright © 2018 UNG CSCI 3660. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewCustomer: UIViewController
{
    var customer: CustomerModel = CustomerModel()
    var customerlist: [Customer] = []
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func touchRegister(_ sender: UIButton)
    {
        self.customer.registerCustomer(lastName: customerlname.text!, firstName: customerfname.text!, address: customeraddress.text!, phoneNo: customerphone.text!, email: customeremail.text! )
    }
    @IBOutlet weak var customerlname: UITextField!
    @IBOutlet weak var customerfname: UITextField!
    @IBOutlet weak var customeraddress: UITextField!
    @IBOutlet weak var customerphone: UITextField!
    @IBOutlet weak var customeremail: UITextField!
}
