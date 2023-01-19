//
//  ViewController.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by hasnain on 1/18/23.
//
import Alamofire
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let url = "https://data.cityofnewyork.us/resource/f9bf-2cp4.json?dbn=11X253"
       
       /* AF.request(url, method: .get).responseJSON { (response) in
            switch response.result{
            case .success:
                print(response.result)
                break
            case .failure:
                break
            }
        }
        */
        
        struct DecodableType: Decodable { let school_name: String }
        let request = AF.request(url, method: .get)
            // 2
        request.responseDecodable(of: DecodableType.self) { response in
            debugPrint("Response: \(response)")
        }
         
        
    }
    
}
        

