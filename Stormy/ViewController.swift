//
//  ViewController.swift
//  Stormy
//
//  Created by Pasan Premaratne on 5/8/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate let darkSkyAPIKey = "522ffbddef15de9b7932b5c0d35bcbc4"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let base = URL(string: "https://api.darksky.net/forecast/\(darkSkyAPIKey)/")
        guard let forecastURL = URL(string: "6.2002375,-75.5730763", relativeTo: base) else {
            return
        }
        
        let request = URLRequest(url: forecastURL)
        let session = URLSession(configuration: .default)
        
        let dataTask = session.dataTask(with: request) { data, response, error in
            print(data)
        }
        
        dataTask.resume()
        
        let currentWeather = CurrentWeather(temperature: 85.0, humidity: 0.8, precipProbability: 0.1, summary: "Hot!", icon: "clear-day")
        let viewModel = CurrentWeatherViewModel(model: currentWeather)
        
        displayWeather(using: viewModel)
    }
    
    func displayWeather(using viewModel: CurrentWeatherViewModel) {
        currentTemperatureLabel.text = viewModel.temperature
        currentHumidityLabel.text = viewModel.humidity
        currentPrecipitationLabel.text = viewModel.precipitationProbability
        currentSummaryLabel.text = viewModel.summary
        currentWeatherIcon.image = viewModel.icon
    }
}


















