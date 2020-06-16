import Foundation

import PlaygroundSupport
import SpriteKit
import Carbon.HIToolbox

 class GamesScene: SKScene {
    
    private var label : SKLabelNode!
    private var spinnyNode : SKShapeNode!
    private var userIsTyping = false
    private var meep = false
    private var currentText = ""
    public class func initialLoad() {
        let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 640, height: 480))
        if let scene = GamesScene(fileNamed: "GamesScene") {
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
     override func didMove(to view: SKView) {
        // Get label node from scene and store it for use later
        label = childNode(withName: "//helloLabel") as? SKLabelNode
        delay(2) {
            self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\tGAMES LIST \n"
        }
        delay(2.25) {
            
            self.label.text! += "\n\t\t\t\t\t\t\tENTER THE NUMBER OF THE  SPECIFIED PROGRAM YOU WISH TO ACCESS\n"
        }
        delay(2.5) {
            
            self.label.text! += "\n\n\n"
        }
        delay(2.75) {
            
            self.label.text! += "\n\t\t\t\t\t1: SPACE DESTOYERS\n"
        }
        delay(3) {
            
            self.label.text! += "\n\t\t\t\t\t2: EXIT\n"
        }
        delay(3.25) {
            
            self.label.text! += "\n\n\t\tbrokenOS>$ _"
        }
    }
    
    @objc static override var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }
    func checkInput() {
        if currentText.contains("1") {
            print("Rad")
            label.text! += "\n\tOK."
            Trivie.initialLoad()
        } else if currentText.contains("1") {
             label.text! += "\n\tOK."
            GameScene.initialLoad()
        }
        else {
            label.text! += "\n\tWRONG."
            delay(2) {
                GameScene.initialLoad()
            }
        }
        
        
    }
    override func keyDown(with event: NSEvent) {
        userIsTyping = true
        self.label.text!.remove(at: self.label.text!.index(before: self.label.text!.endIndex))
        var currentChar = ""
        
        switch Int(event.keyCode) {
            case kVK_ANSI_1 :
                currentChar += "1"
            case kVK_ANSI_2 :
                currentChar += "2"
            case kVK_ANSI_3 :
                currentChar += "3"
            case kVK_ANSI_4 :
                currentChar += "4"
            case kVK_ANSI_5 :
                currentChar += "5"
            case kVK_ANSI_6 :
                currentChar += "6"
            case kVK_ANSI_7 :
                currentChar += "7"
            case kVK_ANSI_8 :
                currentChar += "8"
            case kVK_ANSI_9 :
                currentChar += "9"
            case kVK_ANSI_0 :
                currentChar += "0"
            case kVK_Space:
                label.text! += " "
            case kVK_Delete:
                if label.text!.count > 0 {
                    label.text!.remove(at: label.text!.index(before: label.text!.endIndex))
                }
            case kVK_Return:
                label.text! += "\n"
                checkInput()
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
        currentText = currentChar
    }
    override func keyUp(with event: NSEvent) {
        userIsTyping = false
    }
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
}
