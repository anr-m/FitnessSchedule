//
//  NetworkScheduleProvider.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation
import Alamofire

// MARK: - NetworkScheduleProvider
struct NetworkScheduleProvider: ScheduleProvider {
    
    func getSchedule(_ completion: @escaping (Schedule)->Void) {
        
        guard let url = URL(string: Constants.url) else {
            return
        }
        
        Alamofire.request(url).responseData { (response) in
            
            if let error = response.error {
                print(error)
                return
            }
            
            if let data = response.data {
                do {
                    let schedule = try JSONDecoder().decode([NetworkResponse].self, from: data)
                    completion(schedule)
                } catch {
                    print(error)
                }
            }
        }
    }
}
