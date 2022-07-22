//
//  MySectionExtension.swift
//  MyCategory
//
//  Created by Wen on 2022/7/23.
//

import CTMediator

extension CTMediator {
    
    @objc func getMyViewController(for callback: @escaping (String)->Void) -> UIViewController? {
        
        let params:[String: Any] = ["callback": callback,
                      kCTMediatorParamsKeySwiftTargetModuleName:"MySection"]
        
        if let vc = self.performTarget("My", action: "MySection", params: params, shouldCacheTarget: false) as? UIViewController {
            return vc
        }
        //
        return nil
    }
}
