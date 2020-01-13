//
//  main.swift
//  Multiples_of_3_and_5
//
//  Created by Pierre Oosthuizen on 2020/01/13.
//  Copyright © 2020 Plouton Consulting. All rights reserved.
//

import Foundation

/* If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below 1000.
 */

func main() {
    
    let max = 1000
    var current = 1

    var multSum = 0

    while current < max {
        
        print ("Testing ", current)
        
        // Check for multiple of 3
        if (current%3 == 0 || current%5 == 0) {
            print (current, " is a multiple of 3")
            multSum += current
        }
        
        current += 1
    }

    print ("Sum of multiples are: ", multSum)
}
