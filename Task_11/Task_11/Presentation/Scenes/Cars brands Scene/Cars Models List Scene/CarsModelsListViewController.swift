//
//  CarsModelsListViewController.swift
//  Task_11
//
//  Created by MacBook Pro on 07.10.21.
//

import UIKit

class CarsModelsListViewController: UIViewController {
    @IBOutlet weak var brandName: UILabel!
    @IBOutlet weak var carsModeTableView: UITableView!
    
    var carBrand:String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        carsModeTableView.dataSource = self
        
        brandName.text = carBrand

        view.backgroundColor = .green
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onBackPresed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}

extension CarsModelsListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllData.instance.carsListBy(brand: carBrand).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarModelsTableViewCell", for: indexPath) as! CarModelsTableViewCell
        
        print(indexPath.row)
        
        cell.configure(with: AllData.instance.carsListBy(brand: carBrand)[indexPath.row])
        
        return cell
    }
}
