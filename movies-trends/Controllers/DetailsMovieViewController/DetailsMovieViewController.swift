//
//  DetailsMovieViewController.swift
//  movies-trends
//
//  Created by Andrés Rechimon on 17/01/2024.
//

import UIKit

class DetailsMovieViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var viewModel: DetailsMovieViewModel
        
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        self.title = "Movie Details"
        titleLabel.text = viewModel.movieTitle
        imageView.sd_setImage(with: viewModel.movieImage)
        descriptionLabel.text = viewModel.movieDescription
    }

}
