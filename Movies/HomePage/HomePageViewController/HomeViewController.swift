//
//  HomeViewController.swift
//  Movies
//
//  Created by Neosoft on 11/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    
    var jsonParser = JSONParse()
    
    var movieList = [Movies]()
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        
        self.title = "Movies and Web Series"
        
        movieTableView.delegate = self
        movieTableView.dataSource = self
        
        movieTableView.register(UINib(nibName: "MovieCell", bundle: nil), forCellReuseIdentifier: "MovieCell")
        
        jsonParser.getMovies { movies in
            self.movieList = movies
        }
        print(movieList)
    }
}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")as! MovieCell
        cell.movieNameLbl.text = movieList[indexPath.row].Title
        cell.ratingLbl.text = movieList[indexPath.row].imdbRating
        cell.timeLbl.text = movieList[indexPath.row].Runtime
        cell.releaseDateLbl.text = movieList[indexPath.row].Released
        cell.movieCellImgView.downloaded(from: movieList[indexPath.row].Poster!)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dvc = MovieDetailViewController()
        dvc.genre = movieList[indexPath.row].Genre
        dvc.movieName = movieList[indexPath.row].Title
        dvc.moviePlot = movieList[indexPath.row].Plot
        dvc.movieRated = "Rated: \(movieList[indexPath.row].Rated ?? "no Rating")"
        dvc.movieRating = movieList[indexPath.row].imdbRating
        dvc.movieCast = movieList[indexPath.row].Actors
        dvc.moviePoster = movieList[indexPath.row].Poster
        dvc.movieImages = movieList[indexPath.row].Images
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}

