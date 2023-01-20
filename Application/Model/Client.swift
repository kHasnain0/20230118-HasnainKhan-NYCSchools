//
//  Network.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by hasnain on 1/19/23.
//
import SwiftyJSON
import Alamofire
import Foundation
 
//dbn=?11X253
class Client {
    
    
    private  let highSchoolURL =
    "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
    
    private  let testScoresURL =
    "https://data.cityofnewyork.us/resource/f9bf-2cp4.json"
    
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
    
    private func callServer(url: String, accept: String ) -> DataRequest{
        
        var headers: HTTPHeaders?
        
        switch accept {
        case "json":
            headers = ["Accept": "application/json"]
        default:
            print("error: what is the accept? JSON?")
        }
        
       // let parameters = ["dbn":"11X253"]
        //let parameters = ["$select":"dbn"]
        let parameters = ["dbn":"11X253"]
        let parameters = ForeignID().
       
        return AF.request(url, method: .get, parameters: parameters, headers: headers)
        
    }
    
    
    func getHighSchoolList() -> NSArray{
        struct highSchool: Decodable {let school_name: String }
        
      //  struct dataSet: Decodable{let data: [HighSchool]}
        
        var request = callServer(url: testScoresURL,  accept: "json")
      /*
        request.responseDecodable(of: dataSet.self, queue: .main, decoder: JSONDecoder()) { response in
            
            switch response.result {
            case let .success(data):
                // success
                print(data)
            case let .failure(error):
                // error
                print(error.localizedDescription)
                
            }
        }
           */
        var jsonObj: JSON
        var result = [2,1]
        request.responseJSON { response in
            switch response.result {
               case .success(let value):
                    let json = JSON(value)
                   // jsonObj = json
                   print("JSON: \(json)")
               case .failure(let error):
                   print(error)
               }
        }
        
         
        
        return result as NSArray
    }
    
    /*
    func getHighSchoolList() -> NSArray  {
        //struct DecodableType: Decodable {let Array: String}
      //  struct DecodableType : Decodable
       // { }
        
      //  let headers: HTTPHeaders = [
       //     "Accept": "application/json"
      //  ]
        //let parameters = ["dbn":"11X253"]
        let request = callServer(highSchoolURL, "json")
        
        
        
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
        // request.responseDecodable(of: DecodableType.self) { response in
        //   print(response)
        //}
        
        struct Dataset: Decodable {

            var data: [SchoolData]

            }
        
        struct SchoolData: Decodable {
            
            var school_name: String //school name
            var dbn: String //dbn
  
        }
        
      //  request.responseJSON{ response in
      //     print(response)
      //  }
        
            
       // print(request)
      /*  var indata : Dataset?
        request.responseDecodable(of: Dataset.self) { response in
            if response.value != nil{
                indata = response.value
                print("success")
            }
            else{
                print("fail")
            }
        }*/
            
      
        
        return []
            
        }
     */
        
        
        
        
    
        
}
      



