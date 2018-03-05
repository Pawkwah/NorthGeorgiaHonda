//
//  CarModel.swift
//  NorthGeorgiaHonda
//
//  Created by Jay Virtanen and Parker Harris on 2/23/18.
//  Copyright © 2018 UNG CSCI 3660. All rights reserved.
//

import Foundation
import UIKit

public class CarModel
{
    var carlist: [Car] = []
    
    func registerCar(carYear: Int16, carMake: String, carModel: String, carColor: String, carMileage:Int16
        )
    {
        let myContext = AppDelegate.context
        let car = Car(context: myContext)
        car.year = carYear
        car.make = carMake
        car.model = carModel
        car.color = carColor
        car.mileage = carMileage

        
        
        do{
            try AppDelegate.context.save()
            print(carModel + " is sucessfully registered")
            
        }catch
        {
            print(carModel + "is not registered, the is an error in the code")
        }
    }
    
    func getCarList()-> [Car]
    {
        do {
            
            carlist = try AppDelegate.context.fetch(Car.fetchRequest())
            
        }
        catch
        {
            print("Fetching failed")
        }
        
        return carlist
    }
}

