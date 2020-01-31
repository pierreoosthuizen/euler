/*
 Problem Statement:
 The prime factors of 13195 are 5, 7, 13 and 29.

 What is the largest prime factor of the number 600,851,475,143?
 */

//Here is a table of all prime numbers up to 1,000:
//
//  2    3    5    7    11    13    17    19    23
//29    31    37    41    43    47    53    59    61    67
//71    73    79    83    89    97    101    103    107    109
//113    127    131    137    139    149    151    157    163    167
//173    179    181    191    193    197    199    211    223    227
//229    233    239    241    251    257    263    269    271    277
//281    283    293    307    311    313    317    331    337    347
//349    353    359    367    373    379    383    389    397    401
//409    419    421    431    433    439    443    449    457    461
//463    467    479    487    491    499    503    509    521    523
//541    547    557    563    569    571    577    587    593    599
//601    607    613    617    619    631    641    643    647    653
//659    661    673    677    683    691    701    709    719    727
//733    739    743    751    757    761    769    773    787    797
//809    811    821    823    827    829    839    853    857    859
//863    877    881    883    887    907    911    919    929    937
//941    947    953    967    971    977    983    991    997


import Foundation

//let targetNumber = 1000
//let targetNumber = 600851475143
let targetNumber = 100

// Only the bottom values are needed to calculate the factors
let median = targetNumber / 2

let processes = 4

var factors: [Int] = [1, targetNumber]

public func main() {
    calculateFactors()
    print(factors)
}

// Calculates the factors of the target number
private func calculateFactors() {
    
    var counter = 0
    var limit = median
    while (counter < limit) {

        if (targetNumber % counter == 0) {
            factors.append(counter)
            factors.append(targetNumber / counter)
            
            debugPrint (counter)
            print (targetNumber / counter)
            limit = targetNumber / counter
        }
    
        counter += 1
    }

    main()
}

