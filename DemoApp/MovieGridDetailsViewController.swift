//
//  MovieGridDetailsViewController.swift
//  DemoApp
//
//  Created by Vicky Zheng on 10/2/20.
//

import UIKit

class MovieGridDetailsViewController: UIViewController {

    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backDropView: UIImageView!
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = movie["title"] as! String
        let synopsis = movie["overview"] as! String
        
        titleLabel.text = title
        synopsisLabel.text = synopsis
        
        titleLabel.sizeToFit()
        synopsisLabel.sizeToFit()
        
        let posterBaseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: posterBaseURL + posterPath)!
        
        let backDropBaseURL = "https://image.tmdb.org/t/p/w780"
        let backDropPath = movie["backdrop_path"] as! String
        let backDropURL = URL(string: backDropBaseURL + backDropPath)!
        
        posterView.af.setImage(withURL: posterURL)
        backDropView.af.setImage(withURL: backDropURL)
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
