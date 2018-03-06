//
//  FifthViewController.swift
//  CIS446-Project1
//
//  Created by djalowiec on 2/12/18.
//  Copyright © 2018 Bradley University. All rights reserved.
//

var myStressCounter = 0 ;
import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        myStressCounter = myStressCounter + 1;
        getQ();
        Mainview.backgroundColor = UIColor(patternImage: UIImage(named: "back1.jpg")!)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var Mainview: UIView!
    @IBOutlet weak var Q: UITextView!
    
    func getQ(){
        let i = arc4random() % 2;
        if(i == i){
            Q.text = "Happiness is a choice. You can choose to be happy. There's going to be stress in life, but it's your choice whether you let it affect you or not."
        }
        else{
            Q.text = "There's a lot of stress out there, and to handle it, you just need to believe in yourself; always go back to the person that you know you are, and don't let anybody tell you any different, because everyone's special and everyone's awesome."
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
