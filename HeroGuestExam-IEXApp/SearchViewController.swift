//
//  SearchViewController.swift
//  HeroGuestExam-IEXApp
//
//  Created by Nelson Gonzalez on 5/23/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class SearchViewController: UIViewController{
    
    //API Links
    let URL4use: String = "https://cloud.iexapis.com/stable/stock/market/list/gainers?token=pk_94213e6f1fe14ff2b177b2252f7cb20a"
    var myIndex = 0
    
    let example = "https://cloud-sse.iexapis.com/stable/stocksUS1Second?token=pk_94213e6f1fe14ff2b177b2252f7cb20a&symbols=aapl"
    
    //Using the const EXAMPLE, appears the following message: The requested data is not available to free tier accounts. Please upgrade for access to this data.
    
    //Screenshot provided in the ZIP
    
    //Couldn't make tests with any symbol, that's why this class is empty.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The requested data is not available to free tier accounts. Please upgrade for access to this data.")
    }
}
