//
//  ScheduleViewController.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import UIKit

// MARK: - ScheduleViewController
class ScheduleViewController: UITableViewController {

    var schedule: Schedule = []
    let networkScheduleProvider = NetworkScheduleProvider()
    let realmScheduleManager = RealmScheduleManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.refreshControl?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)
        getSchedule()
    }

    // MARK: - Helper functions
    private func getSchedule() {
        
        realmScheduleManager.getSchedule { [weak self] (schedule) in
            
            self?.schedule = schedule
            self?.tableView.reloadData()
        }
        
        networkScheduleProvider.getSchedule { [weak self] (schedule) in
            
            self?.schedule = schedule
            self?.tableView.reloadData()
            self?.realmScheduleManager.saveSchedule(schedule)
        }
    }
    
    @objc func refresh() {
        refreshControl?.endRefreshing()
        getSchedule()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == Constants.toDetailSegue else {
            return
        }
                
        if let scheduleDay = sender as? ScheduleDay {
            if let detailVC = segue.destination as? DetailViewController {
                detailVC.scheduleDay = scheduleDay
            }
        }
        
    }

}
