
import Combine
import Foundation

class ExampleViewModel: ObservableObject {

    @Published var stringToCollect = ""

    func onButtonClicked() {
        print(stringToCollect)
    }
}
