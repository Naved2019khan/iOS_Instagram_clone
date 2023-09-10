//
//  ProfileCollectionViewCell1.swift
//  instagram Task 14
//
//  Created by Naved Khan on 22/03/23.
//

import UIKit

class ProfileCollectionViewCell1: UICollectionViewCell {
    
    @IBOutlet weak var pimg: UIImageView!
    @IBOutlet weak var ptxt: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
//        profileimg.layer.masksToBounds = false
        pimg.layer.cornerRadius = pimg.frame.size.width/2
        
    }
}
