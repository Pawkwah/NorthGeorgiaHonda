//
//  RegistrationViewCarView.swift
//  NorthGeorgiaHonda
//
//  Created by Jay Virtanen and Parker Harris on 2/23/18.
//  Copyright © 2018 UNG CSCI 3660. All rights reserved.
//

import UIKit
class RegistrationViewCarView: UIViewController,UITableViewDelegate, UITableViewDataSource
{
    var car: CarModel = CarModel()
    var carList: [Car] = []
    override func viewDidLoad()
    {
        tableView?.reloadData()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView?.reloadData()
        
    }
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return car.getCarList().count
    }
    //use value1, subtitle, value2 for UITableViewCellStyle
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "carCell")
        let list = car.getCarList()[indexPath.row]
        cell.textLabel?.text = String(list.year) + " " + list.make! + " " + list.model!
        cell.detailTextLabel?.text = String(list.mileage)
        cell.detailTextLabel?.text = list.color
        return (cell)
    }
    @IBOutlet weak var carYear: UITextField!
    @IBOutlet weak var carMake: UITextField!
    @IBOutlet weak var carModel: UITextField!
    @IBOutlet weak var carColor: UITextField!
    @IBOutlet weak var carMileage: UITextField!
    @IBAction func touchRegister(_ sender: UIButton)
    {
        self.car.registerCar(carYear: Int16(carYear.text!)!, carMake: carMake.text!, carModel: carModel.text!, carColor: carColor.text!, carMileage: Int16(carMileage.text!)! )
    }
}
