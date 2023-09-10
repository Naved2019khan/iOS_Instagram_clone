//
//  MyTableViewCell.swift
//  instagram Task 14
//
//  Created by Naved Khan on 20/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView1.delegate = self
        myCollectionView1.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    var data = [["img" : "p1","txt" : "Your Story"],
                ["img" : "p2","txt" : "sam"],
                ["img" : "p3","txt" : "Max"],
                ["img" : "p4","txt" : "Alex"],
                ["img" : "p5","txt" : "Tom"],
                ["img" : "p6","txt" : "Batman"],
                ]
    
    
    @IBOutlet weak var myCollectionView1: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView1.dequeueReusableCell(withReuseIdentifier: "cellc", for: indexPath) as! MyCollectionViewCell1
        cell.profileimg.image = UIImage(named: data[indexPath.row]["img"]!)
        cell.profileLab.text = data[indexPath.row]["txt"]!
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 90, height: 100)
    }
    
//    Mark : Button
    
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
    
    @IBAction func btnplus(_ sender: UIButton) {
        changeLogo(sender: sender, str: "plus.square", color: .systemBlue)
    }
    
    
    


}
