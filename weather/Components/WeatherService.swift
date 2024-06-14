//
//  WeatherService.swift
//  weather
//
//  Created by Yevhen on 11.06.2024.
//

import Foundation

import Foundation

class WeatherService {
    static let shared = WeatherService()

    func fetchWeather(latitude: Double, longitude: Double, completion: @escaping (WeatherData?) -> Void) {
        var components = URLComponents(string: "https://api.open-meteo.com/v1/forecast")
        components?.queryItems = [
            URLQueryItem(name: "latitude", value: "\(latitude)"),
            URLQueryItem(name: "longitude", value: "\(longitude)"),
            URLQueryItem(name: "hourly", value: "temperature_2m,weathercode"),
            URLQueryItem(name: "daily", value: [
                "weathercode",
                "temperature_2m_max",
                "temperature_2m_min",
                "apparent_temperature_max",
                "apparent_temperature_min",
                "sunrise",
                "sunset",
                "uv_index_max",
                "uv_index_clear_sky_max",
                "precipitation_sum",
                "rain_sum",
                "showers_sum",
                "snowfall_sum",
                "precipitation_hours",
                "precipitation_probability_max",
                "windspeed_10m_max",
                "windgusts_10m_max",
                "winddirection_10m_dominant",
                "shortwave_radiation_sum",
                "et0_fao_evapotranspiration"
            ].joined(separator: ",")),
            URLQueryItem(name: "current_weather", value: "true"),
            URLQueryItem(name: "timezone", value: "Europe/Berlin"),
            URLQueryItem(name: "forecast_days", value: "14")
        ]

        guard let url = components?.url else {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }

            do {
                let weatherData = try JSONDecoder().decode(WeatherData.self, from: data)
                completion(weatherData)
            } catch {
                print("Failed to decode JSON: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
