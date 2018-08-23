//
//  Ramp.swift
//  Ramp-Up
//
//  Created by Ramit sharma on 23/08/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import Foundation
import SceneKit

class Ramp {
    class func getRampForName(rampName: String) -> SCNNode {
        switch rampName {
        case "pipe":
            return Ramp.getPipe()
        case "pyramid":
            return Ramp.getPyramid()
        case "quarter":
            return Ramp.getQuarter()
        default:
            return Ramp.getPipe()
        }
    }
    
    
    class func getPipe() -> SCNNode {
        
        var obj = SCNScene(named: "art.sceneassests/pipe.dae")
        var node = obj?.rootNode.childNode(withName: "pipe", recursively: true)!
        node?.scale = SCNVector3Make(0.0022, 0.0022, 0.0022)
        node?.position = SCNVector3Make(0.9, 0.7, -1)
        return node!
    }
    
    class func getPyramid() -> SCNNode {
        
       let obj = SCNScene(named: "art.sceneassests/pyramid.dae")
       let node = obj?.rootNode.childNode(withName: "pyramid", recursively: true)!
        node?.scale = SCNVector3Make(0.0058, 0.0058, 0.0058)
        node?.position = SCNVector3Make(-1, -0.45, -1)
        return node!
        
    
    }
    
    class func getQuarter() -> SCNNode {
        
      let obj = SCNScene(named: "art.sceneassests/quarter.dae")
      let node = obj?.rootNode.childNode(withName: "quarter", recursively: true)!
        node?.scale = SCNVector3Make(0.0058, 0.0058, 0.0058)
        node?.position = SCNVector3Make(-1, -2.1, -1)
        return node!
        

    }
    
    class func startRotation(node: SCNNode) {
        let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1))
        node.runAction(rotate)

        
        
    }
    
    
    
    
    
    
    
    
}
