//
//  WeatherData.swift
//  weather
//
//  Created by Yevhen on 11.06.2024.
//

import Foundation

struct WeatherData: Codable {
    let latitude: Double
    let longitude: Double
    let generationtimeMS: Double
    let utcOffsetSeconds: Int
    let timezone, timezoneAbbreviation: String
    let elevation: Double
    let currentWeatherUnits: CurrentWeatherUnits
    let currentWeather: CurrentWeather
    let hourlyUnits: HourlyUnits
    let hourly: Hourly
    let daily: Daily
    
    enum CodingKeys: String, CodingKey {
        case latitude, longitude
        case generationtimeMS = "generationtime_ms"
        case utcOffsetSeconds = "utc_offset_seconds"
        case timezone
        case timezoneAbbreviation = "timezone_abbreviation"
        case elevation
        case currentWeatherUnits = "current_weather_units"
        case currentWeather = "current_weather"
        case hourlyUnits = "hourly_units"
        case hourly, daily
    }
    
    struct CurrentWeather: Codable {
        let time: String
        let interval: Int
        let temperature: Double
        let windspeed: Double
        let winddirection: Int
        let isDay, weathercode: Int
        
        enum CodingKeys: String, CodingKey {
            case time, interval, temperature, windspeed, winddirection
            case isDay = "is_day"
            case weathercode
        }
    }
    
    struct CurrentWeatherUnits: Codable {
        let time, interval, temperature, windspeed: String
        let winddirection: String
        let isDay: String
        let weathercode: String
        
        enum CodingKeys: String, CodingKey {
            case time, interval, temperature, windspeed, winddirection
            case isDay = "is_day"
            case weathercode
        }
    }
    
    struct Hourly: Codable {
        let time: [String]
        let temperature2M: [Double]
        let weathercode: [Int]
        
        enum CodingKeys: String, CodingKey {
            case time
            case temperature2M = "temperature_2m"
            case weathercode
        }
    }

    struct HourlyUnits: Codable {
        let time, temperature2M, weathercode: String
        
        enum CodingKeys: String, CodingKey {
            case time
            case temperature2M = "temperature_2m"
            case weathercode
        }
    }
    
    struct Daily: Codable {
        let time: [String]
        let temperatureMax: [Double]
        let temperatureMin: [Double]
        let weathercode: [Int]

        enum CodingKeys: String, CodingKey {
            case time
            case temperatureMax = "temperature_2m_max"
            case temperatureMin = "temperature_2m_min"
            case weathercode
        }
    }
}
