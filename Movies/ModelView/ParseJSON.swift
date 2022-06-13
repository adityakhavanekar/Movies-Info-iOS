//
//  ParseJSON.swift
//  Movies
//
//  Created by Neosoft on 11/04/22.
//

import Foundation

class JSONParse{
    
    var movies : [Movies]?
    
    func getMovies(completed: @escaping ([Movies]) -> ()){
        guard let path = Bundle.main.path(forResource: "Film", ofType: "json")else{return}
        let url = URL(fileURLWithPath: path)
        do{
            let jsonData = try Data(contentsOf: url)
            movies = try JSONDecoder().decode([Movies].self, from: jsonData)
            if let result = movies{
                completed(result)
            }
            else{
                print("failed")
            }
        }
        catch{
            print("Error")
        }
    }
}
