//
//  WebService.swift
//  MVVM_data_Pass
//
//  Created by Amous Qiu on 2020-07-06.
//

import Foundation

class WebService{
    
    // Fetch all the active regattas
    func fetchRegattaActiveJSON(completion: @escaping ([RegattaActive]?) -> ()) {
        let urlString = ""
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let regattaActiveList = try? JSONDecoder().decode([RegattaActive].self, from: data)
            DispatchQueue.main.async {
                completion(regattaActiveList)
            }
        }.resume()
    }
    
    //Fetch the current Regatta
    func fetchRegattaJSON(regId:Int,completion: @escaping (Regatta?) -> ()) {
        let urlString = ""+String(regId)
        print(urlString)
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let regatta = try? JSONDecoder().decode(Regatta.self, from: data)
            DispatchQueue.main.async {
                completion(regatta)
            }
        }.resume()
    }
}
    
    
  
