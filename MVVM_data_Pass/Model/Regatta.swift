//
//  Regatta.swift
//  MVVM_data_Pass
//
//  Created by Amous Qiu on 2020-07-06.
//

import Foundation

struct Regatta: Codable{
    let id: Int?
    let englishName: String?
    let frenchName: String?
    let completitionYear: String?
    let startDate: String?
    let endDate: String?
    let location: String?
    let description: String?
    let days: [Day]?
}
