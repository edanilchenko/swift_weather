//
//  ContentView.swift
//  weather
//
//  Created by Yevhen on 11.06.2024.
//

import SwiftUI

struct WeatherView: View {
    @State private var weatherData: WeatherData?
    @State private var isLoading = true
    
    @State private var city = CityData.cities[0]
    
    var body: some View {
        VStack {
            CityView(
                cities: CityData.cities,
                onCitySelected: changeCity
            )
            
            if(isLoading){
                ProgressView("Loading...")
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2.0, anchor: .center)
            } else if weatherData != nil {
                let currentData = weatherData?.currentWeather
                CurrentWeather(
                    temperature: currentData!.temperature,
                    time: currentData!.time
                )
                
                DailyView()
                
                HourlyView()
            } else {
                Text("Failed to load weather data.")
            }
        }
        .onAppear {loadData()}
    }
    
    private func loadData() {
        WeatherService.shared.fetchWeather (
            latitude: city.latitude,
            longitude: city.longitude
        ) { data in
            DispatchQueue.main.async {
                self.weatherData = data
                self.isLoading = false
            }
        }
    }
    
    private func changeCity(city: City) {
        self.isLoading = true
        self.city = city
        loadData()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
            WeatherView()
        }
    }
}

#Preview {
    WeatherView()
}
