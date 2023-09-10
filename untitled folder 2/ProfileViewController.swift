//
//  ProfileViewController.swift
//  instagram Task 14
//
//  Created by Naved Khan on 22/03/23.
//

import UIKit

class ProfileViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var SecondCollectionView: UICollectionView!
    @IBOutlet weak var MycollectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MycollectionView.dequeueReusableCell(withReuseIdentifier: "cellprofile", for: indexPath) as! ProfileCollectionViewCell1
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
//    Mark : collection view second
}

