//
//  MyTableViewCell2.swift
//  instagram Task 14
//
//  Created by Naved Khan on 20/03/23.
//

import UIKit

class MyTableViewCell2: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
//    MARK : DATA
    
    var data = [["img" : ["p1","p2","p3","p4"]],
                ["img" : ["p1","p2","p3","p4"]],
                ["img" : ["p1","p2","p3","p4"]]]
    
    
// MARK : TABLE Outlets
    @IBOutlet weak var collectionview2: UICollectionView!
    
    
// MARK : Images
    @IBOutlet weak var smallProfileImg: UIImageView!
    
    @IBOutlet weak var miniProfile1: UIImageView!
    
    @IBOutlet weak var miniProfile2: UIImageView!
    
    @IBOutlet weak var miniProfile3: UIImageView!
    
    //  MARK : Button
    @IBOutlet weak var btnThreeDot: UIButton!
    
    @IBOutlet weak var btnHeart: UIButton!
    
    @IBOutlet weak var btnMsg: UIButton!
    
    @IBOutlet weak var btnPlane: UIButton!
    
    @IBOutlet weak var btnBookmark: UIButton!
    
//    MARK : Label
    
    @IBOutlet weak var profileLabel: UILabel!
    

    // MARK : Table 2nd]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview2.dequeueReusableCell(withReuseIdentifier: "cellc2", for: indexPath) as! collectionview2cell
//        cell.img.image = UIImage(named: (data[indexPath.section]["img"] ?? data[indexPath.section]["img"])!)
        cell.img.image = UIImage(named: data[collectionview2.tag]["img"]![indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 375, height: 373)
    }
    
    
    func changeLogo(sender : UIButton , str : String, color : UIColor)
    {
        if sender.tintColor == .black
        {
            sender.tintColor = color
            sender.setImage(UIImage(systemName: "\(str).fill"), for: .normal)
        }
        else{
            sender.tintColor = .black
            sender.setImage(UIImage(systemName: str), for: .normal)
            
        }
    }
    
    
    @IBAction func btnHeart(_ sender: UIButton) {
        changeLogo(sender: sender, str: "heart", color: .systemPink)
    }
    
    @IBAction func btnMsg(_ sender: UIButton) {
        changeLogo(sender: sender, str: "message", color: .systemBlue)
    }
    
    @IBAction func btnPlane(_ sender: UIButton) {
        changeLogo(sender: sender, str: "paperplane", color: .systemYellow)
    }
    
    @IBAction func btnBookMark(_ sender: UIButton) {
        changeLogo(sender: sender, str: "bookmark", color: .systemGray)
    }
    
    

    
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview2.delegate = self
        collectionview2.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
}
