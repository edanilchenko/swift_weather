//
//  CurrentBlock.swift
//  weather
//
//  Created by Yevhen on 11.06.2024.
//

import SwiftUI

struct CurrentWeather: View {
    let temperature : Double
    let time : String
    
    var body: some View {
        VStack {
            Text("\(String(format: "%.0f", temperature))°C")
                .font(.system(size: 80))
                .bold()
            Text("Cloud")
                .font(.title2)
                .padding(.bottom, 10)
            Text("\(time)")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Wind SSW 15 m/s")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    CurrentWeather(temperature: 1, time: "1")
}
