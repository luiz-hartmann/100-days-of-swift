//
//  ViewController.swift
//  Shopping List
//
//  Created by Luiz Hartmann on 29/03/22.
//

import UIKit

class ViewController: UITableViewController {
    var shoppingList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Shopping List"
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self,
                                  action: #selector(addTapped))
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: self,
                                    action: #selector(clearItems))
        let share = UIBarButtonItem(barButtonSystemItem: .action, target: self,
                                                            action: #selector(shareItems))
        
        navigationItem.rightBarButtonItems = [add, share]
        navigationItem.leftBarButtonItems = [refresh]
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Items", for: indexPath)
        cell.textLabel?.text = shoppingList[indexPath.row]
        return cell
    }
    
    @objc func addTapped() {
        let alertController = UIAlertController(title: "Add an item", message: nil, preferredStyle: .alert)
        alertController.addTextField()
        
        let submitItem = UIAlertAction(title: "Add", style: .default) {
            [weak self, weak alertController] action in
            guard let item = alertController?.textFields?[0].text else { return }
            self?.addItem(item)
        }
        alertController.addAction(submitItem)
        present(alertController, animated: true)
    }
    
    func addItem(_ item: String) {
        shoppingList.insert(item, at: 0)
        
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    @objc func clearItems() {
        shoppingList.removeAll(keepingCapacity: true)
        tableView.reloadData()
    }
    
    @objc func shareItems() {
        let list = shoppingList.joined(separator: "\n")
        let viewController = UIActivityViewController(activityItems: [list], applicationActivities: nil)
        viewController.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(viewController, animated: true)
    }
}

