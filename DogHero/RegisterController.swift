//
//  RegisterController.swift
//  DogHero
//
//  Created by Treinamento on 12/05/2018.
//  Copyright © 2018 Treinamento Porto Digital. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        registerButton.backgroundColor = UIColor(red: 254/255, green: 220/255, blue: 210/255, alpha: 0.0)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
