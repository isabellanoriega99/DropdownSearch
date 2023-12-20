import SwiftUI

struct DropdownSearch: View {

    @Binding var stringToCollect: String

    let placeholderText: String
    let optionsArray: [String]
    let dropdownWidthPercentage: CGFloat
    let dropdownColor: Color
    let textfieldWidthPercentage: CGFloat
    let UIElementHeightPercentage: CGFloat

    init(stringToCollect: Binding<String>, placeholderText: String, options: [String], dropdownWidth: CGFloat, dropdownColor: Color,
         textfieldWidthPercentage: CGFloat, UIElementHeightPercentage: CGFloat) {
        self.placeholderText = placeholderText
        self.optionsArray = options
        self.dropdownWidthPercentage = dropdownWidth
        self.dropdownColor = dropdownColor
        self.textfieldWidthPercentage = textfieldWidthPercentage
        self.UIElementHeightPercentage = UIElementHeightPercentage
    }

    var body: some View {
        VStack {
            UIElement(searchText: $stringToCollect,
                      placeholder: placeholderText,
                      options: optionsArray,
                      dropdownWidth: dropdownWidthPercentage,
                      dropdownColor: dropdownColor)
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width * textfieldWidthPercentage,
               height: UIScreen.main.bounds.height * UIElementHeightPercentage)
    }
}
