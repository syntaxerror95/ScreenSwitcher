//
//  ThirdVC.swift
//  ScreenSwitcher
//
//  Created by Sahadev Tandur on 21/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    private var _SentText : String!
    
    var SentText : String
    {
        get {
            return _SentText
        }
        set
        {
            _SentText = newValue
        }
    }
    @IBOutlet weak var DisplayLb: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayLb.text = _SentText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
