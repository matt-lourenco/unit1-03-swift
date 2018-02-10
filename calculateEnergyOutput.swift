//
//  calculateEnergyOutput.swift
//  This program calculates the energy output if you convert the mass of an,
//      object into energy.
//
//  Created by Matthew Lourenco on 10/02/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

import Foundation

let speedOfLight: Double = 2.998 * pow(10, 8)
var input: String?
var massOfObject: Double = 0.0
var energy: Double = 0.0

//get mass from user
while true {
	print("Enter the mass of the object in grams: ")
    input = readLine(strippingNewline: true)
    //check if input is a valid number
	if let check = Double(input!), check != nil {
		massOfObject = Double(input!)!
		energy = massOfObject * pow(speedOfLight, 2)
		print("The amount of energy released from \(massOfObject) g of "
			+ "matter is \(energy) J.")
		break
	} else {
		print("Please enter a number")
	}
}
