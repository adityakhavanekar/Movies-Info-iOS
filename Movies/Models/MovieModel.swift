//
//  Movies.swift
//  Movies
//
//  Created by Neosoft on 11/04/22.
//

import Foundation

struct Movies:Codable{
    let Title:String?
    let Year:String?
    let Rated:String?
    let Released:String?
    let Runtime:String?
    let Genre:String?
    let Director:String?
    let Writer:String?
    let Actors:String?
    let Plot:String?
    let Language:String?
    let Awards:String?
    let Poster:String?
    let imdbRating:String?
    let Images:[String]?
}
