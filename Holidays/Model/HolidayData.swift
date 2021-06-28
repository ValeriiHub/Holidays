//
//  HolidayData.swift
//  Holidays
//
//  Created by Valerii D on 28.06.2021.
//

import Foundation

struct HolidayData: Decodable {
    let holidays: [Holyday]
}

struct Holyday: Decodable {
    let name: String
    let date : String
    let weekday: Date
}

struct Date: Decodable {
    let name: String
    let numeric: String
}

