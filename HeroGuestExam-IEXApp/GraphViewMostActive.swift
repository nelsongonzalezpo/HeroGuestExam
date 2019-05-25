//
//  GraphViewMostActive.swift
//  HeroGuestExam-IEXApp
//
//  Created by Nelson Gonzalez on 5/24/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import Charts

class GraphViewMostActive: UIViewController{
    
    var symbols: [String]!
    var objetosNum: [Float] = []
    var myIndex = 0
    
    //Outlet
    
    
    
    @IBOutlet weak var barChartView2: BarChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        symbols =  ["GE", "AMD", "CHK", "BAC", "SNAP", "AVP", "ECA", "FL", "INTC", "HPE"]
        let unitsSold = [14.72, 34.14, 5.6, 31.91, 14.47, 3.98, 14.28, 68, 59.59, 17.59]
        
        
        setChart(dataPoints: symbols, values: unitsSold)
        
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView2.noDataText = "You need to provide data for the chart."
        
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: Double(i) , y: values[i])
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "\(symbols!)")
        
        let chartData = BarChartData(dataSet: chartDataSet)
        
        // let chartD = BarChart
        barChartView2.data = chartData
        
    }
    
    
    
    
    
}
