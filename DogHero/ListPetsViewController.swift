//
//  ListPetsViewController.swift
//  DogHero
//
//  Created by Treinamento on 19/05/2018.
//  Copyright © 2018 Treinamento Porto Digital. All rights reserved.
//

import UIKit

class ListPetsViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
   
    private var pets = PetRepository.petRep
    private var petsRow : Int = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(pets.getAll().count)
        return pets.getAll().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellIndentifier = "PetsCell"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIndentifier, for: indexPath) as! PetCollectionViewCell
        
        cell.pet = self.pets.getPet(index: indexPath.item)
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.collectionView.reloadData()
    }
    
    //func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: //IndexPath) {
       // let collectionViewStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        
    //}
    

 

}
