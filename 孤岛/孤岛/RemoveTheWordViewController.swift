//
//  RemoveTheWord.swift
//  孤岛
//
//  Created by FelixXiong on 2017/8/13.
//  Copyright © 2017年 com.storypanda. All rights reserved.
//

import Foundation
import UIKit

class RemoveTheWordViewController:UIViewController
{
    @IBOutlet weak var BackButton: UIButton!
    @IBAction func BackButtontapped(_ sender: Any) {
        
        let _ = navigationController?.popToRootViewController(animated: true)
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        //视图控制器的背景色
        self.view.backgroundColor = UIColor(red:247/255,green:245/255,blue:245/255,alpha:100)
    }
}
