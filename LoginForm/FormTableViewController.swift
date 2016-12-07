//
//  FormTableTableViewController.swift
//  LoginForm
//
//  Created by Kashif on 06/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class FormTableViewController: UITableViewController {
    
    var cellsObject = [CustomCellTableViewCell]()
    
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
        
        let newCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CustomCellTableViewCell
        
        newCell.tag = row
        
        return newCell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        
//        let cell = tableView.cellForRow(at: indexPath) as! CustomCellTableViewCell
//        print(cell.firstName?.text!)
//        print(cellsObject[1].firstName)
//        if indexPath.row == 9 {
//            let user = User()
//            
////            let jsonUser = try JSONSerialization.
//        }
//        
//    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        
        switch indexPath.row {
        case 0:
            return CGFloat(55)
        case 1:
            return CGFloat(50)
        case 2:
            return CGFloat(50)
        case 3:
            return CGFloat(50)
        case 4:
            return CGFloat(50)
        case 5:
            return CGFloat(50)
        case 6:
            return CGFloat(50)
        case 7:
            return CGFloat(75)
        case 8:
            return CGFloat(100)
        case 9:
            return CGFloat(50)
        default:
            return 50
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
    
    @IBAction func birthdayTextBegin(_ sender: UITextField) {
        let datePicker = UIDatePicker()
        
        datePicker.datePickerMode = UIDatePickerMode.date
        sender.inputView = datePicker
        datePicker.addTarget(self, action: #selector(FormTableViewController.handleDatePicker(sender:)), for: UIControlEvents.valueChanged)
        
    }
    
    func handleDatePicker(sender: UIDatePicker) {
        let birthdayCell = self.tableView.viewWithTag(5) as! CustomCellTableViewCell
        var dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        birthdayCell.birthDay.text = dateFormatter.string(from: sender.date)
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let user = User()
        
        let cell1 = self.tableView.viewWithTag(1) as! CustomCellTableViewCell
        let cell2 = self.tableView.viewWithTag(2) as! CustomCellTableViewCell
        let cell3 = self.tableView.viewWithTag(3) as! CustomCellTableViewCell
        let cell4 = self.tableView.viewWithTag(4) as! CustomCellTableViewCell
        let cell5 = self.tableView.viewWithTag(5) as! CustomCellTableViewCell
        let cell6 = self.tableView.viewWithTag(6) as! CustomCellTableViewCell
        let cell9 = self.tableView.viewWithTag(9) as! CustomCellTableViewCell
        
        user.firstName = cell1.firstName.text
        user.lastName = cell1.lastName.text
        user.email = cell2.email.text
        user.password = cell3.password.text
        user.phoneNumber = Int64(cell4.phoneNumber.text!)
        user.birthDay = cell5.birthDay.text
        if cell6.gender.selectedSegmentIndex == 1 {
            user.gender = "Male"
        }else{
            user.gender = "Female"
        }
        
        var userData = [String : String]()
        userData["firstname"] = cell1.firstName.text
        userData["lastname"] = cell1.lastName.text
        userData["email"] = cell2.email.text
        userData["password"] = cell3.password.text
        userData["phonenumber"] = cell4.phoneNumber.text
        userData["birthday"] = cell5.birthDay.text
        if cell6.gender.selectedSegmentIndex == 1{
            userData["gender"] = "male"
        }else{
            userData["gender"] = "female"
        }
        
        if segue.identifier == "toShowRecordsSegue"{
            if let destinationVC = segue.destination as? UserDetailsTableViewController{
                destinationVC.userDetails = userData
            }
        }
        
//        let showVC = UserDetailsTableViewController()
//        showVC.userDetails = userData
//        self.present(showVC, animated: true, completion: nil)
    }
 

}
