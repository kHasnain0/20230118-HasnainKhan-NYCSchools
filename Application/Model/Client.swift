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
    
    private var fidTable = [["dbn":"01M292"]
                                   ,["dbn":"01M448"]
                                   ,["dbn":"01M450"]
                                   ,["dbn":"01M458"]
                                   ,["dbn":"01M509"]
                                   ,["dbn":"01M515"]
                                   ,["dbn":"01M539"]
                                   ,["dbn":"01M650"]
                                   ,["dbn":"01M696"]
                                   ,["dbn":"02M047"]
                                   ,["dbn":"02M288"]
                                   ,["dbn":"02M294"]
                                   ,["dbn":"02M296"]
                                   ,["dbn":"02M298"]
                                   ,["dbn":"02M300"]
                                   ,["dbn":"02M303"]
                                   ,["dbn":"02M305"]
                                   ,["dbn":"02M308"]
                                   ,["dbn":"02M313"]
                                   ,["dbn":"02M316"]
                                   ,["dbn":"02M374"]
                                   ,["dbn":"02M376"]
                                   ,["dbn":"02M392"]
                                   ,["dbn":"02M393"]
                                   ,["dbn":"02M394"]
                                   ,["dbn":"02M399"]
                                   ,["dbn":"02M400"]
                                   ,["dbn":"02M407"]
                                   ,["dbn":"02M408"]
                                   ,["dbn":"02M411"]
                                   ,["dbn":"02M412"]
                                   ,["dbn":"02M413"]
                                   ,["dbn":"02M414"]
                                   ,["dbn":"02M416"]
                                   ,["dbn":"02M418"]
                                   ,["dbn":"02M419"]
                                   ,["dbn":"02M420"]
                                   ,["dbn":"02M425"]
                                   ,["dbn":"02M427"]
                                   ,["dbn":"02M429"]
                                   ,["dbn":"02M437"]
                                   ,["dbn":"02M438"]
                                   ,["dbn":"02M439"]
                                   ,["dbn":"02M440"]
                                   ,["dbn":"02M449"]
                                   ,["dbn":"02M459"]
                                   ,["dbn":"02M460"]
                                   ,["dbn":"02M473"]
                                   ,["dbn":"02M475"]
                                   ,["dbn":"02M489"]
                                   ,["dbn":"02M500"]
                                   ,["dbn":"02M519"]
                                   ,["dbn":"02M520"]
                                   ,["dbn":"02M529"]
                                   ,["dbn":"02M531"]
                                   ,["dbn":"02M542"]
                                   ,["dbn":"02M543"]
                                   ,["dbn":"02M544"]
                                   ,["dbn":"02M545"]
                                   ,["dbn":"02M550"]
                                   ,["dbn":"02M551"]
                                   ,["dbn":"02M560"]
                                   ,["dbn":"02M565"]
                                   ,["dbn":"02M570"]
                                   ,["dbn":"02M575"]
                                   ,["dbn":"02M580"]
                                   ,["dbn":"02M586"]
                                   ,["dbn":"02M600"]
                                   ,["dbn":"02M605"]
                                   ,["dbn":"02M615"]
                                   ,["dbn":"02M620"]
                                   ,["dbn":"02M625"]
                                   ,["dbn":"02M630"]
                                   ,["dbn":"02M655"]
                                   ,["dbn":"03M283"]
                                   ,["dbn":"03M299"]
                                   ,["dbn":"03M307"]
                                   ,["dbn":"03M402"]
                                   ,["dbn":"03M403"]
                                   ,["dbn":"03M404"]
                                   ,["dbn":"03M415"]
                                   ,["dbn":"03M417"]
                                   ,["dbn":"03M470"]
                                   ,["dbn":"03M479"]
                                   ,["dbn":"03M485"]
                                   ,["dbn":"03M492"]
                                   ,["dbn":"03M494"]
                                   ,["dbn":"03M505"]
                                   ,["dbn":"03M541"]
                                   ,["dbn":"03M577"]
                                   ,["dbn":"03M860"]
                                   ,["dbn":"04M409"]
                                   ,["dbn":"04M435"]
                                   ,["dbn":"04M495"]
                                   ,["dbn":"04M555"]
                                   ,["dbn":"04M610"]
                                   ,["dbn":"04M635"]
                                   ,["dbn":"04M680"]
                                   ,["dbn":"05M285"]
                                   ,["dbn":"05M304"]
                                   ,["dbn":"05M362"]
                                   ,["dbn":"05M367"]
                                   ,["dbn":"05M369"]
                                   ,["dbn":"05M469"]
                                   ,["dbn":"05M499"]
                                   ,["dbn":"05M670"]
                                   ,["dbn":"05M685"]
                                   ,["dbn":"05M692"]
                                   ,["dbn":"06M293"]
                                   ,["dbn":"06M346"]
                                   ,["dbn":"06M348"]
                                   ,["dbn":"06M423"]
                                   ,["dbn":"06M457"]
                                   ,["dbn":"06M462"]
                                   ,["dbn":"06M463"]
                                   ,["dbn":"06M467"]
                                   ,["dbn":"06M468"]
                                   ,["dbn":"06M540"]
                                   ,["dbn":"06M552"]
                                   ,["dbn":"07X221"]
                                   ,["dbn":"07X321"]
                                   ,["dbn":"07X334"]
                                   ,["dbn":"07X379"]
                                   ,["dbn":"07X381"]
                                   ,["dbn":"07X427"]
                                   ,["dbn":"07X473"]
                                   ,["dbn":"07X495"]
                                   ,["dbn":"07X500"]
                                   ,["dbn":"07X520"]
                                   ,["dbn":"07X527"]
                                   ,["dbn":"07X547"]
                                   ,["dbn":"07X548"]
                                   ,["dbn":"07X551"]
                                   ,["dbn":"07X600"]
                                   ,["dbn":"07X655"]
                                   ,["dbn":"07X670"]
                                   ,["dbn":"08X269"]
                                   ,["dbn":"08X282"]
                                   ,["dbn":"08X293"]
                                   ,["dbn":"08X295"]
                                   ,["dbn":"08X305"]
                                   ,["dbn":"08X312"]
                                   ,["dbn":"08X332"]
                                   ,["dbn":"08X367"]
                                   ,["dbn":"08X376"]
                                   ,["dbn":"08X377"]
                                   ,["dbn":"08X405"]
                                   ,["dbn":"08X408"]
                                   ,["dbn":"08X432"]
                                   ,["dbn":"08X452"]
                                   ,["dbn":"08X507"]
                                   ,["dbn":"08X519"]
                                   ,["dbn":"08X530"]
                                   ,["dbn":"08X537"]
                                   ,["dbn":"08X540"]
                                   ,["dbn":"08X560"]
                                   ,["dbn":"08X650"]
                                   ,["dbn":"09X227"]
                                   ,["dbn":"09X231"]
                                   ,["dbn":"09X239"]
                                   ,["dbn":"09X241"]
                                   ,["dbn":"09X250"]
                                   ,["dbn":"09X252"]
                                   ,["dbn":"09X260"]
                                   ,["dbn":"09X263"]
                                   ,["dbn":"09X276"]
                                   ,["dbn":"09X297"]
                                   ,["dbn":"09X324"]
                                   ,["dbn":"09X329"]
                                   ,["dbn":"09X365"]
                                   ,["dbn":"09X403"]
                                   ,["dbn":"09X404"]
                                   ,["dbn":"09X412"]
                                   ,["dbn":"09X413"]
                                   ,["dbn":"09X414"]
                                   ,["dbn":"09X505"]
                                   ,["dbn":"09X517"]
                                   ,["dbn":"09X525"]
                                   ,["dbn":"09X543"]
                                   ,["dbn":"10X141"]
                                   ,["dbn":"10X213"]
                                   ,["dbn":"10X225"]
                                   ,["dbn":"10X237"]
                                   ,["dbn":"10X243"]
                                   ,["dbn":"10X268"]
                                   ,["dbn":"10X284"]
                                   ,["dbn":"10X319"]
                                   ,["dbn":"10X342"]
                                   ,["dbn":"10X368"]
                                   ,["dbn":"10X374"]
                                   ,["dbn":"10X397"]
                                   ,["dbn":"10X433"]
                                   ,["dbn":"10X434"]
                                   ,["dbn":"10X437"]
                                   ,["dbn":"10X438"]
                                   ,["dbn":"10X439"]
                                   ,["dbn":"10X440"]
                                   ,["dbn":"10X442"]
                                   ,["dbn":"10X445"]
                                   ,["dbn":"10X475"]
                                   ,["dbn":"10X477"]
                                   ,["dbn":"10X478"]
                                   ,["dbn":"10X546"]
                                   ,["dbn":"10X549"]
                                   ,["dbn":"10X660"]
                                   ,["dbn":"10X667"]
                                   ,["dbn":"10X696"]
                                   ,["dbn":"11X249"]
                                   ,["dbn":"11X253"]
                                   ,["dbn":"11X265"]
                                   ,["dbn":"11X270"]
                                   ,["dbn":"11X275"]
                                   ,["dbn":"11X288"]
                                   ,["dbn":"11X290"]
                                   ,["dbn":"11X299"]
                                   ,["dbn":"11X415"]
                                   ,["dbn":"11X417"]
                                   ,["dbn":"11X418"]
                                   ,["dbn":"11X455"]
                                   ,["dbn":"11X456"]
                                   ,["dbn":"11X513"]
                                   ,["dbn":"11X514"]
                                   ,["dbn":"11X541"]
                                   ,["dbn":"11X542"]
                                   ,["dbn":"11X544"]
                                   ,["dbn":"11X545"]
                                   ,["dbn":"12X245"]
                                   ,["dbn":"12X248"]
                                   ,["dbn":"12X251"]
                                   ,["dbn":"12X262"]
                                   ,["dbn":"12X267"]
                                   ,["dbn":"12X271"]
                                   ,["dbn":"12X278"]
                                   ,["dbn":"12X388"]
                                   ,["dbn":"12X428"]
                                   ,["dbn":"12X446"]
                                   ,["dbn":"12X478"]
                                   ,["dbn":"12X479"]
                                   ,["dbn":"12X480"]
                                   ,["dbn":"12X550"]
                                   ,["dbn":"12X682"]
                                   ,["dbn":"12X684"]
                                   ,["dbn":"12X690"]
                                   ,["dbn":"12X692"]
                                   ,["dbn":"13K265"]
                                   ,["dbn":"13K336"]
                                   ,["dbn":"13K350"]
                                   ,["dbn":"13K412"]
                                   ,["dbn":"13K419"]
                                   ,["dbn":"13K430"]
                                   ,["dbn":"13K439"]
                                   ,["dbn":"13K483"]
                                   ,["dbn":"13K499"]
                                   ,["dbn":"13K509"]
                                   ,["dbn":"13K527"]
                                   ,["dbn":"13K553"]
                                   ,["dbn":"13K575"]
                                   ,["dbn":"13K595"]
                                   ,["dbn":"13K605"]
                                   ,["dbn":"13K616"]
                                   ,["dbn":"13K670"]
                                   ,["dbn":"13K674"]
                                   ,["dbn":"14K071"]
                                   ,["dbn":"14K322"]
                                   ,["dbn":"14K404"]
                                   ,["dbn":"14K449"]
                                   ,["dbn":"14K454"]
                                   ,["dbn":"14K474"]
                                   ,["dbn":"14K477"]
                                   ,["dbn":"14K478"]
                                   ,["dbn":"14K488"]
                                   ,["dbn":"14K558"]
                                   ,["dbn":"14K561"]
                                   ,["dbn":"14K586"]
                                   ,["dbn":"14K610"]
                                   ,["dbn":"14K632"]
                                   ,["dbn":"14K685"]
                                   ,["dbn":"14K923"]
                                   ,["dbn":"15K429"]
                                   ,["dbn":"15K448"]
                                   ,["dbn":"15K462"]
                                   ,["dbn":"15K463"]
                                   ,["dbn":"15K464"]
                                   ,["dbn":"15K497"]
                                   ,["dbn":"15K519"]
                                   ,["dbn":"15K520"]
                                   ,["dbn":"15K529"]
                                   ,["dbn":"15K530"]
                                   ,["dbn":"15K656"]
                                   ,["dbn":"15K667"]
                                   ,["dbn":"15K698"]
                                   ,["dbn":"16K393"]
                                   ,["dbn":"16K455"]
                                   ,["dbn":"16K498"]
                                   ,["dbn":"16K594"]
                                   ,["dbn":"16K688"]
                                   ,["dbn":"17K382"]
                                   ,["dbn":"17K408"]
                                   ,["dbn":"17K467"]
                                   ,["dbn":"17K489"]
                                   ,["dbn":"17K524"]
                                   ,["dbn":"17K528"]
                                   ,["dbn":"17K531"]
                                   ,["dbn":"17K533"]
                                   ,["dbn":"17K537"]
                                   ,["dbn":"17K539"]
                                   ,["dbn":"17K543"]
                                   ,["dbn":"17K544"]
                                   ,["dbn":"17K546"]
                                   ,["dbn":"17K547"]
                                   ,["dbn":"17K548"]
                                   ,["dbn":"17K568"]
                                   ,["dbn":"17K590"]
                                   ,["dbn":"17K600"]
                                   ,["dbn":"17K625"]
                                   ,["dbn":"17K751"]
                                   ,["dbn":"18K563"]
                                   ,["dbn":"18K566"]
                                   ,["dbn":"18K567"]
                                   ,["dbn":"18K569"]
                                   ,["dbn":"18K576"]
                                   ,["dbn":"18K578"]
                                   ,["dbn":"18K589"]
                                   ,["dbn":"18K617"]
                                   ,["dbn":"18K629"]
                                   ,["dbn":"18K633"]
                                   ,["dbn":"18K635"]
                                   ,["dbn":"18K637"]
                                   ,["dbn":"18K642"]
                                   ,["dbn":"18K673"]
                                   ,["dbn":"19K409"]
                                   ,["dbn":"19K420"]
                                   ,["dbn":"19K431"]
                                   ,["dbn":"19K502"]
                                   ,["dbn":"19K504"]
                                   ,["dbn":"19K507"]
                                   ,["dbn":"19K510"]
                                   ,["dbn":"19K583"]
                                   ,["dbn":"19K615"]
                                   ,["dbn":"19K618"]
                                   ,["dbn":"19K639"]
                                   ,["dbn":"19K659"]
                                   ,["dbn":"19K660"]
                                   ,["dbn":"19K683"]
                                   ,["dbn":"20K445"]
                                   ,["dbn":"20K485"]
                                   ,["dbn":"20K490"]
                                   ,["dbn":"20K505"]
                                   ,["dbn":"20K609"]
                                   ,["dbn":"20K658"]
                                   ,["dbn":"21K337"]
                                   ,["dbn":"21K344"]
                                   ,["dbn":"21K348"]
                                   ,["dbn":"21K410"]
                                   ,["dbn":"21K412/21K411"]
                                   ,["dbn":"21K468"]
                                   ,["dbn":"21K525"]
                                   ,["dbn":"21K540"]
                                   ,["dbn":"21K559"]
                                   ,["dbn":"21K572"]
                                   ,["dbn":"21K620"]
                                   ,["dbn":"21K690"]
                                   ,["dbn":"21K728"]
                                   ,["dbn":"22K405"]
                                   ,["dbn":"22K425"]
                                   ,["dbn":"22K495"]
                                   ,["dbn":"22K535"]
                                   ,["dbn":"22K555"]
                                   ,["dbn":"23K493"]
                                   ,["dbn":"23K514"]
                                   ,["dbn":"23K643"]
                                   ,["dbn":"23K646"]
                                   ,["dbn":"23K647"]
                                   ,["dbn":"23K697"]
                                   ,["dbn":"24Q264"]
                                   ,["dbn":"24Q267"]
                                   ,["dbn":"24Q293"]
                                   ,["dbn":"24Q296"]
                                   ,["dbn":"24Q299"]
                                   ,["dbn":"24Q455"]
                                   ,["dbn":"24Q457"]
                                   ,["dbn":"24Q485"]
                                   ,["dbn":"24Q520"]
                                   ,["dbn":"24Q530"]
                                   ,["dbn":"24Q550"]
                                   ,["dbn":"24Q560"]
                                   ,["dbn":"24Q600"]
                                   ,["dbn":"24Q610"]
                                   ,["dbn":"24Q744"]
                                   ,["dbn":"25Q252"]
                                   ,["dbn":"25Q263"]
                                   ,["dbn":"25Q281"]
                                   ,["dbn":"25Q285"]
                                   ,["dbn":"25Q425"]
                                   ,["dbn":"25Q460"]
                                   ,["dbn":"25Q467"]
                                   ,["dbn":"25Q525"]
                                   ,["dbn":"25Q540"]
                                   ,["dbn":"25Q670"]
                                   ,["dbn":"25Q792"]
                                   ,["dbn":"26Q415"]
                                   ,["dbn":"26Q430"]
                                   ,["dbn":"26Q435"]
                                   ,["dbn":"26Q495"]
                                   ,["dbn":"26Q566"]
                                   ,["dbn":"27Q260"]
                                   ,["dbn":"27Q262"]
                                   ,["dbn":"27Q302"]
                                   ,["dbn":"27Q308"]
                                   ,["dbn":"27Q309"]
                                   ,["dbn":"27Q323"]
                                   ,["dbn":"27Q400"]
                                   ,["dbn":"27Q410"]
                                   ,["dbn":"27Q475"]
                                   ,["dbn":"27Q480"]
                                   ,["dbn":"27Q650"]
                                   ,["dbn":"28Q284"]
                                   ,["dbn":"28Q310"]
                                   ,["dbn":"28Q325"]
                                   ,["dbn":"28Q338"]
                                   ,["dbn":"28Q350"]
                                   ,["dbn":"28Q440"]
                                   ,["dbn":"28Q470"]
                                   ,["dbn":"28Q505"]
                                   ,["dbn":"28Q620"]
                                   ,["dbn":"28Q680"]
                                   ,["dbn":"28Q686"]
                                   ,["dbn":"28Q687"]
                                   ,["dbn":"28Q690"]
                                   ,["dbn":"28Q896"]
                                   ,["dbn":"29Q248"]
                                   ,["dbn":"29Q259"]
                                   ,["dbn":"29Q265"]
                                   ,["dbn":"29Q272"]
                                   ,["dbn":"29Q283"]
                                   ,["dbn":"29Q326"]
                                   ,["dbn":"29Q492"]
                                   ,["dbn":"29Q494"]
                                   ,["dbn":"29Q496"]
                                   ,["dbn":"29Q498"]
                                   ,["dbn":"30Q286"]
                                   ,["dbn":"30Q301"]
                                   ,["dbn":"30Q445"]
                                   ,["dbn":"30Q450"]
                                   ,["dbn":"30Q501"]
                                   ,["dbn":"30Q502"]
                                   ,["dbn":"30Q555"]
                                   ,["dbn":"30Q575"]
                                   ,["dbn":"30Q580"]
                                   ,["dbn":"31R047"]
                                   ,["dbn":"31R064"]
                                   ,["dbn":"31R080"]
                                   ,["dbn":"31R440"]
                                   ,["dbn":"31R445"]
                                   ,["dbn":"31R450"]
                                   ,["dbn":"31R455"]
                                   ,["dbn":"31R460"]
                                   ,["dbn":"31R470"]
                                   ,["dbn":"31R600"]
                                   ,["dbn":"31R605"]
                                   ,["dbn":"31R607"]
                                   ,["dbn":"32K403"]
                                   ,["dbn":"32K545"]
                                   ,["dbn":"32K549"]
                                   ,["dbn":"32K552"]
                                   ,["dbn":"32K554"]
                                   ,["dbn":"32K556"]
                                   ,["dbn":"32K564"]
                                   ,["dbn":"75K371"]
                                   ,["dbn":"75M035"]
                                   ,["dbn":"75Q256"]
                                   ,["dbn":"75Q811"]
                                   ,["dbn":"75R025"]
                                   ,["dbn":"75X012"]
                                   ,["dbn":"75X754"]
                                   ,["dbn":"79M645"]
                                   ,["dbn":"79Q950"]
                                   ,["dbn":"79X490"]]
    
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
    
    private func callServer(url: String, parameters: Parameters, accept: String ) -> DataRequest{
        
        var headers: HTTPHeaders?
        
        switch accept {
        case "json":
            headers = ["Accept": "application/json"]
        default:
            print("error: what is the accept? JSON?")
        }
        
       // let parameters = ["dbn":"11X253"]
        //let parameters = ["$select":"dbn"]
        
        //let parameters = ForeignID().
        //let parameters = ["dbn":"11X253"]
        return AF.request(url, method: .get, parameters: parameters, headers: headers)
        
    }
    
    
    func getHighSchoolJSON(inParam: Parameters) -> JSON {
        
        var request = callServer(url: testScoresURL, parameters: inParam,  accept: "json")
   
        var toReturn = JSON(0)
        request.responseJSON { response in
            switch response.result {
            case .success(let value):
                    let json = JSON(value)
                    print("JSON: \(json)")
                    toReturn = json
                    
            case .failure(let error):
                print(error)
            }
        }
     
        return toReturn
    }
    
    func createHighSchoolList(inParam: Parameters) -> HighSchoolFactory{
       var json = getHighSchoolJSON(inParam: inParam)
        var hsf = HighSchoolFactory()
        hsf.addHighSchool(json: json)
                    
        return hsf
        
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
      



