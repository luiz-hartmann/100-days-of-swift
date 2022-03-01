//
//  DetailViewController.swift
//  Social Media
//
//  Created by Luiz Hartmann on 19/02/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never

        // title = selectedImage
        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        navigationItem.rightBarButtonItem = rightBarButton
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            
            print("No image found")
            return
        }

        if let imageName = selectedImage {
            imageView.image = UIImage(named: imageName)
            
            let viewController = UIActivityViewController(activityItems: [image, imageName], applicationActivities: nil)
            viewController.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
            present(viewController, animated: true)
        }
    }
}
