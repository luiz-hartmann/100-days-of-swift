//
//  ViewController.swift
//  Country Flags
//
//  Created by Luiz Hartmann on 04/03/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var countryList = [Country]()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        fetchdata()
        
        title = "Country Flags"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath) as! FlagCell

        cell.flagTextLabel?.text = countryList[indexPath.row].name
        cell.flagImageView?.image = UIImage(named: countryList[indexPath.row].code)
        cell.flagImageView?.layer.borderColor = UIColor.black.cgColor
        cell.flagImageView?.layer.borderWidth = 0.1
        cell.flagImageView?.layer.cornerRadius = 5
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = storyboard?.instantiateViewController(withIdentifier: "FlagViewController") as? FlagViewController {
            
            viewController.selectedImage = countryList[indexPath.row].code
        
            viewController.title = countryList[indexPath.row].name

            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func fetchdata() {
        guard let fileLocation = Bundle.main.url(forResource: "country", withExtension: "json")
                
        else {
            return
        }
        do {
            let data = try Data(contentsOf: fileLocation)
            let receiveData = try JSONDecoder().decode([Country].self, from: data)
            
            self.countryList = receiveData
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
            print("Error while decoding JSON.")
        }
    }
}



