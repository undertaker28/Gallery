//
//  Model.swift
//  Gallery
//
//  Created by Pavel on 31.10.22.
//

import UIKit

var chapters = [["Patterns", "Shapes"], ["Cats", "Dogs"], ["Attack on Titan", "Death Note"], ["London", "Paris"], ["Chamomile", "Rose"]]
var chaptersImages = ["Patterns" : ["Pattern1", "Pattern2", "Pattern3"], "Shapes" : ["Shape1", "Shape2", "Shape3"], "Cats" : ["Cat1", "Cat2", "Cat3"], "Dogs" : ["Dog1", "Dog2", "Dog3"], "Attack on Titan" : ["Attack1", "Attack2", "Attack3"], "Death Note" : ["DN1", "DN2", "DN3"], "London" : ["London1", "London2", "London3"], "Paris" : ["Paris1", "Paris2", "Paris3"], "Chamomile" : ["Chamomile1", "Сhamomile2", "Сhamomile3"], "Rose" : ["Rose1", "Rose2", "Rose3"]]

class Category: NSObject {
    var name: String?
    var imageNames: [ImageName]?
    
    static func addImagesInCategory(index: Int) -> [Category] {
        
        // MARK: - Section 1
        let section1 = Category()
        section1.name = chapters[index][0]
        
        var imagesInSection1 = [ImageName]()
        
        let imagesInSection10 = ImageName()
        imagesInSection10.imageName = chaptersImages[section1.name!]?[0]
        
        let imagesInSection11 = ImageName()
        imagesInSection11.imageName = chaptersImages[section1.name!]?[1]
        
        let imagesInSection12 = ImageName()
        imagesInSection12.imageName = chaptersImages[section1.name!]?[2]
        
        imagesInSection1.append(imagesInSection10)
        imagesInSection1.append(imagesInSection11)
        imagesInSection1.append(imagesInSection12)
        
        section1.imageNames = imagesInSection1
        
        // MARK: - Section 2
        let section2 = Category()
        section2.name = chapters[index][1]
        
        var imagesInSection2 = [ImageName]()
        
        let imagesInSection20 = ImageName()
        imagesInSection20.imageName = chaptersImages[section2.name!]?[0]
        
        let imagesInSection21 = ImageName()
        imagesInSection21.imageName = chaptersImages[section2.name!]?[1]
        
        let imagesInSection22 = ImageName()
        imagesInSection22.imageName = chaptersImages[section2.name!]?[2]
        
        imagesInSection2.append(imagesInSection20)
        imagesInSection2.append(imagesInSection21)
        imagesInSection2.append(imagesInSection22)
        
        section2.imageNames = imagesInSection2
        
        return [section1, section2]
    }
}

class ImageName: NSObject {
    var imageName: String?
}
