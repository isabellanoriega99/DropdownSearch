import SwiftUI

@main
struct DropdownSearchApp: App {
    @State public var selectedString: String = ""

    var body: some Scene {
        WindowGroup {
            DropdownSearch(stringToCollect: $selectedString, placeholderText: "", options: [""], dropdownWidth: 1.0, dropdownColor: .white, textfieldWidthPercentage: 1.0, UIElementHeightPercentage: 0.5)
        }
    }
}
