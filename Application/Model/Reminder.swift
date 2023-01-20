//
//  Reminder.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by user231915 on 1/19/23.
//

import Foundation





struct HighSchoolStructTest {
    
    var school_name: String
    
    var writing_score: String
    
    var reading_score: String
    
    var math_score: String
    
    var dbn: String
    
    var test_takers: String
    
    
   // var notes: String? = nil
    
   // var isComplete: Bool = false
}
    
#if DEBUG

extension HighSchoolStructTest {

    static var sampleData = [

        HighSchoolStructTest(school_name: "BRONX HIGH SCHOOL FOR WRITING AND COMMUNICATION ARTS",
                                              writing_score: "390", reading_score: "400",
                                              math_score: "357", dbn: "11X253", test_takers: "46")
                    
            
    ]

}

#endif


