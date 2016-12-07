//
//  UserDetailsTableViewController.swift
//  LoginForm
//
//  Created by Kashif Rizvi on 07/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class UserDetailsTableViewController: UITableViewController {

    var userDetails = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return userDetails.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "First Name: "+userDetails["firstname"]!
        case 1:
            cell.textLabel?.text = "Last Name: "+userDetails["lastname"]!
        case 2:
            cell.textLabel?.text = "Email: "+userDetails["email"]!
        case 3:
            cell.textLabel?.text = "Password: "+userDetails["password"]!
        case 4:
            cell.textLabel?.text = "Phone Number: "+userDetails["phonenumber"]!
        case 5:
            cell.textLabel?.text = "Birthday: "+userDetails["birthday"]!
        default:
            cell.textLabel?.text = "Data Not Available"
        }
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
