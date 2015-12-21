//
//  ViewController.swift
//  alrm
//
//  Created by Nathan Fuller on 12/20/15.
//  Copyright © 2015 Nathan Fuller. All rights reserved.
//

import UIKit

class AlarmCell: UITableViewCell {
    
    @IBOutlet weak var alarmTitle: UILabel!
    @IBOutlet weak var alarmDesc: UILabel!
    @IBOutlet weak var alarmEditBtn: UIButton!
    
    var alarm: Alarm!
    
    func loadItem(alarm: Alarm) {
        self.alarm = alarm
        self.alarmTitle.text = alarm.title
        self.alarmDesc.text = alarm.description
    }
    
    @IBAction func editButtonPressed(sender: AnyObject) {
        // TODO
    }
}

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var alarmTable: UITableView!
    
    var items : [Alarm]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "AlarmCell", bundle: nil)
        alarmTable.registerNib(nib, forCellReuseIdentifier: "alarmCell")
        
        items = []
        
        for _ in 1...9 {
            items.append(Alarm(withTitle: "Gym", andDescription: "6:00 AM - 6:10 AM MWF"))
        }
        
        
        alarmTable.dataSource = self
        alarmTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:AlarmCell = self.alarmTable.dequeueReusableCellWithIdentifier("alarmCell") as! AlarmCell
    
        let alarm = items[indexPath.row]
        
        cell.loadItem(alarm)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        // handle selection
    }


}

