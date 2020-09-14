//
//  RegattaActiveListViewModel.swift
//  MVVM_data_Pass
//
//  Created by Amous Qiu on 2020-07-06.


import Foundation

class RegattaActiveListViewModel: ObservableObject{
    
    @Published var regattaActiveList = [RegattaActiveViewModel]()
    
    init() {
        WebService().fetchRegattaActiveJSON() { regattaActiveList in
            if let regattaActiveList = regattaActiveList {
                self.regattaActiveList = regattaActiveList.map(RegattaActiveViewModel.init)
            }
        }
    }
}

struct RegattaActiveViewModel{
    var regattaActive: RegattaActive
    
    init (regattaActive:RegattaActive){
        self.regattaActive=regattaActive
    }
    
    var regattaId:Int {
        return self.regattaActive.regattaId ?? 0
    }
    
    var regatta: Regatta{
        let defaultRegatta = Regatta (id: 0, englishName: "ilo", frenchName: "lio", completitionYear: "li", startDate: "ilo", endDate: "ilo", location: "iol", description: "iol", days: nil)
        return self.regattaActive.regatta ?? defaultRegatta
    }
}

