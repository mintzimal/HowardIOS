//
//  GeneralSettings.swift
//  Howard2
//
//  Created by Aaron Wise on 8/20/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import Foundation
class GeneralSettings{
    
    struct SettingsBundleKeys {
        
        static let disableNews = "disableNews"
        
    }
    
    class func checkAndExecuteSettings(){
        if UserDefaults.standard.bool(forKey: SettingsBundleKeys.disableNews){
            
            
            
        }
        
        
        
        
        
    }
    
    
    
    
    
    
}
