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

@available(macOS 13, *)
public extension App {
    static func main() async {
        var tick = 0 {
            didSet {
                tickAction(count: tick)
            }
        }
        while true {
            tick += 1
            try! await Task.sleep(for: .milliseconds(13.7))
        }
    }
}

func tickAction(count: Int) {
    let window = getWindowSize()
    render(window: window)
    print(count)
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
