//
//  Login.swift
//  Twitter
//
//  Created by Liz on 12/7/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class LoginViewContoller: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
    
    }
    override func viewDidAppear(_ animated: Bool) {
        
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true{
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }
    }
    @IBAction func onLoginButton(_ sender: Any) {
        
        
            let myURL = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: myURL, success:  {
                UserDefaults.standard.set(true, forKey: "userLoggedIn")
                self.performSegue(withIdentifier: "loginToHome", sender: self)
                
            }, failure: { error in
                print("could not log in!")
            })
  
    }

}
