//
//  NetflixId.swift
//  NetflixClone
//
//  Created by Oğuzhan Erdem on 31.08.2022.
//

import Foundation

struct Netflix {
    
    var sectionType: String?
    var imageGallery:[String?]
    
    init(sectionType: String, imageGallery: [String]) {
        self.sectionType = sectionType
        self.imageGallery = imageGallery
    }
}

