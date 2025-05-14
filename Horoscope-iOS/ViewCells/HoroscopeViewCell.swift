//
//  HoroscopeViewCell.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 12/5/25.
//

import UIKit

class HoroscopeViewCell: UITableViewCell {

    @IBOutlet weak var bgImageView: UIView!
    @IBOutlet weak var signImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var favoriteIcon: UIImageView!
    
    func render(horoscope: Horoscope){
        nameLabel.text = horoscope.name
        dateLabel.text = horoscope.date
        signImageView.image = horoscope.image.withTintColor(UIColor(named: "white")!)
        bgImageView.backgroundColor = horoscope.color
        favoriteIcon.isHidden = !SessionManager().isFavorite(id: horoscope.id)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        bgImageView.layer.cornerRadius = signImageView.layer.frame.width / 2
        bgImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
