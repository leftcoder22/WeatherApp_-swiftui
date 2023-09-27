//
//  WelcomeVIew.swift
//  WeatherApp
//
//  Created by Christopher Doyle on 9/8/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeVIew: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeVIew()
    }
}
