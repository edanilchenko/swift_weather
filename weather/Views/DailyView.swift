//
//  DailyView.swift
//  weather
//
//  Created by Yevhen on 13.06.2024.
//

import SwiftUI

struct DailyView: View {
    var body: some View {
        VStack {
            // Daily Forecast
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    WeatherDayView(day: "Tue 11", icon: "cloud.fill", temperature: "34°22°", condition: "Cloud")
                    WeatherDayView(day: "Wed 12", icon: "cloud.bolt.fill", temperature: "31°22°", condition: "Thunder")
                    WeatherDayView(day: "Thu 13", icon: "cloud.fill", temperature: "28°18°", condition: "Cloud")
                    WeatherDayView(day: "Fri 14", icon: "cloud.fill", temperature: "30°18°", condition: "Cloud")
                    WeatherDayView(day: "Sat 15", icon: "cloud.rain.fill", temperature: "26°22°", condition: "Rain")
                    WeatherDayView(day: "Sun 16", icon: "cloud.bolt.fill", temperature: "27°19°", condition: "Thunder")
                    WeatherDayView(day: "Mon 17", icon: "cloud.bolt.fill", temperature: "26°20°", condition: "Thunder")
                    WeatherDayView(day: "Tue 18", icon: "cloud.rain.fill", temperature: "31°20°", condition: "Rain")
                    WeatherDayView(day: "Wed 19", icon: "cloud.fill", temperature: "31°21°", condition: "Cloud")
                    WeatherDayView(day: "Thu 20", icon: "cloud.fill", temperature: "32°23°", condition: "Cloud")
                    WeatherDayView(day: "Fri 21", icon: "cloud.fill", temperature: "33°23°", condition: "Cloud")
                    WeatherDayView(day: "Sat 22", icon: "cloud.fill", temperature: "32°22°", condition: "Cloud")
                }
                .padding(.horizontal, 20)
            }
            .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
        }
    }
}

struct WeatherDayView: View {
    let day: String
    let icon: String
    let temperature: String
    let condition: String
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
                .foregroundColor(.gray)
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding(.vertical, 5)
            Text(temperature)
                .font(.body)
            Text(condition)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    DailyView()
}
