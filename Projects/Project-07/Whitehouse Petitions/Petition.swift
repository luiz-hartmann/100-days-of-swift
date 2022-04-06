//
//  Petition.swift
//  Whitehouse Petitions
//
//  Created by Luiz Hartmann on 03/04/22.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
