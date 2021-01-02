import Foundation

struct WeatherManager {
    var weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=16f0b731a85d1a5d2022ed7633033f22&units=metric"
    
    func fetchWeather(cityName : String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJOSN(weatherData: safeData)
                }
            }
            
            task.resume()
        }
    }
    
    func parseJOSN(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let name = decodedData.name
            let temp = decodedData.main.temp
            
            let weather = WeatherModel(cityName: name, conditionId: id, temperature: temp)
            print(weather.temperatureString)
            
        }catch {
            print(error)
        }
    }

}
