//
//  RegisterPetViewController.swift
//  DogHero
//
//  Created by Treinamento on 19/05/2018.
//  Copyright © 2018 Treinamento Porto Digital. All rights reserved.
//

import UIKit

class RegisterPetViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var addImgButton: UIButton!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var breed: UITextField!
    @IBOutlet weak var comment: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    var newName : String = ""
    var newAge : Int = 0
    var newBreed : String = ""
    var newComment : String = ""
    
    var repository = PetRepository.petRep
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createPet(_ sender: Any) {
        newName = name.text!
        newBreed = breed.text!
        newComment = comment.text!
        
        let pet = Pet(title: newName,race:newBreed, age: newAge, description: newComment)
        repository.addPet(newPet: <#T##Pet#>)
        print(repository.petExist(name: pet.name))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
