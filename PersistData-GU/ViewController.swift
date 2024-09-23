//
//  ViewController.swift
//  PersistData-GU
//
//  Created by Jaimin Raval on 23/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUsrDefaults()
    }
    
    
    func setUsrDefaults() {
        savetoUsrDefault(key: "User", value: "John Appleseed")
        let str = readFromUsrDefault(key: "User")
        nameLbl.text = String(str)
        print(str)
        navigationItem.title = str
    }

    
    //  persist data using UserDefaults:
    func savetoUsrDefault(key: String, value: Any) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        
    }
    
    
    //  retrive persist data using UserDefaults:
    func readFromUsrDefault(key: String) -> String {
        
        let defaults = UserDefaults.standard
        guard let retrivedData = defaults.string(forKey: key) else { return "" }
        return retrivedData
        
    }
    
    

}

