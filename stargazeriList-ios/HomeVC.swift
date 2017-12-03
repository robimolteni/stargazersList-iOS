//
//  HomeVC.swift
//  stargazeriList-ios
//
//  Created by robimolteni on 04/11/2017.
//  Copyright © 2017 myself. All rights reserved.
//

import Foundation
import UIKit

class HomeVC : UIViewController {
    
    @IBOutlet weak var ownerRepoText: UITextField!
    @IBOutlet weak var nameRepoText: UITextField!
    
    override func viewDidLoad() {
        ownerRepoText.text = "WenchaoD"
        nameRepoText.text = "FSCalendar"
        super.viewDidLoad()
    }
    
    @IBAction func goButtonPressed(_ sender: Any) {
        let ownerRepo = ownerRepoText.text!
        let nameRepo = nameRepoText.text!
        print(nameRepoText.text!)
        print(nameRepoText.text!)
        if (ownerRepo.isEmpty || nameRepo.isEmpty)  {
            showAlert(alertTitle: "OPS!!", alertMessage: "Please, fill up all the fields", alertOK: "OK")
            return
        }
        //programatically
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "ResultVC") as! ResultVC
        nextVC.repoName = nameRepo
        nextVC.repoOwner = ownerRepo
        self.navigationController?.pushViewController(nextVC, animated: true)
        //using storyboard
        //performSegue(withIdentifier: "goToResultVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    
    func showAlert(alertTitle: String, alertMessage: String, alertOK: String){
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: alertOK, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
