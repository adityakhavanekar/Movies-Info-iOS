//
//  ViewController.swift
//  Movies
//
//  Created by Neosoft on 11/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //parseJson()
    }
    
//    private func parseJson(){
//        guard let path = Bundle.main.path(forResource: "Film", ofType: "json")else{return}
//        let url = URL(fileURLWithPath: path)
//        var result : [Result]?
//        do{
//            let jsonData = try Data(contentsOf: url)
//            result = try JSONDecoder().decode([Result].self, from: jsonData)
//            if let result = result{
//                print(result)
//            }
//            else{
//                print("failed")
//            }
//        }
//        catch{
//            print("Error")
//        }
//    }
}

//struct Result:Codable{
//    let Title:String?
//    let Year:String?
//}
