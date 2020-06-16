
import Foundation

import PlaygroundSupport
import SpriteKit
import Carbon.HIToolbox

 class AboutMe: SKScene {
    
    private var label : SKLabelNode!
    private var spinnyNode : SKShapeNode!
    private var userIsTyping = false
    private var meep = false
    private var currentText = ""
    public class func initialLoad() {
        let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 640, height: 480))
        if let scene = AboutMe(fileNamed: "GamesScene") {
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
        label.fontSize = 5
            label.text! = """
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,/#%#%((((((((((((//,..,*,     ,,...........**,,,,,,,,,***,,,,,,******,,,.                      ,..*******,..,,,.,,..,********   *****************///////////
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*(%#%#((((((((((((////,.        .,.........,*******,,,***,,,,,,******,,,.                      *,.*********,,,,,,,,**********. .****************////////////
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*(%###((///*,,,,,..,*//.   .     ..........****,,,,,,,**,,,,,,,******,,,.  .                .  .*,***//*****,,,,,,,,***,,**//*.,///**///*,,*//*////////////*
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*(%#%#(/............,*/,,,,,............    ..,,,*,,,,*,,,,,,,,,********,...                .   **//////,.**,,,,,,,*//((////((//((/////////////.  .*////////
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/%###(,...........///(/,,..........             .*/****,,,,,,***////***,..,.                .  ./((((/*,*//******/(((((((((((((((((((////(///////**.     ,*
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/%%##/...          *////*/////,...      ..**((###(#((/////////////(//*/**,*,..            ..,   /((((((((((((((((((#((((((((((#((((((((((((((((/(((///,.
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*#%#%*.             .//*..////,.,..,. /(%%##%%#%%%%%%%%%%%%%%%%%%%######((((*,...          ./.   ./((#((((((((((((#(((((((((((((((((((#(((((((((((////*..,*
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*#%##,               ./(/.//(/*,,/%%%#%%%%%#%%%%%%%%%%%%%%%%%%%%%%%%%%%####%##(*,,,.   ,/(((/.    .//(((((///((((((((//((((///(((((((((((((((((((((((((, ((
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*####/                .(((/(((/##%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##,...,((((((//////(((((((((((((((((/((((((////((((/(((((((//((((((((/  /(
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*(%###..*(/.    ..,,..,(#%#%%%%%%%%%%%&&&&%&&&%%&&&&&%&&&&%&&&%&%%%%%%%%%%%%%%%%%%%###((##(((((///(((((/((((((((((((//(((((((((((((((((((#((//(((((((((((((
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*(%%#%**//,,...,((#%%##%%%%%%%%&%&&&&&&&&&&%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&%%%&%%%%%%%%#####(((((((((////((((((((((((((/(((((((((((((((((((((((((((((((((((((
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/%##%(#%%%%%%%%%%%%%%%%%%%%%&%%&&&&&&&&&&&&&&&%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%###((((((((((/////((//((((((((((((((/(((((((((((/((((/((((//(((((((
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/%%#%##%%%%%%%%%%%&&&&&&&&&&&%&&&&&&&&&&&&&&&&&%&%%%%%&&&&&&&&&&&&&&&&&&&&&&&&%&%%%%&%%%%%##((((((((///////////////////////////////////////////((//(((((#(
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/%%##%%%%%%%&%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&%%%%%%%&&&&&&&&&&&&&&&&&&&&&&%%%&%%%%%%%%%%%%(//////////////////(((#############%%####((//**///(((###%##%%
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/#%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&&%%%%%&&&&&&&&&&&&&&&&&&&&&%%%&%%%%&%%%%%%%#######((((((((##%%#%%%%%##%##%%%######((///***,***,,,,,,,,
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*(#%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%&&&%&&&&&&&%%%%%&&%&&&&&%%%%%%%%%%%%%%##(/*****,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*###%%%%%&%%&&&&&%&%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%&&&&&&&&&&&&&&&&&&&&%&&%%%%%%%%%%%%/*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,.,,,.......,,.
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*#(%%%%&&%%%&&&%%%&&&&&&&&&&%%%&&&%&&&&&&&&&&&&&&&&&&&&&&&&%%%%%&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%##/*,,,,,,,,,,,,,..,,,,,,,,,..,,.....,,,,...,......,.....
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*(#%%%&%%&%%%%%%&%%%&&&&%%&&%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&%%%%%%%%%%%%%%%%%(**,,,,,,,,,,,,,,,,,,,...,,.,....,......,,,,..........
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,/(%%%&%&&&&&&&%&%%%%%&&%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&%%%&&&&&&&&&&&&%%&&%&&&&&&&&%%%%%%%%%%%%%%%%%%%%%#/*,,,,,,,,,,,,,,,,,,,.,,,............,,...,.......,.
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*%%%%&%&&&&&&&&%%%%%%%%%%%%##%%%%%#%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&%%%%&%%%%%%%%%&%%%%%%%%%&&%%%%%%%%%%%%##(*,,,,,.,...,,.,,,,,,.,,,,..,,..............,....,,
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/%%&%%%%&&%&&&&%%&%%%%%%%%%%%%%############%%%%&&&&&&&&&&&&&&&%%&%%%%%%%%%%%%%%%%%%%%%%%&&&&&&%&%%%%%%%#%%#(*,,,,,,,,...,,.....,,,,,.,,,..............,......
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*,,*****&%&&&&&&&&&&&&&&%%%%%%%#%%%%#####((########%%%%&&&&&&&&&&%%%%%%%%%%%%%%%##%%##%%%%%%%%%%&&&&&&%&&&%%%%%%%%%**,,,,.,,,,..,,,,,,,,.,,,,,,,................,...
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,**,*******#%&&%&&&&&&&&%%%%%%%%%%%%%%#########((((((####%%%%%%%%&&&&&&&&&&%%&%%%%%%%#####%%#######%%%%%%&%&&%%%%%%%#%%#*,,,,,,.,....,.......,,.................,,......
            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,***************%%&&&&&&&&&%%%%%%###########%######(((((((((######%%%%%%&&&&&%%%%#%%%####%%%%%%##############%%%%%%&%%%%%%%%##*,,,.......,...............,...................
            ,,,,,,,,,,,,*,**,,,,,,,,******************/#&&&&&&&&&%%%##########%%%%%%%%%######((((((((((#####%%%%&&&&&%%###########((((((((((###((#####%%%&%%%%%%%%%#(/,,,,,.,,,..,,..,,...........................,,
            ,,,,,,,,,,,,,***************************///%%%&&&&&&&%##########%%&&&&&&&&&&%%%%##(((/////(((((####%%%&&&&&%%%%%%%%%#((////////////(((((####%%%%%%%%%%##(*,,,,,,,.............,...........,.,........,.,
            ,,,*,,*,*************************/**//////(%%%&&%%&&%%#####%%%&&%%%%%%%%%&&&&&&&%%%%#(////*//((((###%%%%%&&%&&&%%%%((((((((((((((((((///(((##%%%%%%%%%%#(/*,,,,.......................,...............,.
            ,,,,,,,,,*********************////////////(%%%%&%%&%%######%%%###(((((((((((###%%%%%%##(/////////((((((##%%%%##((((#%%%%%%%%%%%%%%%%##(//((((#%%%&&&&%%%%(*,,,,........,.................,........,,....
            ,,,,*************************////////////((%&&%&&&%%#####%###(((((///////////((((#######((//////////////(((//(((##%%%#%%#%%%%%%%%%%%%%%%((//((#%%%&%%%%%##(*,,,,,......................,,........,......
            **************************////////*/////(((%%&&&&&%%##(#####((((((((((((///////(((((((((((///////////////////(((#(((((((/(//////////(####((//(#%%%%%%%%##(/**,,.,....,,,.,...,,,..,,,,..................
            *************************/////////////((((##%&&&&&%##(######(((((((((((((((((/((((((((((((///////////******/////////////*************///((((/(%%%%%%%%#((/**,,...,,....,,,,,,,,...,,....................
            ***********************/***/////////((((((###%&&&&%##((#((###((((((((((////(((((((((((((((((//////////*****///////////*****************//((//(%%%%%%%%%(//*,,,,,,,.,....,....,,,,.............,,...,,,,.
            *************************/////////(((((((###%%&&&%%#((((((#####(#(####(####//////(((((##(((((//////******//////////////////////**********/(//(%%%%%%%%%##(*,,,,...,..,,.......,,.........,,,......,,....
            ************///*******///////////((((((((###%%%%%%##(((((((((####%%%%%###%%%%%###(((((((((((((//********//////((((((((//////(///////*////////(%%%%%%%%%#(*,,,,,,,,,,,,,.,.....,,,....,........,.....,...
            ************/********//////////(((((((((####%%%%%%##(((((((((((#######(#%%&&&&%#//##(((((((((((/****,,**/////(((((((/(/((/**/////////////////(%%%%%%%%#/*,,,,,,...,.....,....,,,.....,..,..,,.,,,.......
            **********************//////////(((((((#####%%%%%##((((((((((((((((((#####%%%##(////(/////((((//*************//(((((#%%%###(%%#(//////////////%%%%%##(**,,,,.,,,,.,,,,,..,....,,,,,..,,,,,,,,,,,..,,,...
            ********/****////*****/////////(((((((#######%%%%##((((((/////////(((((((((((/////////((/(((((//**,,,*********//(//#%%&&&%%//(####(((///*//*//%%%%#(****,,,,,..,,,,,,,......,.,...,..,,,,..,,,,,,,..,,,,
            ***************/**/*//////////((((((((########%%%#(((((((/////////////////////////////////(((///***,,********////////(##%#(((((((////*******/(%%%%%##((*,,,,,,,.,,,,,.,..,,,,,,,,,,,..,,,,,,,,,,,,,.....
            *************///***///////////(((((((##########%%##((((///////**/***//**/*******/////////(((((//*****************/////////////////**********/#%%%#(((/*,,,..,,...,,,,,,,,,,..,..,,,,,,,....,,,,,,....,..
            ************//***/*///////////(((((((###########%##(((//////////******************/////((((((///**********************/////*/***************/#%%(***,,,,,,,,,.,,.,,,,,,,,......,..........,.,..,........
            ************//*///////////////(((((((##############((((///////********************////(((((///*********************************************/(##*,,,,,,,.,,,,,,,...,,.,,,,,,,.,,,,,,.....,.,,,,,,,,...,,,
            ********//*******//////////////(((((#######%%#######((((/////*********************//(((((((//******,,************,,**,,,,,,,,,,,,*,,*******/(/*,,,,,,,,,,,,,,...,,,,,,,,...,,.,,...,,,,.,,,,,,,,,.,,,,,,
            *********////*/**/////////////((((((#####%%%%%###%##(((((////********************//((((((((//****,,,,,,*********,,,,,,,,,,,,,,,,,**********/**,,,,,.,,,,,,,,,,,..,,,,,,..,,,,,,,,,,,,.,,,,,,,,,,,,,,,,,,
            ************//////////////////((((((######%%%%%%%######((///////****************/((((/((((((///****,,,*********,,,,,,,,,,,,,,,,,,,***********,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****////////////(////****
            ************////**///////////((((((((#####%%%%%%%%#####((((///////************///#(((((((((#(((////**////******,,**,,,,,,,,,,,,,,,,*********//////////***,,**,,,,,,,,,,,,,,,,,...........,...,,,,,,,,,,*
            ***********///////////////////((((((((###%%%%%%%%%#######((((//////////*/***////((##(((##%%%%%#((((((#%%%##(//*****,,,,,,,,,**,*********/*//***************,,,,,,,,,,,,,,,**,,,,,,,,,,,,,,,,,,,,,,,*****
            ****//*//////////////////((((########%%%%%%%&&&&&&%#######(((((/////////////////////((#(((((####((((/////(((/**,**********************////#%&&%/*********,**********,,,,,,,,,,,.,,,,,,,,,,,,,,,,,,,,,,,,
            #################%%%%%%%%%%%%%%%#%%%%%%%%%&&&&&&&&%########((((/////////////////////////(((//((((///////***************************//*//(%&&&&&&&&#//********************,,*,,,,,,,*********////////////
            ########################%%%%########%%%&&&&&&&&&&&%#########(((///((/(((((/////////////////////////*********************//*******/*/////%&&&&&&&&&&&%(////////////***************///////((/(((//////////
            #########################%#######%%&&&&&&&&&&&&&&&%####((####((///((((((((((((///////////////////************************//*****////////&&&&&&&&&&&&&%%(((((((//////////////////////////////*******,,,**
            ####(####################%%###%%%&&&&&&&&&&&&&&&@&%%%###(#####((/////((#######((((((((/////////////****/****//***//////****/*****/*////(&&&&&&&&&&&&&&&%((//////////////////******************,,,,,,****
            #######################%%%%##%%%&&&&&&&&&&&&&&@@&&&%%####((####((//////(///(((########(((((///////////////(///(((((((///********/***///&&&&&&&&&&&&&&&&&%#((((//////////////////**********,,,,,,,,,*****
            #######################%#%%%%%%&&&&&&&&&&&&&&&@@&@@&%%##########((//////((////////////////((((((((((((((((((/((//***////*******/***//(%&&&&&&&&&&&&&&&&&&&((///((///////////////////////********/***////
            ####################%###%%%%%%&&&&&&&&&&&&&@&@@@@@@@&%%##########(((/(((((((((////////***************************************/****///#&&&&&&&&&&&&&&&&&&&&#(/////////////////////////////*/**///*///////
            ###################%%###%%%%%%&&&&&&&&&&&&&&@@@@@@@@@&%%%#########(((((((((((((/(//////***********************************////**////#&&&&&&&&&&&&&&&&&&&&&%(((((((((((((((/(((((((((((((((((((((((((/(((
            ##################%%#%%%%%%%%&&&&&&&&&&&&@&&@@@@@@@@@@&&%%%#######((((((((((((((((((////////////************************/////////((#&&&&&&&&&&&&&&&&&&&&&&&##################((((##(((((((((((((((((((((
            #################%##%%%%%%%&&&&&&&&&&&&&&&&&&@@@@@@@@@@@&&%%%#####(((((((((((((((((((/////////*//////*****************/////////(((&&&&&&@@@&&&&&&&&&&&&&&&&&%%%%%%%%%%%%&%%%%#(####%%%%%%%##########((((
            ###############%%%#%%%%%%&&&&&&&&&&&&&&&&&&&&@@@@@@@@@@@@@@&%%%####((((((((((((((///////******************************//////((((%&&&&&&&@&&@&&&&&&&&&&&&&&&&&&&&%&%%&&&%&&%%##(((((((///(////((//((##%%%
            #####%#%#%%%%%%%%##%%%&&&&&&@&&&&&&@&&&&&&&@&@@@@@@@@@@@@@@@@&%%%####(((((((((((///////////*************************///////((#&&&&&&&&@@@@@@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%#(((((((((((((/((((((((((((
            #########%####%%%%%%&&@&&&&@@@&&&&&@&&&&@@&&&@@@@@@@@@@@@@@@@@&&%%%%###(((((((///////////////*********************///////((%&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&&&&&&&&%%&&%%%##(((((((((((((((((((((((((
            #######%%%%#%%%%%%%&&&&&&&&@@@@@&&&&&&@@&@&&@@@@@@@@@@@@@@@@@@@&&&&%%%####((((((//(///(///////******************//////((#%&&@@&&&&&&&&@@@&@&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%&&%%###((((((((((((((((((((((((
            #######%%#%%%%%%%%%&&&&@@@@@@@@&@@@@&&@&&&&&@&@@@@@@@@@@@@@@@@@&&&&&&%%%%####(((((//////((///////*************/////((((#%&&@@@&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%&&%%%####((((((((((((((((((((((
            ####%##%%%%%%%%%%%&&&&&&&@&&&@@&&@&@&&&&&@&&@@&@&@@@@@@@@@@@@@@&&&&&&&%%%%%%###(((((//////////////*********/////(((//((#%&@@@@&&&&@&&&@&@@@@&&&&@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&%%%%#(((((((((
            ######%%#%%%%%%%%%%&%&&&&@@@&@&&@@&&@&&&@@@@@&&@@@@@@@@@@@@@@@@&&&&&&&&&&&&&%%%%###(((((((/(/////////////////(((/**/((#%&&@&&&&&&&&&@@@@@@&&&&&&&&@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%&%%%#(
            ####%%%%#%%%%%%%%%%%%&&&&&&@&@@@@@@@@@@&&@&@@@@@&@&@&@@@@@@@@@@&&&&&%&&&&%%&&&&%%%%%####(#(((((((((((//(((((/****/(((#%&&&&&&&&&&&&&@@@@&@@&&&&&&&&&&&@&&&&&&&&&&&@@&&&@&@@@&&&&&&&&&&&&&&&@&&&&&&&&&&&&
            %%%%#%%%%%%%%%%%%%%%&&&&&&&&&@@@@@@@@@@@@@&@@@@@@@@@@&&&@@@@@@@@&&&%%%%%%%%%%%%%%%%%%%%%%%%%%#%%#####((/*******//((#%%&&&&&&&&&&&&@@@@@@&@@&&&&&&&&&&&&&&&&&&&&&@@@@@@@@@&&&&&&&&&&&&&&&&@@&&&&&&&&&&&&&
            %%%%%%%%%%%%%%%%%%%&%&&&&&&&&&&@@@@@@@@@@@@@@&@@@&@@&@@@@@@@@@@@&&%%%##############%#########(((/////********///(##%%&&&&&&&&&&&@@@@@@@&@&&&&&&&&&&&&&&&&&&&&&@@@@@&&@@&&&&&&&&&&&&&@&&&&&&&&&@&&&&&&&&&
            %%%%%%%%%%%%%%%%%%%%%%&&&&&&&@@@@@@@@@@@@@@@&&&@@@@@@@@@@@&&&&&&&&&%####(((((((((#(((((((((/////**/*******////((#%%&&&@&&&&&&&&&@@@@@&&&&&&&&&&&&@&&&@&@@@@@@@@@@@@@@&&&&&&&&&&&&&&&@@&&&&&&&&&&&&@&&&&&
            #%%%%%%%%%%%%%%%%%%%%%&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@&@&&&&&&%#(((//////////////////////********////(((#%%&&&&&&&&&&&&&@@@@@@@&@&&&&&&&&&&&&&@&@@@@@@@@@@@@@@@&&&&&&&&&&&&@&@&&&@&@&@@@@&&@&&&&&&
            %%%%%%%%%%%%#%%%&%%&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@&&&&&%(((/////****/////////////*******////(((#%%&&&&&&&&&&&&&&@&&&&@&&&@&@@&&&&&&&&&&&@@@@@@@@@@@@@@@&&&&&&&&&&&&@&&@@@@@@@@&@@&&@@&@&&&
            %%%%%%%%%%%%%&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&&&&&&&&&#(//********/////*******////////(((#%%%%&&&&&&&&&&&&@@@@@&&&&&&&&&&&&&&@&&&@@@@@@@@@@&@&&@&&&@&&&&&&&&@@@&&&&@@@@&&&&&&@@@@&&&&&
            &&&&&&&&&&&&&@@@&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@@@@&&@&&&&&&%//**********/**//////////((((##%%%&&&&&&&&&&&&&@@@@@&@&&&&&&&&&&&&&&&@@@@@@@@@@@@@@@@&@&&&&&&&&&@@&&&&&@&&&&&&@&@&&&&@&&&&&&
            %&&&&&&&@&@&@&&@@@@@@@@@@@&&@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@&&&@@&&&&&#**********////////(((((#%%%%%%&&&&&&&&&&&&@&@@@&&&&&&@@@@@&&&&@@@@@@@@@@@@@&&&&&&@@&&@&&&&&&&&&&@@&@@@@&@&@@@&&&@@@@&&&@
            &&&@&&&@&@@&&@@@@@@@@@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@&&&&@#*****////////((((###%%%%&&&&&&&&&@@&&@@&&&&&&&&&&&@@&&&&&@@@@@@@@@@@@@&@@@&&&&&&&&&&&&&&@@&@@@@&@@@@&&@@&@@&@@&@@@&&@
            &@@&@@@&&&&&&@&&@@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&&(//////(((((###%%%%%&&&&&&@@&&@&&&&&&&&&&&&@&&&&&&&&@@@@@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&@@@@&&&@&&@@&&@&&&@&&@@&&&@@
            &@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&&&&&&&&&%(((((###%%%%&&&&@@@@@&&@@@@&&&&&&&@@&@@&&@&&&@@@@@@@@@@@@@&@@&&&@@&&&&&&&&&&&@@&&@@@@@@&&&@@@&@@@@@&@&&&@@@&
            @@@@@@@@@@@@@@@@@@@@&@@@@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&&&%%%%%%&&@@&&&@@@@@@&@&@@@@@@@@@@@@&@@@@@&@@@@@@@@@@@@@@&&&@&&&&&&&&&&&&&&@&&&&@@@&@&&@@@@@@&&@&@@@&&@@@@
        """
        delay(5) {
            self.label.text! = ""
            self.label.fontSize = 30
            self.label.text! += "\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tABOUT ME \n"
        }
        delay(5.25) {
            
            self.label.text! += "\n\t\t\t\t\t\t\tPRESS THE 'E' or ENTER BUTTON TO EXIT THIS SCREEN. \n"
        }
        delay(5.5) {
            
            self.label.text! += "\n\t\t\t\t\t SORRY FOR THE FRREAKY PICTURE :D\n\n"
        }
        delay(5.75) {
            
            self.label.text! += "\n\t\t\t\t\tHey there, my name is TJ Ledwith.  I am a 16 year old Junior in high school, living in Long Island, NY.  I am obsessed with programming, among my other hobbies such as running, hiking, learning, politics, and just building cool stuff.  I have crazy dreams of changing the world in some way through my skills and passion.  This is my fourth attempt at the WWDC Scholarship. I hope to see you at the *virtual* WWDC!  \n"
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
        if currentText.contains("E") {
            print("Rad")
            label.text! += "\n\tOK."
            GameScene.initialLoad()
        }
        else {
            label.text! += "\n\tOK."
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
            case kVK_ANSI_E:
                GameScene.initialLoad()
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
