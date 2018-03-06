//
//  ProfileViewController.swift
//  CIS446-Project1
//
//  Created by djalowiec on 2/28/18.
//  Copyright © 2018 Bradley University. All rights reserved.
//

import UIKit
class ProfileViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
                getCounters();
    }
    
    @IBOutlet weak var SadLabel: UILabel!
    @IBOutlet weak var AngryLabel: UILabel!
    @IBOutlet weak var DemotLabel: UILabel!
    @IBOutlet weak var StressLabel: UILabel!
    @IBOutlet weak var HappyLabel: UILabel!
    @IBOutlet weak var HopeLabel: UILabel!
    
    public func getCounters(){
        SadLabel.reloadInputViews()
        AngryLabel.reloadInputViews();
        var sad = mySadCounter;
        var MySadString = String(sad);
        SadLabel.text = MySadString;
        
        var angry = myAngryCounter;
        var myAngryString = String(angry);
        AngryLabel.text = myAngryString;
        
        var demot = myDemotivatedCounter;
        var myDemotString = String(demot);
        DemotLabel.text = myDemotString;
        
        var Stress = myStressCounter;
        var stressString = String(Stress);
        StressLabel.text = stressString;
        
        var happy = myHappyCounter;
        var happyString = String(happy);
        HappyLabel.text = happyString;
        
        var hope = myHopeCounter;
        var hopeString = String(hope);
        HopeLabel.text = hopeString;
    }

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Calander(){
        let date = Date();
        let formatter = DateFormatter();
        formatter.dateFormat = "dd.MM.yyyy";
        let result = formatter.string(from: date);
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
