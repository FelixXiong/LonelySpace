//
//  ViewController.swift
//  孤岛
//
//  Created by FelixXiong on 2017/8/9.
//  Copyright © 2017年 com.storypanda. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class HomeViewController: UIViewController,CLLocationManagerDelegate{
    
    //下为地图获取位置
    @IBOutlet weak var mapview: MKMapView!
    
    let manager = CLLocationManager()//创建manager跟踪用户位置
  
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        
    //方法的作用：存储所有数据包括用户的位置：location//提取用户的位置，创建变量“位置”，设置等于0，//该数组的第一元素，最近一段时间在变量的位置：location
    
     let location = locations[0]
    
    //对地图区域进行放大：span
     let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
     //创建用户位置或存储用户位置变量：mylocation                            //位置坐标点的纬度与经度
    
     let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude,location.coordinate.longitude)
    
     //结合跨度和区域变量的位置并设置地图区域
     let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation,span)
     mapview.setRegion(region,animated:true)
        
     self.mapview.showsUserLocation = true//显示蓝点
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //视图控制器的背景色
        self.view.backgroundColor = UIColor(red:247/255,green:245/255,blue:245/255,alpha:100)
        
        //设置导航栏图片
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "导航栏"), for: UIBarMetrics.default)
        
      manager.delegate = self //管理者是自我
      manager.desiredAccuracy = kCLLocationAccuracyBest //设置用户最好的精度
      manager.requestWhenInUseAuthorization() //用户在使用程序时授权请求
      manager.startUpdatingLocation() //更新位置更新
    }
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

}
