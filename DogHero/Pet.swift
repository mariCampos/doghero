//
//  Pet.swift
//  DogHero
//
//  Created by Treinamento on 19/05/2018.
//  Copyright © 2018 Treinamento Porto Digital. All rights reserved.
//

import Foundation
import UIKit

class Pet {
    
    var name = ""
    var race = ""
    var age = 0
    var featuredImage: UIImage!
    var description = ""
    
    init(title: String, race: String, age: Int, description: String) {
        self.name = title
        self.age = age
        self.race = race
        self.description = description
    }
    
    static func createPets() -> [Pet] {
        
        return [
            Pet(title: "Bob", race: "Bulldog", age:2, 
                description: "Sou muit obediente"),
            Pet(title: "Mel", race: "Beagle", age: 3, description: "Amo uma sandalia")
        ]
    }
}
