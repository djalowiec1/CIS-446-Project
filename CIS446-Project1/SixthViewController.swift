//
//  SixthViewController.swift
//  CIS446-Project1
//
//  Created by djalowiec on 2/12/18.
//  Copyright © 2018 Bradley University. All rights reserved.
//
var myHopeCounter = 0;
import UIKit

class SixthViewController: UIViewController {

    override func viewDidLoad() {
        myHopeCounter = myHopeCounter + 1;
        getQ();
        MainView.backgroundColor = UIColor(patternImage: UIImage(named: "back1.jpg")!)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Q: UITextView!
    
    @IBOutlet var MainView: UIView!
    func getQ(){
        let i = arc4random() % 2;
        if(i == i){
            Q.text = "Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence."
        }
        else{
            Q.text = "Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning."
        }
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
