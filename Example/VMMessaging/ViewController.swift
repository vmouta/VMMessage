//
//  ViewController.swift
//  VMMessaging
//
//  Created by Vasco Mouta on 01.02.17.
//  Copyright © 2017 zucred AG. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var remoteConfig: FIRRemoteConfig? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        remoteConfig = FIRRemoteConfig.remoteConfig()
        let remoteConfigSettings = FIRRemoteConfigSettings(developerModeEnabled: true)
        //remoteConfig?.configSettings = remoteConfigSettings!

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fetchConfig() {

        var expirationDuration = 3600
        if (remoteConfig?.configSettings.isDeveloperModeEnabled)! {
            expirationDuration = 0
        }
        
        remoteConfig?.fetch(withExpirationDuration: TimeInterval(expirationDuration)) { (status, error) -> Void in
            if status == .success {
                print("Config fetched!")
                self.remoteConfig?.activateFetched()
            } else {
                print("Config not fetched")
                print("Error \(error!.localizedDescription)")
            }
            
            print(self.remoteConfig?.configValue(forKey: "logging_server").stringValue)
        }
    }

    @IBAction func fetchButtonPressed(_ sender: AnyObject) {
        fetchConfig()
    }

}

