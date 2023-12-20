
import DropdownSearch
import SwiftUI

struct ExampleView: View {

    @ObservedObject var viewModel = ExampleViewModel()

    let colorNames: [String] = ["Red", "Orange", "Yellow", "Green",
                                "Blue", "Purple", "Pink", "Gray",
                                "Brown", "Black", "White", "Cyan",
                                "Magenta", "Indigo", "Turquoise",
                                "Lavender", "Maroon", "Olive", "Teal",
                                "Gold"]

    var body: some View {
        VStack {
            Spacer()
            DropdownSearch(stringToCollect: $viewModel.stringToCollect, placeholderText: "Select a color", options: colorNames, dropdownWidth: 0.9, dropdownColor: .white, textfieldWidthPercentage: 1.0, UIElementHeightPercentage: 0.5)
            Button(action: {
                viewModel.onButtonClicked()
            }) {
                Text("Click to Print")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.blue)
    }
}

#Preview {
    ExampleView()
}
