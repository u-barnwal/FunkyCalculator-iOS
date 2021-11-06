//
//  ViewController.swift
//  FunkyCalculator
//
//  Created by Utsav Barnwal on 20/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var calcOperation: Operator = Operator.Nothing;
    var calcState: CalculationState = CalculationState.EnteringNum;
    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberClicked(_ sender: UIButton) {
        //        labelResult.text= (Int) sender.tag;
        //        switch sender.tag {
        //        case 0:
        //            labelResult.text=tag;
        //        }
    }
    
    @IBAction func operatorClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func equalsClicked(_ sender: UIButton) {
        
    }
    
}

