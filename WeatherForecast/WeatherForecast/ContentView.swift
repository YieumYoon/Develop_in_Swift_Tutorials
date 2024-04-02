//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Junsu Lee on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WeekForecast(week: "2024.03.31 - 2024.04.06", rainDay: 4, sunDay: 3, avgLow: 47, avgHigh: 69)
        ScrollView([.horizontal]) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                
                DayForecast(day: "Wed", isRainy: true, high: 50, low: 30)
                
                DayForecast(day: "Thu", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Fri", isRainy: true, high: 80, low: 60)
                
                DayForecast(day: "Sat", isRainy: true, high: 90, low: 60)
                
                DayForecast(day: "Sat", isRainy: false, high: 60, low: 40)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeekForecast: View {
    let week: String
    let rainDay: Int
    let sunDay: Int
    let avgLow: Int
    let avgHigh: Int
    
    var body: some View {
        VStack {
            Text(week)
                .font(Font.title)
                .padding(5)
            HStack {
                VStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(Color.yellow)
                        .font(Font.largeTitle)
                    Text("\(sunDay)")
                        .font(Font.title2)
                }
                
                VStack {
                    Image(systemName: "cloud.rain.fill")
                        .foregroundColor(Color.blue)
                        .font(Font.largeTitle)
                    Text("\(rainDay)")
                        .font(Font.title2)
                }
            }
            Text("Average High: \(avgHigh)º")
                .fontWeight(Font.Weight.semibold)
            Text("Average Low: \(avgLow)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var textColor: Color {
        if (high > 80) {
            return Color.red
        } else {
            return Color.black
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(textColor)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
