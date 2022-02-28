//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Luiz Hartmann on 19/02/22.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // Imagem que vai carregar
                pictures.append(item)
            }
        }
        pictures.sort()
    }
    
    // Retorna quantidade de linhas que devem aparecer na table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1. Tenta carregar a viewController
        if let viewController = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            // 2. Define a propriedade 'selectedImage'
            viewController.selectedImage = pictures[indexPath.row]
            viewController.title = "Picture \(indexPath.row + 1) of \(pictures.count)"
            // 3. Puxa para a navigation controller
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

    


