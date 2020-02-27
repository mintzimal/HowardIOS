//
//  newsStatsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 7/17/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

//MARKED FOR REMOVAL

import UIKit
import Charts

class appsStatsController: UIViewController {
    
    @IBOutlet weak var barChart: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let clicks:[Int] = UserDefaults.standard.array(forKey: "appCount") as! [Int]
        
        let appsNames = ["MM","PR","GC","LSN","YT","XP","GBG","HGLM","Mess","TTS","GBS","FSS","RMS","ESC","BW","HCMS","GMSA"]
        
        var clickEntries = [ChartDataEntry]()
        
        var i = 0
        
        for click in clicks{
            let clickEntry = BarChartDataEntry(x: Double(i), y:Double(click), data: appsNames)
            
            clickEntries.append(clickEntry)
            
            i += 1
            
        }
        
        let chartDataSet = BarChartDataSet(entries: clickEntries, label: "Usage History")
        
        chartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        
        let chartData:BarChartData = BarChartData()
        chartData.addDataSet(chartDataSet)
        barChart.data = chartData
        
        barChart.xAxis.valueFormatter = IndexAxisValueFormatter(values: appsNames)
        barChart.xAxis.granularity = 1
        
        barChart.zoomIn()
        barChart.zoomIn()

    }
}

