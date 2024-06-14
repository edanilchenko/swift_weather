//
//  CityView.swift
//  weather
//
//  Created by Yevhen on 13.06.2024.
//

import SwiftUI

struct CityView: View {
    let cities: [City]
    @State private var selectedCity: City?
    var onCitySelected: ((City) -> Void)?
    
    var body: some View {
        VStack {
            Picker("Select a city", selection: $selectedCity) {
                ForEach(cities) { city in
                    Text(city.name).tag(city as City?)
                }
            }
            .onChange(of: selectedCity) { newCity in
                if let newCity = newCity {
                    onCitySelected?(newCity)
                }
            }
        }
    }
    
//    var body: some View {
//        Text("Dnipro")
//            .font(.largeTitle)
//            .padding(.top, 20)
//    }
}

#Preview {
    CityView(cities: CityData.cities)
}
