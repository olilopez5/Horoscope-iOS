//
//  ViewController.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 13/5/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    var horoscope: Horoscope!

    @IBOutlet weak var singImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = horoscope.name
        singImageView.image = horoscope.image
        dateLabel.text = horoscope.date

        
    }
    
   

}
