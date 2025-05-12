//
//  Horoscope.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 12/5/25.
//

import Foundation
import UIKit

struct Horoscope {
    let id: String
    let name: String
    let date: String
    let image: UIImage
    let color: UIColor
    
    static let horoscopeList = [
        Horoscope(id: "aries", name: "Aries", date: "March 21 to April 19", image: UIImage(named: "horoscope-icons/aries-svgrepo-com")!, color: UIColor(named: "aries-color")!),
        Horoscope(id: "taurus", name: "Taurus", date: "April 20 to May 20", image: UIImage(named: "horoscope-icons/taurus-svgrepo-com")!, color: UIColor(named: "taurus-color")!),
        Horoscope(id: "gemini", name: "Gemini", date: "May 21 to June 20", image: UIImage(named: "horoscope-icons/gemini-svgrepo-com")!, color: UIColor(named: "gemini-color")!),
        Horoscope(id: "cancer", name: "Cancer", date: "June 21 to July 22", image: UIImage(named: "horoscope-icons/cancer-svgrepo-com")!, color: UIColor(named: "cancer-color")!),
        Horoscope(id: "leo", name: "Leo", date: "July 23 to August 22", image: UIImage(named: "horoscope-icons/leo-svgrepo-com")!, color: UIColor(named: "leo-color")!),
        Horoscope(id: "virgo", name: "Virgo", date: "August 23 to September 22", image: UIImage(named: "horoscope-icons/virgo-svgrepo-com")!, color: UIColor(named: "virgo-color")!),
        Horoscope(id: "libra", name: "Libra", date: "September 23 to October 22", image: UIImage(named: "horoscope-icons/libra-svgrepo-com")!, color: UIColor(named: "libra-color")!),
        Horoscope(id: "scorpio", name: "Scorpio", date: "October 23 to November 21", image: UIImage(named: "horoscope-icons/scorpio-svgrepo-com")!, color: UIColor(named: "scorpio-color")!),
        Horoscope(id: "sagittarius", name: "Sagittarius", date: "November 22 to December 21", image: UIImage(named: "horoscope-icons/sagittarius-svgrepo-com")!, color: UIColor(named: "sagittarius-color")!),
        Horoscope(id: "capricorn", name: "Capricorn", date: "December 22 to January 19", image: UIImage(named: "horoscope-icons/capricorn-svgrepo-com")!, color: UIColor(named: "capricorn-color")!),
        Horoscope(id: "aquarius", name: "Aquarius", date: "January 20 to February 18", image: UIImage(named: "horoscope-icons/aquarius-svgrepo-com")!, color: UIColor(named: "aquarius-color")!),
        Horoscope(id: "pisces", name: "Pisces", date: "February 19 to March 20", image: UIImage(named: "horoscope-icons/pisces-svgrepo-com")!, color: UIColor(named: "pisces-color")!)
     
    ]
    
    
    static func getAllHoroscopes() -> [Horoscope] {
        return horoscopeList
    }
    
}
