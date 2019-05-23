//
//  ViewController.swift
//  HeroGuestExam-IEXApp
//
//  Created by Nelson Gonzalez on 5/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit
import Alamofire


class GainersViewController: UIViewController{
    
    
    //API Links
    let token: String = "pk_94213e6f1fe14ff2b177b2252f7cb20a"
    let URL4use: String = "https://cloud.iexapis.com/stable/stock/market/list/gainers?token=pk_94213e6f1fe14ff2b177b2252f7cb20a"
    var finalArray = [[String:Any]]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        obtenerDatos()
    }
    
   
    
    
    
    //Data Arrays
    var objetos: [[String: Any]] = [[:]]
    var symbol: [String] = []
    var companyName: [String] = []
    var calculationPrice: [String] = []
    var week52High: [NSNumber] = []
    
    
    //Function to retrieve data
    func obtenerDatos(){
    
        _ = request(URL4use).responseJSON { (datas) in
            
            if let jsonData = datas.result.value{
                
                let jsonObjects = jsonData as? [[String: Any]]
                
                for newObject in 0...jsonObjects!.count-1{
                    _ = jsonObjects![newObject]
                    self.objetos.append(jsonObjects![newObject])
                    
                    //JSONS
                    let jsonProductSymbol = jsonObjects![newObject]["symbol"]! as Any
                    let jsonProductCompanyName = jsonObjects![newObject]["companyName"]! as Any
                    let jsonProductCalculationPrice = jsonObjects![newObject]["calculationPrice"]! as Any
                    let jsonProductWeek52High = jsonObjects![newObject]["week52High"]! as Any
                    
                    //APPEND TO EACH ARRAY
                    self.symbol.append(jsonProductSymbol as! String)
                    self.companyName.append(jsonProductCompanyName as! String)
                    self.calculationPrice.append(jsonProductCalculationPrice as! String)
                    self.week52High.append(jsonProductWeek52High as! NSNumber)

                    
                }
                
                
                //Print test for dependencies
//                print(self.symbol)
//                print(self.companyName)
//                print(self.calculationPrice)
//                print(self.week52High)

                
                //TEST FOR EACH SUB "ARRAY"
                for numero in 0...9{
                    print(self.symbol[numero])
                    print(self.companyName[numero])
                    print(self.calculationPrice[numero])
                    print(self.week52High[numero])
                    print("")
                }
                
                
              
        }
        
        
        
    }

    

}
    
    

}


