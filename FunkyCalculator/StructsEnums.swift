//
//  StructEnums.swift
//  StructEnums
//
//  Created by Utsav Barnwal on 06/11/21.
//

import Foundation

enum Operator: String {
case Add = "+";
case Substract = "-";
case Multiply = "*";
case Divide = "/";
case Nothing = "";
}

enum CalculationState: String {
    case EnteringNum = "EnteringNum";
    case NewNumStarted = "NewNumStarted";
}
