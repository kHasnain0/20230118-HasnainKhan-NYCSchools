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
                             math_score: "357", dbn: "11X253", test_takers: "46"),
        
        HighSchoolStructTest(school_name: "HENRY STREET SCHOOL FOR INTERNATIONAL STUDIES",
                                              writing_score: "364", reading_score: "355",
                                              math_score: "404", dbn: "01M292", test_takers: "29"),
        
        HighSchoolStructTest(school_name: "UNIVERSITY NEIGHBORHOOD HIGH SCHOOL",
                                              writing_score: "366", reading_score: "383",
                                              math_score: "423", dbn: "01M448", test_takers: "91"),
        
        HighSchoolStructTest(school_name: "EAST SIDE COMMUNITY SCHOOL",
                                              writing_score: "370", reading_score: "377",
                                              math_score: "402", dbn: "01M450", test_takers: "70"),
        
        HighSchoolStructTest(school_name: "FORSYTH SATELLITE ACADEMY",
                                              writing_score: "359", reading_score: "414",
                                              math_score: "401", dbn: "01M458", test_takers: "7"),
        
        HighSchoolStructTest(school_name: "LOWER EAST SIDE PREPARATORY HIGH SCHOOL",
                                              writing_score: "316", reading_score: "332",
                                              math_score: "557", dbn: "01M515", test_takers: "112")
                    
            
    ]

}

#endif


