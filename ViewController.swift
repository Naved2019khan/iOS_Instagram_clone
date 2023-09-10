//
//  ViewController.swift
//  instagram Task 14
//
//  Created by Naved Khan on 20/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    // Mark : Tableview
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
//    Mark : UITableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       if section == 0
       {
        return 1
       }
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0
        {
            let cell  = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
            return cell
        }
       
            let cell  = myTableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! MyTableViewCell2
            cell.collectionview2.tag = indexPath.row
            return cell

        
        
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == [0,0]
        {
            return 170
        }
        return 565
    }
    
    
//    Mark : Collection view
    
    
    
    
    
    
    
    
    
    
        
    

}

