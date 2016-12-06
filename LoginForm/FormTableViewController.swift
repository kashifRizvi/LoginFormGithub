//
//  FormTableTableViewController.swift
//  LoginForm
//
//  Created by Kashif on 06/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class FormTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        NotificationCenter.default.addObserver(self, selector: #selector(FormTableTableViewController.keyboardAppeared), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(FormTableTableViewController.keyboardDisappeared), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
        
    }
    
    func keyboardAppeared(notification: Notification) {
        print("Keyboard appeared!!")
        let userinfo = notification.userInfo
        let keyboardSize = (userinfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
        let edgeInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: (keyboardSize?.height)!, right: 0.0)
        tableView.contentInset = edgeInsets
        
        
    }
    
    func keyboardDisappeared(notification: Notification){
        
        print("Keyboard Disappeared!!")

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        var identifier = String()
        
        switch row {
        case 0:
            identifier = "cell0"
        case 1:
            identifier = "cell1"
        case 2:
            identifier = "cell2"
        case 3:
            identifier = "cell3"
        case 4:
            identifier = "cell4"
        case 5:
            identifier = "cell5"
        case 6:
            identifier = "cell6"
        case 7:
            identifier = "cell7"
        case 8:
            identifier = "cell8"
        case 9:
            identifier = "cell9"
        default:
            print("Can't Identify cells, Check reuse identifier.")
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if indexPath.row == 9 {
            let user = User()
            user.phoneNumber = 23425
            print(user.phoneNumber)
            print(user.firstName)
            
            
            
        }
        
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
