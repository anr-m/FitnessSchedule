//
//  ScheduleDayCell.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import UIKit

class ScheduleDayCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var weekDayLabel: UILabel!
    @IBOutlet weak var teacherLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func configure(with scheduleDay: ScheduleDay) {
        
        nameLabel.text = scheduleDay.name
        weekDayLabel.text = Constants.weekdays[scheduleDay.weekDay]
        teacherLabel.text = "Тренер: " + scheduleDay.teacher
        descriptionLabel.text = scheduleDay.welcomeDescription
    }
}
