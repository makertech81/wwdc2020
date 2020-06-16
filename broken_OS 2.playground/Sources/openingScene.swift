import PlaygroundSupport
import SpriteKit
import Carbon.HIToolbox
import SceneKit


 public class openingScene: SKScene {
    
    private var label : SKLabelNode!
    private var spinnyNode : SKShapeNode!
    private var userIsTyping = false
    private var meep = false
    
    public class func initialLoad() {
        let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 640, height: 480))
        if let scene = openingScene(fileNamed: "openScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            sceneView.presentScene(scene)
        }
        
        PlaygroundPage.current.liveView = sceneView
    }
    func delay(_ delay:Double, closure:@escaping ()->()) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }

    func ghostText(s: String) {
        
        
    }
    
    public override func didMove(to view: SKView) {
        // Get label node from scene and store it for use later
        label = childNode(withName: "//helloLabel") as? SKLabelNode
        
        delay(0.25) {
            self.label.text! += "\t\t\t\t╭━━╮╱╱╱╱╱╭╮╱╱╱╱╱╱╱╱╭━━━┳━━━╮\n"
        }
        delay(0.5) {
            self.label.text! += "\t\t\t\t┃╭╮┃╱╱╱╱╱┃┃╱╱╱╱╱╱╱╱┃╭━╮┃╭━╮┃\n"
        }
        delay(0.75) {
            self.label.text! += "\t\t\t\t┃╰╯╰┳━┳━━┫┃╭┳━━┳━╮╱┃┃╱┃┃╰━━╮\n"
        }
        delay(1) {
            self.label.text! += "\t\t\t\t┃╭━╮┃╭┫╭╮┃╰╯┫┃━┫╭╮╮┃┃╱┃┣━━╮┃\n"
        }
        delay(1.25) {
            self.label.text! += "\t\t\t\t┃╰━╯┃┃┃╰╯┃╭╮┫┃━┫┃┃┃┃╰━╯┃╰━╯┃\n"
        }
        
        delay(1.5) {
        self.label.text! += "\t\t\t\t╰━━━┻╯╰━━┻╯╰┻━━┻╯╰╯╰━━━┻━━━╯\n"
        }
        delay(1.75) {
            self.label.text! += "\n"
        }
        delay(2) {
            self.label.text! += "\t\t\t\t\tA RETRO COMPUTER EMULATOR \n\t\t\t\t\t\t\t\t\t\tWITH A TWIST\n"
        }
        delay(2.25) {
            
            self.label.text! += "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tWELCOME\n"
        }
        delay(2.5) {
            
            self.label.text! += "\n\n\n"
        }
        delay(2.75) {
            
            self.label.text! += "\n\t\t\t\t\tCOPYRIGHT 2020 COOKIE CORP.\n"
        }
//        delay(3) {
//            
//            self.label.text! += "\n\n\t\t\t\t\t\t\tTO START PRESS ENTER\n"
//               
//                   
//            
//        }
    }
    
    @objc public static override var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }
    func checkInput() {
       
    }
    public override func keyDown(with event: NSEvent) {
        userIsTyping = true
        self.label.text!.remove(at: self.label.text!.index(before: self.label.text!.endIndex))
        var currentChar = ""
        
        switch Int(event.keyCode) {
            case kVK_Return:
                let game = GameViewController()
                let viewSize: [Int: CGRect] = [
                    1: CGRect(x: 0, y: 0, width: 600, height: 450),
                    2: CGRect(x: 0, y: 0, width: 800, height: 600),
                    3: CGRect(x: 0, y: 0, width: 1024, height: 768),
                    4: CGRect(x: 0, y: 0, width: 1200, height: 900)
                ]
                game.view = SCNView(frame: viewSize[2]!) // <-- Enter your size number here

                game.viewDidLoad()
                PlaygroundPage.current.liveView = game
            case kVK_RightArrow:
                break
                
            case kVK_UpArrow:
                break
            case kVK_DownArrow:
                break
            default:
                break
        }
        if Int(event.keyCode) == kVK_Shift {
            meep = true
        }
        
            currentChar = currentChar.uppercased()
        
        self.label.text! += currentChar
        self.label.text! += "_"
    }
    public override func keyUp(with event: NSEvent) {
        userIsTyping = false
    }
    public override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
}
