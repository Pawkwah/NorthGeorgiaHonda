//
//  CustomerModel.swift
//  NorthGeorgiaHonda
//
//  Created by Jay Virtanen and Parker Harris on 2/23/18.
//  Copyright © 2018 UNG CSCI 3660. All rights reserved.
//

import Foundation
import CoreData

public class CustomerModel
{
    var customerlist: [Customer] = []
    
    func registerCustomer(lastName: String, firstName: String, address: String, phoneNo: String, email:String
        )
    {
        let myContext = AppDelegate.context
        let customer = Customer(context: myContext)
        customer.lName = lastName
        customer.fName = firstName
        customer.cAddress = address
        customer.phone = phoneNo
        customer.eMail = email
        
        
        
        do{
            try AppDelegate.context.save()
            print(lastName + " is sucessfully registered")
            
        }catch
        {
            print(lastName + "is not registered, the is an error in the code")
        }
    }
    
    func getCandidateList()-> [Customer]
    {
        do {
            
            customerlist = try AppDelegate.context.fetch(Customer.fetchRequest())
            
        }
        catch
        {
            print("Fetching failed")
        }
        
        return customerlist
    }
}

