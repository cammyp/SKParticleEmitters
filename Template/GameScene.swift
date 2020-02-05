import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        rainEmitter()
    }
    
    func magicEmitter()  {
        let emitter = SKEmitterNode(fileNamed: "magic")
        emitter?.position =  CGPoint(x: size.width / 2, y: size.height * 0.1)
        emitter?.zPosition = 2
        addChild(emitter!)
    }
    
    func burstEmitter()  {
        let emitter = SKEmitterNode(fileNamed: "burst")
        emitter?.position =  CGPoint(x: size.width / 2, y: size.height * 0.9)
        emitter?.zPosition = 2
        addChild(emitter!)
    }
    
    func sprinklesEmitter()  {
        let emitter = SKEmitterNode(fileNamed: "sprinkles")
        emitter?.position =  CGPoint(x: size.width / 2, y: size.height * 0.9)
        // start the simulation 30 seconds in
        emitter?.advanceSimulationTime(30)
        emitter?.zPosition = 2
        addChild(emitter!)
    }
    
    func smokeEmitter()  {
        let emitter = SKEmitterNode(fileNamed: "smoke")
        emitter?.position =  CGPoint(x: size.width / 2, y: size.height * 0.05)
        emitter?.zPosition = 2
        addChild(emitter!)
    }
    
    func rainEmitter() {
        let emitter = SKEmitterNode(fileNamed: "rain")
        emitter?.zPosition = 2
        emitter?.position = CGPoint(x: size.width / 2, y: size.height)
        // start the simulation 30 seconds in
        emitter?.advanceSimulationTime(30)
        addChild(emitter!)
    }
    
}
