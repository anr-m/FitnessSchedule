//
//  ScheduleProvider.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation

// MARK: - ScheduleProvider
protocol ScheduleProvider {
    func getSchedule(_ completion: @escaping (Schedule)->Void)
}
