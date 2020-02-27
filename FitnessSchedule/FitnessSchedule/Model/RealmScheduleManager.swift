//
//  RealmScheduleManager.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: - RealmScheduleManager
struct RealmScheduleManager: ScheduleProvider {
    
    let realm = try! Realm()
    
    func getSchedule(_ completion: @escaping (Schedule) -> Void) {
        
        var schedule: Schedule = []
        
        realm.objects(ResponseCached.self).forEach { schedule.append($0) }
        
        completion(schedule)
    }
    
    func saveSchedule(_ schedule: Schedule) {
        
        do {
            
            guard let schedule = schedule as? [NetworkResponse] else {
                return
            }
            
            // Delete old data
            try realm.write {
                realm.delete(realm.objects(ResponseCached.self))
            }
            
            // Write new data
            try schedule
                .map { ResponseCached(from: $0) }
                .forEach { scheduleDay in
                    try realm.write {
                        realm.add(scheduleDay)
                    }
                }
            
        } catch {
            print(error)
        }
    }
}
