//
//  MovieImageCell.swift
//  Movies
//
//  Created by Neosoft on 12/04/22.
//

import UIKit

class MovieImageCell: UICollectionViewCell {

    @IBOutlet weak var collectionViewCellImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewCellImageView.contentMode = .scaleToFill
        collectionViewCellImageView.layer.masksToBounds = true
    }

}
