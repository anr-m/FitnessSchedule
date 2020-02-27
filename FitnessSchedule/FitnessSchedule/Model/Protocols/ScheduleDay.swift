//
//  ScheduleDay.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation

// MARK: - ScheduleDay
protocol ScheduleDay {
    var name: String { get }
    var welcomeDescription: String { get }
    var place: String { get }
    var teacher: String { get }
    var startTime: String { get }
    var endTime: String { get }
    var weekDay: Int { get }
    var appointmentID: String { get }
    var serviceID: String { get }
    var pay: Bool { get }
    var appointment: Bool { get }
    var color: String { get }
    var availability: Int { get }
    
    func getTeacherV2() -> Teacher
}
