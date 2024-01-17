//
//  MainMovieCell.swift
//  movies-trends
//
//  Created by Andrés Rechimon on 17/01/2024.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {
    
    static var identifier: String {
        get {
            "MainMovieCell"
        }
    }
    
    static func register() -> UINib {
        UINib(nibName: "MainMovieCell", bundle: nil)
    }

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            backView.round()
            backView.addBorder(color: .lightGray, width: 1)
            backView.backgroundColor = .lightGray
            movieImageView.round(5)
    }
    func setupCell(viewModel: MovieTableCellViewModel) {
        self.nameLabel.text = viewModel.name
        self.dateLabel.text = viewModel.date
        self.rateLabel.text = viewModel.score
        self.movieImageView.sd_setImage(with: viewModel.image)
    }
    
}
