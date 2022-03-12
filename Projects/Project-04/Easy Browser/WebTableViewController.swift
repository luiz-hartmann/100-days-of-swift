//
//  WebTableViewController.swift
//  Easy Browser
//
//  Created by Luiz Hartmann on 11/03/22.
//

import UIKit

class WebTableViewController: UITableViewController {

    var websites = ["apple.com", "hackingwithswift.com"]
    var blockedUrl = ["google.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Websites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        viewController.websites = websites
        viewController.blockedUrl = blockedUrl
        navigationController?.pushViewController(viewController, animated: true)
    }
}
