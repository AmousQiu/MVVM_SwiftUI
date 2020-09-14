//
//  RegattaActiveListView.swift
//  MVVM_data_Pass
//
//  Created by Amous Qiu on 2020-07-06.
//

import SwiftUI

struct regattaActiveTuppleView: View{
    var regattaActive: RegattaActiveViewModel
    
    var body:some View{
        VStack{
            NavigationLink(
                destination: DrawDaysListView(regId: regattaActive.regattaId).navigationBarTitle(String(regattaActive.regatta.englishName ?? "")))
            {
                Text(String(regattaActive.regatta.englishName ?? ""))
            }
            
            Spacer()
        }
    }
}

struct RegattaActiveListView: View {
    
    @ObservedObject private var regattaActiveVM = RegattaActiveListViewModel()
    var body: some View {
        NavigationView{
            List(self.regattaActiveVM.regattaActiveList, id: \.regattaId) { regattaActive in
                regattaActiveTuppleView(regattaActive: regattaActive)
            }.navigationBarTitle("Active Regattas",displayMode: .inline)
        }
    }
}


struct RegattaActiveListView_Previews: PreviewProvider {
    static var previews: some View {
        RegattaActiveListView()
    }
}


