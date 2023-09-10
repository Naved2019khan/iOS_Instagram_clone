//
//  ProfileViewController.swift
//  task 14
//
//  Created by Naved Khan on 23/03/23.
//

import UIKit

class ProfileViewController : UIViewController ,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var MytableViewprofile: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0
        {
            let cell = MytableViewprofile.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! ProfileTableViewCell
            return cell
        }
        else if indexPath.section == 1
        {
            let cell = MytableViewprofile.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! ProfileTableViewCell2
            return cell
        }
        let cell = MytableViewprofile.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! ProfileTableViewCell3
        return cell
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}

