//
//  ResultVC.swift
//  stargazeriList-ios
//
//  Created by robimolteni on 26/11/2017.
//  Copyright © 2017 myself. All rights reserved.
//

import UIKit

class ResultVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    let repository = Repository()
    var repoName: String! = nil
    var repoOwner: String! = nil
    var stargazerList = [Stargazer]()
    
    override func viewDidLoad() {
        self.repository.downloadStargazer(repoName: repoName, repoOwner: repoOwner){
            self.stargazerList = self.repository._stargazer
            self.tableView.reloadData()
        }
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! StargazerTableViewCell
        let singleStargazer = stargazerList[indexPath.row]
        cell.title?.text = singleStargazer.login
        let url = URL(string: singleStargazer.avatarUrl)
        let data = try? Data(contentsOf: url!)
            cell.imgURL?.image = UIImage(data: data!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.stargazerList.count
    }
    
 

}
