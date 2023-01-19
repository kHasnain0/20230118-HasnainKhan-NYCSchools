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
    
    
    //Constructor, thrown exeception if nil value
    init(dbn: String, school_name: String, location: String, school_email: String) throws{
        do{
            self.dbn = dbn
            self.school_name = school_name
            self.location = location
            self.school_email = school_email
        } catch {throw MyError.runtimeError(nilError)}
        
    }
    //Getter Methods
        public func getDbn() -> String {return self.dbn }
    
        public func getSchoolName() -> String {return self.school_name }
        
        public func getLocation() -> String {return self.location }
    
        public func getSchool_Email() -> String {return self.school_email }
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
