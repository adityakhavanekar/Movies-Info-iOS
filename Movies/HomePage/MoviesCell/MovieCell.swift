//
//  MovieCell.swift
//  Movies
//
//  Created by Neosoft on 11/04/22.
//

import UIKit

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var movieCellImgView: UIImageView!
    @IBOutlet weak var ratingImgView: UIImageView!
    @IBOutlet weak var movieNameLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var releaseDateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        movieCellImgView.contentMode = .scaleToFill
        movieCellImgView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
