//
//  NetworkResponse.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation

// MARK: - NetworkResponse
class NetworkResponse: ScheduleDay, Decodable {
            
    let name: String
    let welcomeDescription: String
    let place: String
    let teacher: String
    let startTime, endTime: String
    let weekDay: Int
    let appointmentID, serviceID: String
    let pay, appointment: Bool
    let teacherV2: TeacherV2
    let color: String
    let availability: Int
    
    func getTeacherV2() -> Teacher {
        return teacherV2
    }

    enum CodingKeys: String, CodingKey {
        case name
        case welcomeDescription = "description"
        case place, teacher, startTime, endTime, weekDay
        case appointmentID = "appointment_id"
        case serviceID = "service_id"
        case pay, appointment
        case teacherV2 = "teacher_v2"
        case color, availability
    }
}
