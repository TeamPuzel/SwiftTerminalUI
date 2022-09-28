//
//  This is the main file of SwiftTerminalUI,
//  a declarative terminal graphics framework.
//
//  Written with ♥ in Swift
//
//  Created by TeamPuzel on 25/09/2022.
//

import CoreANSI

public protocol App {
    
}

public extension App {
    static func main() {
        
    }
}

func tick() {
    let window = getWindowSize()
    
    render(window: window)
    
}

func render(window: CACoordinates) {
    erase(.screen)
    resetCursor()
}

// figure this (and result builders) out later
@propertyWrapper
struct State {
    var wrappedValue: Any
    
}
