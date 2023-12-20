import SwiftUI

public struct UIElement: View {

    @Binding public var searchText: String
    @State public var isEditing = false
    @State public var isDropdownVisible = false
    @State public var selectedOption: String?

    public let placeholder: String
    public let options: [String]
    public let dropdownWidth: CGFloat
    public let dropdownColor: Color

    public init(searchText: Binding<String>, placeholder: String, options: [String], dropdownWidth: CGFloat, dropdownColor: Color) {
        _searchText = searchText
        self.placeholder = placeholder
        self.options = options
        self.dropdownWidth = dropdownWidth
        self.dropdownColor = dropdownColor
    }
    
    public var filteredOptions: [String] {
        if searchText.isEmpty {
            return options
        } else {
            return options.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    public var body: some View {
        VStack {
            TextField(placeholder, text: $searchText, onEditingChanged: { editing in
                self.isEditing = editing
                self.isDropdownVisible = editing || selectedOption != nil
            })
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if isDropdownVisible {
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(filteredOptions, id: \.self) { option in
                            Button(action: {
                                selectedOption = option
                                searchText = option
                                isDropdownVisible = false
                            }) {
                                Text(option)
                                    .padding(.vertical, 8)
                            }
                            .foregroundColor(Color.primary)
                            .background(selectedOption == option ? Color.accentColor : Color.clear)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width * dropdownWidth)
                .background(dropdownColor)
                .cornerRadius(8)
                .shadow(radius: 2)
                .padding(.top, 4)
                .listRowInsets(EdgeInsets())
            }
        }
        .padding()
    }
}
