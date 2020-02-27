//
//  Teacher.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import Foundation

// MARK: - Teacher
@objc protocol Teacher {
    var shortName: String { get }
    var name: String { get }
    var position: String { get }
    var imageURL: String { get }
}
