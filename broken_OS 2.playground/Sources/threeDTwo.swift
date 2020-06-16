import SceneKit
import AppKit


public class Nope: NSViewController, SCNPhysicsContactDelegate {
    
    private var scnView: SCNView!
    private var scene: SCNScene!
    private var cameraNode: SCNNode!
    private var userInputAllowed = true
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // receive view
        scnView = self.view as? SCNView
        
        // setup the scene
        scene = setupScene()
        
        // present it
        scnView.scene = scene
        scnView.pointOfView = cameraNode
        scene.background.contents = NSImage(named: "stars.jpg")
        
        
            let test = SCNAction.move(by: SCNVector3(15, 0 , 0), duration: 0)
            self.cameraNode.runAction(test)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            let meep = SCNAction.move(by: SCNVector3(-100, 0 , 0), duration: 15)
            self.cameraNode.runAction(meep)
        }
        // debug
        // show physicsShapes
      //   scnView.debugOptions = [.showPhysicsShapes]
        // show statistics such as fps and timing information
        // scnView.showsStatistics = true
    }
    
    
//    private func setupSound() {
//        gameSound = SCNAction.repeatForever(SCNAction.playAudio(SCNAudioSource(fileNamed: "game_theme.mp3")!, waitForCompletion: true))
//        relaxSound = SCNAction.repeatForever(SCNAction.playAudio(SCNAudioSource(fileNamed: "relax_theme.mp3")!, waitForCompletion: true))
//        checkpointSound = SCNAction.playAudio(SCNAudioSource(fileNamed: "checkpoint.mp3")!, waitForCompletion: true)
//    }
    
    private func setupScene() -> SCNScene {
        // receive scene
        let scene = SCNScene(named: "scene.scn")!
        // setup elements
        cameraNode = scene.rootNode.childNode(withName: "Camera", recursively: false)!
        return scene
    }
    
    
    public override func keyDown(with event: NSEvent) {
        
    }
    
    public override func keyUp(with event: NSEvent) {
       
    }
    
    
}
