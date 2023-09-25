//
//  SimpleWeatherViewController.swift
//  SimpleWeather
//
//  Created by HyunSoo on 2023/09/25.
//

import UIKit

class SimpleWeatherViewController: UIViewController {

    @IBOutlet weak var cityLable: UILabel!
    
    @IBOutlet weak var weatherImageVIew: UIImageView!
    
    @IBOutlet weak var temperatureLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]


    @IBAction func changeButtonTapped(_ sender: Any) {
        print("도시, 온도, 날씨 변경")
        cityLable.text = cities.randomElement()
        let imageName = weathers.randomElement()!
        weatherImageVIew.image = UIImage(systemName: imageName)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLable.text = "\(randomTemp)°"
    }
    
}
