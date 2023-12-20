import SwiftUI

@main
struct DropdownSearchApp: App {
    @State public var selectedString: String = ""

    var body: some Scene {
        WindowGroup {
            DropdownSearch(stringToCollect: $selectedString)
        }
    }
}
