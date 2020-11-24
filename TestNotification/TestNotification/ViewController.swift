//
//  ViewController.swift
//  TestNotification
//
//  Created by Nadeem on 08/08/20.
//  Copyright © 2020 Nadeem. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            //code
            print("requestAuthorization")
        }
        
        let content = UNMutableNotificationContent()
        content.title = "Notif Title"
        content.body = "Look at me!"
        
        let date = Date().addingTimeInterval(10)
        let dateCompo = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateCompo, repeats: true)
        
        let uuid = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuid, content: content, trigger: trigger)
        
        center.add(request) { (error) in
           //code
             print("UNNotificationRequest")
        }
        
    }


}

