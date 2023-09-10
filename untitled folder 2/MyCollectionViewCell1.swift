//
//  MyCollectionViewCell1.swift
//  instagram Task 14
//
//  Created by Naved Khan on 20/03/23.
//

import UIKit

class MyCollectionViewCell1: UICollectionViewCell {
    @IBOutlet weak var profileimg: UIImageView!
    @IBOutlet weak var profileLab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
//        profileimg.layer.masksToBounds = false
        profileimg.layer.cornerRadius = profileimg.frame.size.width/2
        
    }

}
