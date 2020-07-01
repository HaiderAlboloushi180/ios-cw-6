//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Haider Alboloushi on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {

    @IBOutlet weak var movieImg: UIImageView!
        
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    @IBOutlet weak var ratingBG: UIView!
    @IBOutlet weak var ratedBG: UIView!
    @IBOutlet weak var releaseDateBG: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()

        // Do any additional setup after loading the view.
    }
    
    func setMovieDetails() {
        
        movieImg.image = UIImage(named: selectedMovie.movieName)
        
        movieRating.text = "\(selectedMovie.rating)"
        movieRated.text = selectedMovie.pgRating
        movieReleaseDate.text = "\(selectedMovie.movieReleaseDate)"
        
        actorImg1.image = UIImage(named: selectedMovie.actors[0])
        actorName1.text = selectedMovie.actors[0]
        
        actorImg2.image = UIImage(named: selectedMovie.actors[1])
        actorName2.text = selectedMovie.actors[1]
        
        actorImg3.image = UIImage(named: selectedMovie.actors[2])
        actorName3.text = selectedMovie.actors[2]
    }
    
    func configureUI() {
        ratingBG.layer.cornerRadius = 20
        ratedBG.layer.cornerRadius = 20
        releaseDateBG.layer.cornerRadius = 20
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
