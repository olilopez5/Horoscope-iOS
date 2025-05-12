//
//  ViewController.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 12/5/25.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
   
    

    @IBOutlet weak var tableView: UITableView!
    
    var horoscopeList = Horoscope.getAllHoroscopes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horoscopeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HoroscopeCell", for: indexPath) as! HoroscopeViewCell
        
        let horoscope = horoscopeList[indexPath.row]
        cell.render(horoscope: horoscope)
        return cell
        
    }

}

