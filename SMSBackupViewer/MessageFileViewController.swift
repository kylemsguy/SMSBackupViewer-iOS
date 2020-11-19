//
//  MessageFileViewController.swift
//  SMSBackupViewer
//
//  Created by Kyle Zhou on 2020-11-18.
//

import UIKit

class MessageFileViewController: UITableViewController {
    // Temporary while we're building out class
    let messageFiles:[String] = [
        "SuperSMS-2020-11-17.xml",
        "SMS-2020-11-18.xml"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return messageFiles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)

        print("\(#function) --- section = \(indexPath.section), row = \(indexPath.row)")

        cell.textLabel?.text = messageFiles[indexPath.row]

        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
