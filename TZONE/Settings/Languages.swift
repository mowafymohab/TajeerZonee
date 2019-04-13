//
//  Languages.swift
//  TZONE
//
//  Created by MOHAB on 3/30/19.
//  Copyright © 2019 AmrSobhy. All rights reserved.
//

import Foundation

class Languages {
    
    class func Currentlanguage() -> String {
        
        
        let def = UserDefaults.standard
        
        
        
         let lang = def.object(forKey: "AppleLanguages") as? NSArray
        
        let firstlang = lang?.firstObject as? String
            
        
        return firstlang!
        
   
    }
    class func setAppLanguage(Lang:String){
        
        
        let def = UserDefaults.standard
        def.set([Lang , Currentlanguage()], forKey: "AppleLanguages")
        def.synchronize()
        
        
    }
    
}
