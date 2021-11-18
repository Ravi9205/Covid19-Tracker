//
//  StatsVC.swift
//  COVID-Tracker
//
//  Created by Ravi dwivedi on 15/06/21.
//  Copyright © 2021 Ravi dwivedi. All rights reserved.
//

import UIKit
import Charts

class StatsVC: UIViewController {
    
    @IBOutlet weak var tableVW:UITableView!
    
    //var statesData:[CasesTimeSery] = [];
    var statewise:[Statewise] = [];
    
    //var  latestData:[Welcome] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        title = "COVID-19 cases - India"
        fetchStatesList()
        view.backgroundColor = .black
        tableVW.backgroundColor = .black
        
    }
    
    
    func createGraphs(){
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height/1.5))
        headerView.clipsToBounds = true
        
        var entires :[BarChartDataEntry] = []
        
        let set = statewise.prefix(100)
        for index in 0..<set.count{
            let data = set[index].active
            entires.append(.init(x: Double(index), y: Double(data.count)))
        }
        
        let dataSet = BarChartDataSet(entries: entires)
        let data = BarChartData(dataSet: dataSet)
        dataSet.colors = ChartColorTemplates.material()
        
        let chart = BarChartView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height/1.5))
        chart.data = data
        headerView.addSubview(chart)
        
        tableVW.tableHeaderView = headerView
        
        
    }
    
    
    
    
    private func fetchStatesList() {
        APICaller.shared.getStateList { (result) in
            switch result {
            case.success(let states):
                // print(states)
                //let data = states.casesTimeSeries
                let statewise = states.statewise
                
//                for covidData in data {
//                    self.statesData.append(covidData)
//
//                }
                
                for stateWiseData in statewise{
                    self.statewise.append(stateWiseData)
                }
                
            self.reloadTableData()
            case.failure(let error ):
                print(error)
                
            }
        }
    }
    
    private func reloadTableData(){
        DispatchQueue.main.async {
            self.tableVW.reloadData()
            self.createGraphs()
        }
    }
}

extension StatsVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return statewise.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let  cell =  self.tableVW.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as? TableCell else { fatalError()}
        /// let data =
        cell.lbl_date.text =  self.statewise[indexPath.row].lastupdatedtime
        cell.lbl_totalCase.text = self.statewise[indexPath.row].state
        
       // cell.lbl_stateName.text = self.statewise[indexPath.row].state

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
    }
    
}
