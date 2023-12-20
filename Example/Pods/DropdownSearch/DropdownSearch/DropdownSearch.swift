import SwiftUI

public struct DropdownSearch: View {

    @Binding public var stringToCollect: String

    public let placeholderText: String
    public let optionsArray: [String]
    public let dropdownWidthPercentage: CGFloat
    public let dropdownColor: Color
    public let textfieldWidthPercentage: CGFloat
    public let UIElementHeightPercentage: CGFloat

    public init(stringToCollect: Binding<String>, placeholderText: String, options: [String], dropdownWidth: CGFloat, dropdownColor: Color,
         textfieldWidthPercentage: CGFloat, UIElementHeightPercentage: CGFloat) {
        _stringToCollect = stringToCollect
        self.placeholderText = placeholderText
        self.optionsArray = options
        self.dropdownWidthPercentage = dropdownWidth
        self.dropdownColor = dropdownColor
        self.textfieldWidthPercentage = textfieldWidthPercentage
        self.UIElementHeightPercentage = UIElementHeightPercentage
    }

    public var body: some View {
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
