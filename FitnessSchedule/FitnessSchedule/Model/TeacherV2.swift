//
//  TeacherV2.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation

// MARK: - TeacherV2
class TeacherV2: Teacher, Decodable {
    let shortName: String
    let name: String
    let position: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case shortName = "short_name"
        case name, position
        case imageURL = "imageUrl"
    }
}
