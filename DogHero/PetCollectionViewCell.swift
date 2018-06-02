//
//  PetCollectionViewCell.swift
//  DogHero
//
//  Created by Treinamento on 02/06/2018.
//  Copyright © 2018 Treinamento Porto Digital. All rights reserved.
//

import UIKit

class PetCollectionViewCell: UICollectionViewCell {
    var pet: Pet! {
        didSet {
            updateUI()
        }
    }
    
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var race: UILabel!
   
    
    private func updateUI() {
        name?.text! = pet.name
        age?.text = pet.age.description
        race?.text = pet.race
    }
}
