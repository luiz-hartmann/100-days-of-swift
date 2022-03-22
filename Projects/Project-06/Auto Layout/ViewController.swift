//
//  ViewController.swift
//  Auto Layout
//
//  Created by Luiz Hartmann on 20/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let first = UILabel()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor.red
        first.text = "THESE"
        view.addSubview(first)
        
        let second = UILabel()
        second.translatesAutoresizingMaskIntoConstraints = false
        second.backgroundColor = UIColor.cyan
        second.text = "ARE"
        second.sizeToFit()
        view.addSubview(second)
        
        let third = UILabel()
        third.translatesAutoresizingMaskIntoConstraints = false
        third.backgroundColor = UIColor.yellow
        third.text = "SOME"
        third.sizeToFit()
        view.addSubview(third)
        
        let fourth = UILabel()
        fourth.translatesAutoresizingMaskIntoConstraints = false
        fourth.backgroundColor = UIColor.green
        fourth.text = "AWESOME"
        fourth.sizeToFit()
        view.addSubview(fourth)
        
        let fifth = UILabel()
        fifth.translatesAutoresizingMaskIntoConstraints = false
        fifth.backgroundColor = UIColor.orange
        fifth.text = "LABELS"
        fifth.sizeToFit()
        view.addSubview(fifth)

        var previous: UILabel?
        
        for label in [first, second, third, fourth, fifth] {
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
            label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1, constant: 10).isActive = true
            
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
            }
            previous = label
        }
    }
}

