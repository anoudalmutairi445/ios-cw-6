//
//  MoviesDetailsViewController.swift
//  Classwork6
//
//  Created by ❦𝔸❦ 𝕄 on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MoviesDetailsViewController: UIViewController {
    
    var movieData : Movie = Movie(movieName: "Joker", movieReleaseDate: 2000, actors: [""], rating: 10.0, pgRating: "PG-13")
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    func setMovieDetails(){
           movieName.title = movieData.movieName
           self.movieImg.image = UIImage(named: movieData.movieName)
           self.movieRated.text = movieData.pgRating
           self.movieRating.text = String(movieData.rating)
           self.MovieReleaseDate.text = String(movieData.movieReleaseDate)
           self.actorImage.image = UIImage(named: movieData.actors[0])
           self.actorName.text = movieData.actors[0]
           self.actorImage2.image = UIImage(named: movieData.actors[1])
           self.actorName2.text = movieData.actors[1]
           self.actorImage3.image = UIImage(named: movieData.actors[2])
           self.actorName3.text = movieData.actors[2]
       }
       func configureUI(){
           ratedBG.layer.cornerRadius = 20
           ratingBG.layer.cornerRadius = 20
           yearBG.layer.cornerRadius = 20
       }
       
       @IBOutlet weak var movieImg: UIImageView!
       @IBOutlet weak var movieName: UINavigationItem!
       @IBOutlet weak var movieRating: UILabel!
       @IBOutlet weak var MovieReleaseDate: UILabel!
       @IBOutlet weak var movieRated: UILabel!
       @IBOutlet weak var actorImage: UIImageView!
       @IBOutlet weak var actorName: UILabel!
       @IBOutlet weak var actorImage2: UIImageView!
       @IBOutlet weak var actorName2: UILabel!
       @IBOutlet weak var actorImage3: UIImageView!
       @IBOutlet weak var actorName3: UILabel!
       
       @IBOutlet weak var ratingBG: UIView!
       @IBOutlet weak var ratedBG: UIView!
       @IBOutlet weak var yearBG: UIView!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
