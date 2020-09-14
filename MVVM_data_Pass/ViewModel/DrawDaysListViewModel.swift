//
//  DrawDaysList.swift
//  MVVM_data_Pass
//
//  Created by Amous Qiu on 2020-07-06.
//

import Foundation

class DrawDaysListViewModel: ObservableObject{
    
    //var regId = 322
    //@State var regId : Int
    @Published var days = [Day]()
    @Published var name = ""
    @Published var regId = 322
    
    init(regId:Int){
        print("current id",regId)
        WebService().fetchRegattaJSON(regId: regId){ regatta in
            if let regatta = regatta{
                self.days = regatta.days!
                self.name = regatta.englishName!
            }
        }
    }
}
