//
//  PetRepository.swift
//  DogHero
//
//  Created by Mari on 13/06/18.
//  Copyright © 2018 Treinamento Porto Digital. All rights reserved.
//

import Foundation

class PetRepository {
    public static let petRep = PetRepository()
    var listPet : [Pet] = []
    var quantityPets : Int = 0
    
    private init() {}
    
    public func addPet(newPet : Pet) {
        listPet.append(newPet)
        self.quantityPets = quantityPets + 1
    }
    
    public func getPet(index : Int) -> Pet {
        
        return listPet[index]
    }
    
    public func getPet(name : String, callback:@escaping (_ result: Any?) -> Void) -> Int {
        var position : Int = 0
        for index in 0...quantityPets {
            if(listPet[index].name == name){
                position = index
            }
        }
        return position
    }
    
    public func petExist(name : String) -> Bool{
        let filterPet = listPet.filter { (pet : Pet) -> Bool in
            pet.name == name
        }
        return !filterPet.isEmpty
    }
    
    public func getAll() -> [Pet] {
        return listPet
    }
    
    public func deleteAll() {
        listPet.removeAll()
    }
    
    public func count() -> Int {
        return quantityPets
    }
}
