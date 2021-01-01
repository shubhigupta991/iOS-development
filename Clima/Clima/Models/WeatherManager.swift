import Foundation

struct WeatherManager {
    var weatherURL = "https://api.openweathermap.org/data/2.5/weather?q=london&appid=16f0b731a85d1a5d2022ed7633033f22&units=metric"
    
    func fetchWeather(cityName : String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
        
            let session = URLSession(configuration: .default)
        
            let task = session.dataTask(with: url, completionHandler: handle(data: urlResponse: error:))
        
            task.resume()
        }
    }
    
    func handle(data: Data?, urlResponse: URLResponse?, error: Error?) {
        if error != nil{
            print(error)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
