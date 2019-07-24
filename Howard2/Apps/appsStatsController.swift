//
//  newsStatsController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 7/17/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import Charts

class appsStatsController: UIViewController {
    
    @IBOutlet weak var barChart: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var clicks:[Int] = UserDefaults.standard.array(forKey: "appCount") as! [Int]
        
        var appsNames = ["MM","PR","GC","LSN","YT","XP","GBG","HGLM","Mess","TTS","GBS","FSS","RMS","ESC","BW","HCMS","GMSA"]
        
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
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

