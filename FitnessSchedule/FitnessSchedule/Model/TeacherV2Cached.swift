//
//  TeacherV2Cached.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: - TeacherV2Cached
class TeacherV2Cached: Object, Teacher {
    @objc dynamic var shortName: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var position: String = ""
    @objc dynamic var imageURL: String = ""
    
    convenience init(from teacherV2: TeacherV2) {
        self.init()
        shortName = teacherV2.shortName
        name = teacherV2.name
        position = teacherV2.position
        imageURL = teacherV2.imageURL
    }
}
