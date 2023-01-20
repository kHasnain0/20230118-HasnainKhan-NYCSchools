//
//  ForeignID.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by user231915 on 1/19/23.
//
import SwiftyJSON
import Foundation


class HighSchoolFactory{
    
    
    
    
    private var highSchoolList: [HighSchoolStruct]
    
    init(){
        self.highSchoolList = []
    }
    
    
    public func addHighSchool (json: JSON) {
        
        let dbn = json["dbn"].stringValue
        let school_name = json["school_name"].stringValue
        let math = json["school_nat_math_avg_score"].stringValue
        let writing = json["sat_writing_avg_score"].stringValue
        let reading = json["sat_critical_reading_avg_score"].stringValue
        let takers = json["num_of_sat_test_takers"].stringValue
        
        
        var toAdd = HighSchoolStruct(school_name: school_name,
                                              writing_score: writing, reading_score: reading,
                                              math_score: math, dbn: dbn, test_takers: takers)
        
        highSchoolList.append(toAdd)
        
        
    }
   
    public func getList() ->[HighSchoolStruct]{
       return self.highSchoolList
    }
    
}
