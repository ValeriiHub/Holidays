//
//  HolidayModel.swift
//  Holidays
//
//  Created by Valerii D on 28.06.2021.
//

import Foundation

struct HolidayModel {

    let url = "https://holidayapi.com/v1/holidays?pretty&key=1802ae4f-a932-404e-8f54-0bb175a0bfb3&country=UA&language=ru&upcoming"
    
    func fetchHoliday(year: Int, month: Int, day: Int) {
        let urlString = "\(url)&year=\(year)&month=\(month)&day=\(day)"
        performRequest(with: urlString)
    }
    
    
    func performRequest(with url: String) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error)
                return
            }
            
            if let data = data {
                do {
                    let decoderData = try JSONDecoder().decode(HolidayData.self, from: data)
                } catch {
                    print(error)
                }
            }
        }.resume()
        
        
        
        
        
        
        
        
    }
}
