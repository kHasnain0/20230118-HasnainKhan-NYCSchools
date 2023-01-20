//
//  Reminder.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by user231915 on 1/19/23.
//

import Foundation





struct Reminder {
    
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

extension Reminder {

    static var sampleData = [

        Reminder(school_name: "NY Public",
                 writing_score: "", reading_score: "",
                 math_score: "", dbn: "", test_takers: "")
                    
            
    ]

}

#endif


