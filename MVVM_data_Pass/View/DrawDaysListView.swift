//
//  DrawDaysList.swift
//  MVVM_data_Pass
//
//  Created by Amous Qiu on 2020-07-06.
//

import SwiftUI

struct DrawDaysListView: View {
    
    var regId : Int
    
    @ObservedObject private var drawDaysVM: DrawDaysListViewModel
    
    
    init(regId:Int){
        self.regId = regId
        self.drawDaysVM = DrawDaysListViewModel(regId: regId)
    }
    
    
    var body: some View {
        VStack{
            List(self.drawDaysVM.days,id:\.id){
                drawDay in
                Text(String(drawDay.startTime ?? ""))
            }
        }
    }
}

