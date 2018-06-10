//
//  ViewController.swift
//  AR Pathfinder
//
//  Created by Sam Orgill on 10/06/2018.
//  Copyright © 2018 Sam Orgill. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
//        let cube = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.01)
        
        let sun = SCNSphere(radius: 0.5)
        let mercury = SCNSphere(radius: 0.02)
        let venus = SCNSphere(radius: 0.05)
        let earth = SCNSphere(radius: 0.055)
        let mars = SCNSphere(radius: 0.05)
        let jupiter = SCNSphere(radius: 0.1)
        let saturn = SCNSphere(radius: 0.095)
        let uranus = SCNSphere(radius: 0.08)
        let neptune = SCNSphere(radius: 0.077)
        
        let sunMaterial = SCNMaterial()
        sunMaterial.diffuse.contents = UIImage(named: "art.scnassets/sun.jpg")
        
        let mercuryMaterial = SCNMaterial()
        mercuryMaterial.diffuse.contents = UIImage(named: "art.scnassets/mercury.jpg")
        
        let venusMaterial = SCNMaterial()
        venusMaterial.diffuse.contents = UIImage(named: "art.scnassets/venus.jpg")
        
        let earthMaterial = SCNMaterial()
        earthMaterial.diffuse.contents = UIImage(named: "art.scnassets/earthday.jpg")
        
        let marsMaterial = SCNMaterial()
        marsMaterial.diffuse.contents = UIImage(named: "art.scnassets/mars.jpg")
        
        let jupiterMaterial = SCNMaterial()
        jupiterMaterial.diffuse.contents = UIImage(named: "art.scnassets/jupiter.jpg")
        
        let saturnMaterial = SCNMaterial()
        saturnMaterial.diffuse.contents = UIImage(named: "art.scnassets/saturn.jpg")
        
        let uranusMaterial = SCNMaterial()
        uranusMaterial.diffuse.contents = UIImage(named: "art.scnassets/uranus.jpg")
        
        let neptuneMaterial = SCNMaterial()
        neptuneMaterial.diffuse.contents = UIImage(named: "art.scnassets/neptune.jpg")
        
        sun.materials = [sunMaterial]
        mercury.materials = [mercuryMaterial]
        venus.materials = [venusMaterial]
        earth.materials = [earthMaterial]
        mars.materials = [marsMaterial]
        jupiter.materials = [jupiterMaterial]
        saturn.materials = [saturnMaterial]
        uranus.materials = [uranusMaterial]
        neptune.materials = [neptuneMaterial]
        
        let sunNode = SCNNode()
        sunNode.position = SCNVector3(x: 0.1, y: 0.2, z: -3)
        sunNode.geometry = sun

        let mercuryNode = SCNNode()
        mercuryNode.position = SCNVector3(x: 0.2, y: 0.2, z: -2)
        mercuryNode.geometry = mercury
        
        let venusNode = SCNNode()
        venusNode.position = SCNVector3(x: 0.1, y: 0.4, z: -2)
        venusNode.geometry = venus
        
        let earthNode = SCNNode()
        earthNode.position = SCNVector3(x: 0.3, y: 0.3, z: -1.5)
        earthNode.geometry = earth
        
        let marsNode = SCNNode()
        marsNode.position = SCNVector3(x: 0.4, y: 0.2, z: -1)
        marsNode.geometry = mars
        
        let jupiterNode = SCNNode()
        jupiterNode.position = SCNVector3(x: 0.5, y: -0.1, z: -4)
        jupiterNode.geometry = jupiter
        
        let saturnNode = SCNNode()
        saturnNode.position = SCNVector3(x: 0.6, y: -0.2, z: -5)
        saturnNode.geometry = saturn
        
        let uranusNode = SCNNode()
        uranusNode.position = SCNVector3(x: 0.75, y: -0.3, z: -4)
        uranusNode.geometry = uranus
        
        let neptuneNode = SCNNode()
        neptuneNode.position = SCNVector3(x: 0.8, y: -0.4, z: -3)
        neptuneNode.geometry = neptune
        
        sceneView.scene.rootNode.addChildNode(sunNode)
        sceneView.scene.rootNode.addChildNode(mercuryNode)
        sceneView.scene.rootNode.addChildNode(venusNode)
        sceneView.scene.rootNode.addChildNode(earthNode)
        sceneView.scene.rootNode.addChildNode(marsNode)
        sceneView.scene.rootNode.addChildNode(jupiterNode)
        sceneView.scene.rootNode.addChildNode(saturnNode)
        sceneView.scene.rootNode.addChildNode(uranusNode)
        sceneView.scene.rootNode.addChildNode(neptuneNode)
        
        
        sceneView.autoenablesDefaultLighting = true
        
//        // Create a new scene
//        let scene = SCNScene(named: "art.scnassets/ship.scn")!
//
//        // Set the scene to the view
//        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
}
