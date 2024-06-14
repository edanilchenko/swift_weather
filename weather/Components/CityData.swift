//
//  CityData.swift
//  weather
//
//  Created by Yevhen on 13.06.2024.
//

import Foundation

struct City: Identifiable, Codable, Hashable {
    let id: String
    let name: String
    let latitude: Double
    let longitude: Double
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.id = "\(latitude)_\(longitude)"
    }
}

struct CityData {
    static let cities: [City] = [
        City(name: "Dnipro", latitude: 48.46664, longitude: 35.04066),
        City(name: "Kyiv", latitude: 50.45466, longitude: 30.5238),
        City(name: "Cherkassy", latitude: 49.44452, longitude: 32.05738),
        City(name: "Chernihiv", latitude: 51.50551, longitude: 31.28487),
        City(name: "Chernivtsi", latitude: 48.29045, longitude: 25.93241),
        City(name: "Donetsk", latitude: 48.023, longitude: 37.80224),
        City(name: "Ivano-Frankivsk", latitude: 48.92312, longitude: 24.71248),
        City(name: "Kharkiv", latitude: 49.98081, longitude: 36.25272),
        City(name: "Kherson", latitude: 46.63695, longitude: 32.61458),
        City(name: "Khmelnytskyi", latitude: 47.98387, longitude: 39.65465),
        City(name: "Kropyvnytskyi", latitude: 48.5428, longitude: 32.285),
        City(name: "Luhansk", latitude: 48.56705, longitude: 39.31706),
        City(name: "Lviv", latitude: 49.83826, longitude: 24.02324),
        City(name: "Mykolaiv", latitude: 46.97625, longitude: 31.99296),
        City(name: "Odesa", latitude: 54.50491, longitude: 24.82078),
        City(name: "Poltava", latitude: 49.58925, longitude: 34.55367),
        City(name: "Rivne", latitude: 50.62308, longitude: 26.22743),
        City(name: "Sumy", latitude: 50.9216, longitude: 34.80029),
        City(name: "Ternopil", latitude: 49.55404, longitude: 25.59067),
        City(name: "Vinnytsia", latitude: 49.2322, longitude: 28.46871),
        City(name: "Lutsk", latitude: 50.75932, longitude: 25.34244),
        City(name: "Uzhhorod", latitude: 48.6242, longitude: 22.2947),
        City(name: "Zaporizhzhia", latitude: 48.10414, longitude: 36.99435),
        City(name: "Zhytomyr", latitude: 50.26487, longitude: 28.67669)
    ]
}
