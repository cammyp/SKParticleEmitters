import UIKit
import SpriteKit
import GameplayKit

// mainVC
class GameViewController: UIViewController {
    
    // connection to view
    var skView: SKView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGameScene()
    }
    
    func setUpGameScene() {
        // instance of GameScene
        let scene = GameScene(size: CGSize(width: 1080, height: 1920))
        // style
        scene.scaleMode = .aspectFill
        skView = self.view as? SKView
        // present
        skView.presentScene(scene)
    }

   
}
