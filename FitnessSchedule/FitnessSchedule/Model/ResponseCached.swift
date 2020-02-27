//
//  ResponseCached.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: - ResponseCached
class ResponseCached: Object, ScheduleDay {

    @objc dynamic var name: String = ""
    @objc dynamic var welcomeDescription: String = ""
    @objc dynamic var place: String = ""
    @objc dynamic var teacher: String = ""
    @objc dynamic var startTime: String = ""
    @objc dynamic var endTime: String = ""
    @objc dynamic var weekDay: Int = 0
    @objc dynamic var appointmentID: String = ""
    @objc dynamic var serviceID: String = ""
    @objc dynamic var pay: Bool = false
    @objc dynamic var appointment: Bool = false
    @objc dynamic var teacherV2: TeacherV2Cached?
    @objc dynamic var color: String = ""
    @objc dynamic var availability: Int = 0
    
    func getTeacherV2() -> Teacher {
        return teacherV2 ?? TeacherV2Cached()
    }
    
    convenience init(from response: NetworkResponse) {
        self.init()
        name = response.name
        welcomeDescription = response.welcomeDescription
        place = response.place
        teacher = response.teacher
        startTime = response.startTime
        endTime = response.endTime
        weekDay = response.weekDay
        appointmentID = response.appointmentID
        serviceID = response.serviceID
        pay = response.pay
        appointment = response.appointment
        teacherV2 = TeacherV2Cached(from: response.teacherV2)
        color = response.color
        availability = response.availability
    }
}

