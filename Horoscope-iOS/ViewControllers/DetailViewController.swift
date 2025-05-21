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
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var periodSelector: UISegmentedControl!
    @IBOutlet weak var descriptionTextView: UITextView!
    
       var isFav: Bool = false
       
       let defaults = UserDefaults.standard
    
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
        
                getHoroscopeLuck()
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
    @IBAction func periodSelector(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            getHoroscopeLuck(period: "daily")
            break
        case 1:
            getHoroscopeLuck(period: "weekly")
            break
        default:
            getHoroscopeLuck(period: "monthly")
            break
        }
    }
    
    func getHoroscopeLuck(period: String = "daily") {
            loading.isHidden = false
            loading.startAnimating()

            Task {
                do {
                    let luck = try await HoroscopeProvider.getHoroscopeLuck(horoscopeId: horoscope.id, for: period)
                    descriptionTextView.text = luck
                } catch {
                    print("Error al obtener horóscopo: \(error)")
                    descriptionTextView.text = "No se pudo cargar el horóscopo."
                }
                loading.stopAnimating()
                loading.isHidden = true
            }
        }
    }
