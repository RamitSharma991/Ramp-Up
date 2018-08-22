//
//  RampPickerVC.swift
//  Ramp-Up
//
//  Created by Ramit sharma on 16/08/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class RampPickerVC: UIViewController, ARSCNViewDelegate,UIPopoverPresentationControllerDelegate {

    
    var sceneView: SCNView!
    var size: CGSize!
    
    init(size: CGSize) {
        super.init(nibName: nil, bundle: nil)
        self.size = size
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.frame = CGRect(origin: CGPoint.zero, size: size)
        sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        view.insertSubview(sceneView, at: 0)
        let scene = SCNScene(named: "art.ascnassets/ramps.scn")!
        sceneView.scene = scene
        
        let camera = SCNCamera()
        camera.usesOrthographicProjection = true
        scene.rootNode.camera = camera
        
        
        let obj = SCNScene(named: "art.sceneassests/pipe.dae")
        let node = obj?.rootNode.childNode(withName: "pipe", recursively: true)
        
        node?.scale = SCNVector3Make(0.0022, 0.0022, 0.0022)
        node?.position = SCNVector3Make(0.9, 0.7, -1)
        scene.rootNode.addChildNode(node!)
        preferredContentSize = size
        

        // Do any additional setup after loading the view.
    }
}
