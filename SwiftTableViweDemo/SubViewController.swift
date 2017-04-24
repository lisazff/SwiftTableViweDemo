//
//  SubViewController.swift
//  SwiftTableViweDemo
//
//  Created by lisa on 2017/3/20.
//  Copyright © 2017年 lisa. All rights reserved.
//


//在该类中写个tableView
import Foundation
import UIKit

class SubViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    var dataTable:UITableView!
    //定义全局变量
    var screenObject = UIScreen.main.bounds;
    var itemString=["昵称","账号","性别","地区","我的爱车"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "跳进子页面"
        initTableView()
    }
    
    func initTableView()  {
        let dataTableW:CGFloat = screenObject.width
        let dataTableH:CGFloat = screenObject.height
        let dataTableX:CGFloat = 0;
        let dataTabley:CGFloat = 0;
    
        
        dataTable = UITableView.init(frame: CGRect(x:dataTableX,y:dataTabley,width:dataTableW,height:dataTableH), style: UITableViewStyle.plain)
//        dataTable = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.plain)
        dataTable.delegate = self
        dataTable.dataSource = self
        dataTable.backgroundColor = UIColor.yellow
        self.view.addSubview(dataTable)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 1;
        }else{
            return 5;
        }
    }
    
    
    //1.3 返回行高
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        if(indexPath.section == 0){
            return 80;
        }else{
            return 55;
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "identifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
       
        if (cell == nil){
//            cell = UITableViewCell(style:UITableViewStyle.RawValue,reuse)
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: identifier);
        }
        
        if indexPath.section == 0 {
            cell?.textLabel?.text = "头像"
        }else{
            cell?.textLabel?.text = itemString[indexPath.row];
        }
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        return cell!
    }
}



















