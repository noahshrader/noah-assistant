import SwiftUI

@main
struct MyMacAppApp: App {
    var body: some Scene {
        Window("Meridyan Desktop", id: "main") {
            ContentView()
                .frame(minWidth: 480, minHeight: 320)
        }
        .windowStyle(.hiddenTitleBar)
        .windowResizability(.contentMinSize)
        .defaultSize(width: 760, height: 480)
    }
}
