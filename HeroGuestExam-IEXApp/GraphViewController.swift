//
//  GraphViewController.swift
//  HeroGuestExam-IEXApp
//
//  Created by Nelson Gonzalez on 5/23/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit
import ScrollableGraphView
import Charts


class GraphViewController: UIViewController{
    
    var symbols: [String]!
    var objetosNum: [Float] = []
    var myIndex = 0
    
    //Outlet
    
  

  
    @IBOutlet weak var barChartView: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //barChartView.chartDescription?.text = "Hola"
        
        symbols = ["HIBB", "PIRS", "DZSI", "CVCO", "APHA", "TSS", "PDVW", "HCLP", "EXPR", "SC"]
        let unitsSold = [29.6, 6.55, 15.59, 26.8, 16.85, 117.44, 50.99, 16.65, 11.68, 22.91]
        
        
        setChart(dataPoints: symbols, values: unitsSold)
       
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        
    
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: Double(i) , y: values[i])
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "\(symbols!)")
        //let chartDatap = BarChartData(xVals: months, dataSet: chartDataSet)
        
        let chartData = BarChartData(dataSet: chartDataSet)

       // let chartD = BarChart
        barChartView.data = chartData
        
    }
    
    
    
    
   
}
