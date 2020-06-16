import Foundation

import PlaygroundSupport
import SpriteKit
import Carbon.HIToolbox

 class Trivie: SKScene {
    
    private var label : SKLabelNode!
    private var copycatlabel : SKLabelNode!
    private var spinnyNode : SKShapeNode!
    private var userIsTyping = false
    private var meep = false
    private var currentText = ""
    private var lives = 3
    private var level = 1
    public class func initialLoad() {
        let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 640, height: 480))
        if let scene = Trivie(fileNamed: "Trivie") {
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
        copycatlabel = childNode(withName: "//Lives") as? SKLabelNode
        reloadStuff()
        
    }
    func reloadStuff() {
        if lives == 0 {
            delay(2) {
                  self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\tGAME OVER \n"
              }
              delay(4) {
                GamesScene.initialLoad()
            }
        }
        if level == 1 {
              delay(2) {
                  self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\tQUIZ TIME \n"
              }
              delay(2.25) {
            
                  self.label.text! += "\n\t\t\t\t\t\t\tACCORDING TO MACROTRENDS.NET, WHAT IS APPLE'S NET WORTH\n(AS OF      MAY 2020)?"
              }
              delay(2.5) {
            
                  self.label.text! += "\n\n\n"
              }
              delay(2.75) {
            
                  self.label.text! += "\n\t\t\t\t\t1: $1,341.65 B USD\n"
              }
              delay(3) {
            
                  self.label.text! += "\n\t\t\t\t\t2: $1,341.65 M USD\n"
              }
              delay(3.25) {
            
                  self.label.text! += "\n\t\t\t\t\t3: $134.165 B USD\n"
              }
              delay(3.5) {
            
                  self.label.text! += "\n\n\t\tbrokenOS>$ _"
              }
        }
        if level == 2 {
              delay(2) {
                  self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\tQUIZ TIME \n"
              }
              delay(2.25) {
            
                  self.label.text! += "\n\t\t\t\t\t\t\tWHAT YEAR WAS THE iPOD RELEASED?"
              }
              delay(2.5) {
            
                  self.label.text! += "\n\n\n"
              }
              delay(2.75) {
            
                  self.label.text! += "\n\t\t\t\t\t1: 2000 \n"
              }
              delay(3) {
            
                  self.label.text! += "\n\t\t\t\t\t2: 2006\n"
              }
              delay(3.25) {
            
                  self.label.text! += "\n\t\t\t\t\t3: 2001\n"
              }
            
              delay(3.5) {
            
                  self.label.text! += "\n\n\t\tbrokenOS>$ _"
              }
        }
        if level == 3 {
              delay(2) {
                  self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\tQUIZ TIME \n"
              }
              delay(2.25) {
            
                  self.label.text! += "\n\t\t\t\t\t\t\tWHAT WAS THE LAST RELEASED APPLE PRODUCT?"
              }
              delay(2.5) {
            
                  self.label.text! += "\n\n\n"
              }
              delay(2.75) {
            
                  self.label.text! += "\n\t\t\t\t\t1: iPHONE SE\n"
              }
              delay(3) {
            
                  self.label.text! += "\n\t\t\t\t\t2: MacBook Pro with Magic Keyboard\n"
              }
              delay(3.25) {
            
                  self.label.text! += "\n\t\t\t\t\t3: iPad Pro\n"
              }
              delay(3.5) {
            
                  self.label.text! += "\n\n\t\tbrokenOS>$ _"
              }
        }
        if level == 4 {
              delay(2) {
                  self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\tQUIZ TIME \n"
              }
              delay(2.25) {
            
                  self.label.text! += "\n\t\t\t\t\t\t\tWHAT IS THE DISPLAY ON MOST OF THE LATEST MACBOOK PROS?"
              }
              delay(2.5) {
            
                  self.label.text! += "\n\n\n"
              }
              delay(2.75) {
            
                  self.label.text! += "\n\t\t\t\t\t1: TouchPad\n"
              }
              delay(3) {
            
                  self.label.text! += "\n\t\t\t\t\t2: iDisplay\n"
              }
              delay(3.25) {
            
                  self.label.text! += "\n\t\t\t\t\t3: AppleBar\n"
              }
            delay(3.5) {
            
                  self.label.text! += "\n\t\t\t\t\t4: TouchBar\n"
              }
              delay(3.75) {
            
                  self.label.text! += "\n\n\t\tbrokenOS>$ _"
              }
        }
        
        if level == 5 {
              delay(2) {
                  self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\tQUIZ TIME \n"
              }
              delay(2.25) {
            
                  self.label.text! += "\n\t\t\t\t\t\t\tNICE YOU PASSED!"
              }
              delay(2.5) {
            
                  self.label.text! += "\n\n\n"
              }
              delay(2.75) {
            
                  self.label.text! += "\n\t\t\t\t\tPRESS THE 'E' KEY TO LEAVE\n"
              }
              delay(3) {
            
                  self.label.text! += "\n\n\t\tbrokenOS>$ _"
              }
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
            if level == 1 {
                level += 1
                label.text! = ""
                reloadStuff()
            } else {
                level += 1
                lives -= 1
                label.text! = ""
                reloadStuff()
            }
        }
        if currentText.contains("2") {
            if level == 3 {
                level += 1
                label.text! = ""
                reloadStuff()
            } else {
                level += 1
                lives -= 1
                label.text! = ""
                reloadStuff()
            }
        }
        if currentText.contains("3") {
            if level == 2 {
                level += 1
                label.text! = ""
                reloadStuff()
            } else {
                level += 1
                lives -= 1
                label.text! = ""
                reloadStuff()
            }
        }
        if currentText.contains("4") {
            if level == 4 {
                level += 1
                label.text! = ""
                reloadStuff()
            }
            else {
               level += 1
                lives -= 1
                label.text! = ""
                reloadStuff()
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
            case kVK_ANSI_E :
                GameScene.initialLoad()
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
        copycatlabel.text! = "Lives:"+String(lives)
    }
}
