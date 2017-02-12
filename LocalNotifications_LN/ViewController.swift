//
//  ViewController.swift
//  LocalNotifications_LN
//
//  Created by Ashwin Tallapaka on 2/12/17.
//  Copyright © 2017 Ashwin Tallapaka. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    UNUserNotificationCenter.current().requestAuthorization(options: [ .alert , .sound , .badge]) { (bool, error) in
        
        }
    }
    
    @IBAction func notificationBtnPressed(_ sender: UIButton)
    {
        let first = UNMutableNotificationContent()
        first.title = "First Notification"
        first.subtitle = "Hello World !!"
        first.body = "Hey I am here to notify you !!"
        first.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "First to Notify !!", content: first, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        
    }
    
    
}

