//
//  ScheduleViewController+TableView.swift
//  FitnessSchedule
//
//  Created by Anuar on 2/26/20.
//  Copyright © 2020 Anuarbek Mukhanov. All rights reserved.
//

import UIKit

extension ScheduleViewController {
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schedule.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleDayCell", for: indexPath) as? ScheduleDayCell else {
            return UITableViewCell()
        }

        cell.configure(with: schedule[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Constants.toDetailSegue, sender: schedule[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
