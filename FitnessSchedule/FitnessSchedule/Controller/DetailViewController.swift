//
//  DetailViewController.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import UIKit
import Kingfisher

// MARK: - DetailViewController
class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var availabilityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var teacherNameLabel: UILabel!
    @IBOutlet weak var teacherPositionLabel: UILabel!
    @IBOutlet weak var teacherImageView: UIImageView!
    
    var scheduleDay: ScheduleDay?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let scheduleDay = scheduleDay {
            
            nameLabel.text = scheduleDay.name
            timeLabel.text = "\(Constants.weekdays[scheduleDay.weekDay] ?? "Не указан день недели"): \(scheduleDay.startTime) - \(scheduleDay.endTime)"
            placeLabel.text = "Место: \(scheduleDay.place)"
            availabilityLabel.text = "Осталось мест: \(scheduleDay.availability)"
            descriptionLabel.text = scheduleDay.welcomeDescription
            teacherNameLabel.text = scheduleDay.getTeacherV2().name
            teacherPositionLabel.text = scheduleDay.getTeacherV2().position
            if let url = URL(string: scheduleDay.getTeacherV2().imageURL) {
                teacherImageView.kf.setImage(with: url)
            }
        }
        
    }
}
