//
//  APICaller.swift
//  COVID-Tracker
//
//  Created by Ravi dwivedi on 17/06/21.
//  Copyright © 2021 Ravi dwivedi. All rights reserved.
//

import Foundation

class APICaller {
    
    static let shared = APICaller()
    private init() {}
    public func getCovidData(for scope:DataScope, completion:@escaping(Result<String,Error>) ->Void) {}
    
    public func  getStateList(completion:@escaping(Result<DistrictData,Error>)->Void) {
        guard let url = Constants.districtDataUrl else {return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data , error == nil else { return}
            
            do{
                let response = try JSONDecoder().decode(DistrictData.self, from: data)
                //let result = response.assam.d
               // print(response)
                completion(.success(response))
            }
            catch{
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
    
    enum DataScope {
        case states
        case travel
        case dateWise
        
    }
    
}




