//
//  ViewController.swift
//  ManagementEven
//
//  Created by Cntt08 on 4/22/17.
//  Copyright © 2017 Cntt08. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var DaysOfWeek = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
    var Mon = ["Nghe Nhac","Xem phim","Hoc Tieng Anh"]
    var Tue = ["Doc Truyen","Nghe Nhac","Choi Game","Go Picnic"]
    var Wed = ["Doc Truyen","Nghe Nhac","Choi Game","Go Picnic"]
    var Thu = ["Doc Truyen","Nghe Nhac","Choi Game","Go Picnic"]
    var Fri = ["Doc Truyen","Nghe Nhac","Choi Game","Go Picnic"]
    var Sat = ["Doc Truyen","Nghe Nhac","Choi Game","Go Picnic"]
    var Sun = ["Doc Truyen","Nghe Nhac","Choi Game","Go Picnic", "asdf","asdfas"]
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return DaysOfWeek.count
    }
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    switch(section){
    case 0:
        return Mon.count
        break
    case 1:
        return Tue.count
        break
    case 2:
        return Wed.count
        break
    case 3:
        return Thu.count
        break
    case 4:
        return Fri.count
        break
    case 5:
        return Sat.count
        break
    case 6:
        return Sun.count
        break
    default:
        return -1
        break
    }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayEvent", for: indexPath) as! EventTableViewCell
        
        // Configure the cell...
        switch(indexPath.section){
        case 0:
            cell.textLabel!.text = Mon[indexPath.row]
            break
        case 1:
             cell.textLabel!.text = Tue[indexPath.row]
            break
        case 2:
            cell.textLabel!.text = Wed[indexPath.row]
            break
        case 3:
             cell.textLabel!.text = Thu[indexPath.row]
            break
        case 4:
             cell.textLabel!.text = Fri[indexPath.row]
            break
        case 5:
             cell.textLabel!.text = Sat[indexPath.row]
            break
        case 6:
             cell.textLabel!.text = Sun[indexPath.row]
            break
        default:
            break
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return DaysOfWeek[section]
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        switch(indexPath.section){
        case 0:
            if editingStyle == .delete {
                self.Mon.remove(at: indexPath.row)
                self.tableView.reloadData()
            }
            break
        case 1:
            if editingStyle == .delete {
                Tue.remove(at: indexPath.row)                self.tableView.reloadData()
            }
            break
        case 2:
            if editingStyle == .delete {
                Wed.remove(at: indexPath.row)                self.tableView.reloadData()
            }
            break
        case 3:
            if editingStyle == .delete {
                Thu.remove(at: indexPath.row)                self.tableView.reloadData()
            }
            break
        case 4:
            if editingStyle == .delete {
                Fri.remove(at: indexPath.row)                self.tableView.reloadData()
            }
            break
        case 5:
            if editingStyle == .delete {
                Sat.remove(at: indexPath.row)                self.tableView.reloadData()
            }
            break
        case 6:
            if editingStyle == .delete {
                Sun.remove(at: indexPath.row)                self.tableView.reloadData()
            }
            break
        default:
            break
        }

        
    }

}

