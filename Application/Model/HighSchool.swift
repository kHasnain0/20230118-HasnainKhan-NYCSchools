//
//  HighSchool.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by hasnain on 1/19/23.
//

import SwiftyJSON
import Alamofire
import Foundation

import Foundation

class HighSchool {
    
    private enum MyError: Error {case runtimeError(String)}
    private let nilError = "nil value not possible"
    private var dbn: String
    private var school_name: String
    private var location: String
    private var school_email: String
    private var grades: Scores
    
    
    //Constructor, thrown exeception if nil value
    init(dbn: String, school_name: String, location: String, school_email: String) throws{
        do{
            self.dbn = dbn
            self.school_name = school_name
            self.location = location
            self.school_email = school_email
            self.grades = Scores()
        } catch {throw MyError.runtimeError(nilError)}
        
    }
    //Getter Methods
    public func getDbn() -> String {return self.dbn }
    
    public func getSchoolName() -> String {return self.school_name }
    
    public func getLocation() -> String {return self.location }
    
    public func getSchool_Email() -> String {return self.school_email }
    
    //set and get high school scores
    private struct Scores {
        var sat_critical_reading_avg_score: String?
        var sat_math_avg_score: String?
        var sat_writing_avg_score: String?
    }
    
    public func setSatMathScore(math: String?) throws {
        if math != nil {self.grades.sat_math_avg_score = math}
        else {throw MyError.runtimeError(nilError) }
    }
    
    public func setSatReadinghScore(read: String?) throws {
        if read != nil {self.grades.sat_critical_reading_avg_score = read}
        else {throw MyError.runtimeError(nilError) }
    }
    
    public func setSatWritingScore(write: String?) throws {
        if write != nil {self.grades.sat_writing_avg_score = write}
        else {throw MyError.runtimeError(nilError) }
    }
    
    
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
