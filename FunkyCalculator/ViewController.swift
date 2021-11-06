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
    
    var firstValue: String = "";
    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberClicked(_ sender: UIButton) {
        updateDisplay (number: String(sender.tag))
    }
    
    @IBAction func operatorClicked(_ sender: UIButton) {
        calcState = CalculationState.NewNumStarted;
        
        if let num = labelResult.text {
            if num != "" {
                firstValue = num;
                labelResult.text = "";
            }
        }
        
        switch sender.tag {
        case 10:
            calcOperation = Operator.Add;
        case 11:
            calcOperation = Operator.Substract;
        case 12:
            calcOperation = Operator.Multiply;
        case 13:
            calcOperation = Operator.Divide;
        default:
            return;
        }
    }
    
    @IBAction func equalsClicked(_ sender: UIButton) {
        calculate();
    }
    
    func updateDisplay(number: String) {
        if(calcState == CalculationState.NewNumStarted) {
            if let num = labelResult.text {
                if num != "" {
                    firstValue = num;
                }
            }
            
            calcState = CalculationState.EnteringNum;
            
            labelResult.text = number;
        } else if(calcState == CalculationState.EnteringNum) {
            labelResult.text = labelResult.text! + number;
        }
    }

    func calculate() {
        if firstValue.isEmpty {
            return;
        }
        
        var result: String = "";
        
        switch calcOperation {
        case .Add:
            result = "\(Double(firstValue)! + Double(labelResult.text!)!)";
        case .Substract:
            result = "\(Double(firstValue)! - Double(labelResult.text!)!)";
        case .Multiply:
            result = "\(Double(firstValue)! * Double(labelResult.text!)!)";
        case .Divide:
            result = "\(Double(firstValue)! / Double(labelResult.text!)!)";
        case .Nothing:
            return;
        }
        
        labelResult.text = result;
        
        calcState = CalculationState.NewNumStarted;
    }
    
}

