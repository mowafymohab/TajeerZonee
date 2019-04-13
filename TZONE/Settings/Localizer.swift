//
//  Localizer.swift
//  TZONE
//
//  Created by MOHAB on 3/30/19.
//  Copyright © 2019 AmrSobhy. All rights reserved.
//

import UIKit



class Localizer {
    
    class func dotoexchange(){
        
        exchangemethodforclass(classname: Bundle.self, originalselector: #selector(Bundle.localizedString), overrideselector: #selector(Bundle.customlocalizationforkey(key:value:table:)))
        
//        exchangemethodforclass(classname: UIApplication.self, originalselector: Selector("userInterfaceLayoutDirection"), overrideselector: Selector("custom_userinterfacelayoutDirection"))
//        
        
        
    }
    
    
}

extension Bundle {
    
    @objc func customlocalizationforkey(key : String , value : String , table tablename : String )-> String{
        
        let currentlanguage = Languages.Currentlanguage()
        
        var bundl = Bundle()
        
        if let path = Bundle.main.path(forResource: currentlanguage, ofType: "lproj"){
            
            bundl = Bundle(path: path)!
            
            
        }else {
            let path = Bundle.main.path(forResource: "Base", ofType: "lproj")
            bundl = Bundle(path: path!)!
            
        }
        return bundl.customlocalizationforkey(key : key , value : value , table:tablename)
    }
    
    
}

extension UIApplication{
    
    var custom_userinterfacelayoutDirection : UIUserInterfaceLayoutDirection {
        
        get {
            
            var direction = UIUserInterfaceLayoutDirection.leftToRight
            if Languages.Currentlanguage() == "ar" {
                
                
                direction = .rightToLeft
            }
            return direction
        }
        
    }
    
    
    
}

func exchangemethodforclass(classname : AnyClass , originalselector : Selector , overrideselector : Selector ){
    
    let originalMethod : Method = class_getInstanceMethod(classname, originalselector)!
    let overridemethode : Method = class_getInstanceMethod(classname, overrideselector)!
    if class_addMethod(classname, originalselector, method_getImplementation(overridemethode), method_getTypeEncoding(overridemethode)){
        
        class_replaceMethod(classname, overrideselector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
        
    }else {
        
        
        method_exchangeImplementations(originalMethod, overridemethode)
        
        
    }
}
