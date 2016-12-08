//
//  CustomCellTableViewCell.swift
//  LoginForm
//
//  Created by Kashif Rizvi on 06/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

var jsonData = [[String:String]]()

class CustomCellTableViewCell: UITableViewCell {
    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var phoneNumber: UITextField!
    @IBOutlet var birthDay: UITextField!
    @IBOutlet var gender: UISegmentedControl!
    @IBOutlet var joinNowButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//
//    @IBAction func saveForm(_ sender: UIButton) {
//        var user = User()
////        var user = User(firstName: firstName.text, lastName: lastName.text, email: email.text, password: password.text, phoneNumber: Int64(phoneNumber.text!) as Int64?, birthDay: birthDay.text)
//        print(firstName?.text)
//        user.lastName = lastName.text
//        
//        let jsonCurrentUser = convertToDictionary(user: user)
//        jsonData.append(jsonCurrentUser)
//        
//        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let userDetailsVC = storyboard.instantiateViewController(withIdentifier: "UserDetailsTableViewController") as! UserDetailsTableViewController
//        
//        
//        
//    }
//    
//    func convertToDictionary (user: User) -> [String:String]{
//        return ["firstname" : user.firstName ?? "Not Available", "lastname" : user.lastName ?? "Not Available", "email" : user.email ?? "Not Available", "phonenumber" : String(describing: user.phoneNumber) as String? ?? "Not Available", "password" : user.password ?? "Not Available", "birthday" : user.birthDay ?? "Not Available"]
//    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
