//
//  MovieDetailViewController.swift
//  Movies
//
//  Created by Neosoft on 11/04/22.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var detailMovieImgView: UIImageView!
    @IBOutlet weak var detailMovieNameLbl: UILabel!
    @IBOutlet weak var detailMovieGenreLbl: UILabel!
    @IBOutlet weak var detailMoviePlotTextView: UITextView!
    @IBOutlet weak var detailMovieRatingLbl: UILabel!
    @IBOutlet weak var detailMovieRatedLbl: UILabel!
    @IBOutlet weak var detailMovieCastLbl: UILabel!
    
    @IBOutlet weak var detailMovieCollectionView: UICollectionView!
    
    var genre:String?
    var movieName:String?
    var moviePlot:String?
    var movieRating:String?
    var movieRated:String?
    var moviePoster:String?
    var movieCast:String?
    var movieImages:[String]?
    
    @IBOutlet weak var ratingView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailMovieGenreLbl.text = genre
        detailMovieNameLbl.text = movieName
        detailMoviePlotTextView.text = moviePlot
        detailMovieRatingLbl.text = movieRating
        detailMovieRatedLbl.text = movieRated
        detailMovieCastLbl.text = movieCast
        detailMovieImgView.downloaded(from: moviePoster ?? "")
        
        detailMovieImgView.contentMode = .scaleToFill
        detailMovieImgView.layer.masksToBounds = true
        ratingView.layer.cornerRadius = 10
        
        detailMovieCollectionView.delegate = self
        detailMovieCollectionView.dataSource = self
        
        detailMovieCollectionView.register(UINib(nibName: "MovieImageCell", bundle: nil), forCellWithReuseIdentifier: "MovieImageCell")
    }
    
}

extension MovieDetailViewController:UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieImages?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let size = detailMovieCollectionView.frame.size
        let cell = detailMovieCollectionView.dequeueReusableCell(withReuseIdentifier: "MovieImageCell", for: indexPath)as! MovieImageCell
        cell.contentView.frame.size = CGSize(width: size.width, height: size.width)
        if movieImages?.isEmpty == true {
            cell.collectionViewCellImageView.image = nil
        }
        else{
            cell.collectionViewCellImageView.downloaded(from: movieImages![indexPath.row])
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = detailMovieCollectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    
}
