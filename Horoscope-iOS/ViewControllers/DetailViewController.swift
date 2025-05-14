//
//  ViewController.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 13/5/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    var horoscope: Horoscope!
    
    var isFavorite = false
    @IBOutlet weak var bgImageView: UIView!
    @IBOutlet weak var signImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var favoriteMenu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = horoscope.name
        dateLabel.text = horoscope.date
        signImageView.image = horoscope.image.withTintColor(UIColor(named: "white")!)
        bgImageView.backgroundColor = horoscope.color
        
        bgImageView.layer.cornerRadius = signImageView.layer.frame.width / 2
        bgImageView.clipsToBounds = true
        
        isFavorite = SessionManager().isFavorite(id: horoscope.id)
                setFavoriteIcon()
            }
            
            func setFavoriteIcon() {
                if isFavorite {
                    favoriteMenu.image = UIImage(systemName: "heart.fill")
                } else {
                    favoriteMenu.image = UIImage(systemName: "heart")
                }
            }

            @IBAction func setFavorite(_ sender: Any) {
                isFavorite = !isFavorite
                SessionManager().setFavorite(id: isFavorite ? horoscope.id : "")
                setFavoriteIcon()
            }
            
        }

