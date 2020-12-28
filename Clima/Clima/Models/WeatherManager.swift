import Foundation

struct WeatherManager {
    var weatherURL = "http://api.openweathermap.org/data/2.5/weather?q=london&appid=16f0b731a85d1a5d2022ed7633033f22"
    
    func fetchWeather(cityName : String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
