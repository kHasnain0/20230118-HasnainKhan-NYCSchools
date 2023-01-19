//
//  Network.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by hasnain on 1/19/23.
//
import Alamofire
import Foundation
//dbn=?11X253
  class Client {
     
      private  let highSchoolURL =
      "https://data.cityofnewyork.us/resource/f9bf-2cp4"
      
      private  let testScoresURL =
      "https://data.cityofnewyork.us/resource/f9bf-2cp4"

      private static let sharedInstance  = Client()
          
          private init() {
              
          }
     
      
      
    //  let request = AF.request(url, method: .get)
         // 2
    // request.responseDecodable(of: DecodableType.self) { response in
  //       debugPrint("Response: \(response)")
    // }
      
     
      // The static method that controls access to the singleton
         // instance.
      public static func getInstance() -> Client {
            return sharedInstance
      }
      
      
      func getHighSchoolList() -> NSArray  {
          //struct DecodableType: Decodable {let Array: String}
          struct DecodableType<NSArray>: Decodable { }
          let headers: HTTPHeaders = [
              "Accept": "application/json"
          ]
          let parameters = ["dbn":"11X253"]
          let request = AF.request(highSchoolURL, method: .get, parameters: parameters, headers: headers)
            
          //let data = Data("data".utf8)
          //request.responseresponseDecodable(of: DecodableType.self) { response in
          //    debugPrint("Response: \(response)")
         // }
          
          //request.responseStreamDecodable(using decoder: DataDecoder = JSONDecoder()) { //stream in
          //    debugPrint("Response: \(in)")
          //}
          
        //  request.validate().responseData { response in
         //     debugPrint("Response: \(response)")
              
         // }
         // var arr :Array<String,String>
          request.responseDecodable(of: Array<Dictionary<String, String>>.self) { response in
            print(response)
          }
       
          return []
      }
      
      
           
    
}
