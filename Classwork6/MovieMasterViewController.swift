//
//  MovieMasterViewController.swift
//  Classwork6
//
//  Created by ❦𝔸❦ 𝕄 on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit
import AVFoundation

class MovieMasterViewController: UIViewController {
    
    var background1: AVAudioPlayer?
    
    
    var marvelimages = MarvelMovieData
    var DCimages = DCMovieData
    
    var selectedMovie : Movie = Movie(movieName: "", movieReleaseDate: 2000, actors:
        [""], rating: 0.0, pgRating: "PG")
    

    
    
    @IBOutlet weak var dcImage0: UIButton!
    @IBOutlet weak var dcImage1: UIButton!
    @IBOutlet weak var dcImage2: UIButton!
    @IBOutlet weak var dcImage3: UIButton!
    @IBOutlet weak var dcImage4: UIButton!
    @IBOutlet weak var dcImage5: UIButton!
    @IBOutlet weak var marvelImage0: UIButton!
    @IBOutlet weak var marvelImage1: UIButton!
    @IBOutlet weak var marvelImage2: UIButton!
    @IBOutlet weak var marvelImage3: UIButton!
    @IBOutlet weak var marvelImage4: UIButton!
    @IBOutlet weak var marvelImage5: UIButton!
    
    
    func setDCImages(){
        dcImage0.setBackgroundImage(UIImage(named:DCMovieData[0].movieName), for: .normal)
        dcImage1.setBackgroundImage(UIImage(named:DCMovieData[1].movieName), for: .normal)
        dcImage2.setBackgroundImage(UIImage(named:DCMovieData[2].movieName), for: .normal)
        dcImage3.setBackgroundImage(UIImage(named:DCMovieData[3].movieName), for: .normal)
        dcImage4.setBackgroundImage(UIImage(named:DCMovieData[4].movieName), for: .normal)
        dcImage5.setBackgroundImage(UIImage(named:DCMovieData[5].movieName), for: .normal)
    }
    
    func setMarvelImages(){
        marvelImage0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName), for: .normal)
        marvelImage1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName), for: .normal)
        marvelImage2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName), for: .normal)
        marvelImage3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName), for: .normal)
        marvelImage4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName), for: .normal)
        marvelImage5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName), for: .normal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDCImages()
        setMarvelImages()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dcBtns(_ sender: UIButton) {
        let index = sender.tag
        print("DC",sender.tag)
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier: "gotoMovieDetails", sender: nil)
       
    }
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        let index = sender.tag
        print("Marvel",sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "gotoMovieDetails", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let movieController = segue.destination as? MoviesDetailsViewController else{
            fatalError()
        }
        movieController.movieData = selectedMovie
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
