//
//  WelcomeVC.swift
//  ScreenSwitcher
//
//  Created by Sahadev Tandur on 21/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.brown
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnBackBtnClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func OnNextBtnClick(_ sender: Any) {
        performSegue(withIdentifier: "GenericSeg", sender: "Text From PRevious Screen")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            ThirdVC {
            if let song = sender as? String{
                destination.SentText = song
            }
        }
    }

}
