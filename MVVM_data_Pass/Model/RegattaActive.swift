//
//  RegattaActive.swift
//  MVVM_data_Pass
//
//  Created by Amous Qiu on 2020-07-06.
//

import Foundation

struct RegattaActive: Codable{
    let databaseNumber: Int?
    let regattaId: Int?
    let streamUrl: String?
    let regatta: Regatta?
    let youTubeEmbedCode: String?
}
