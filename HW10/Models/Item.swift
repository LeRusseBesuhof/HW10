import Foundation

struct Item : Identifiable {
    let id = UUID().uuidString
    let image : String
    var label : String?
    var header : String?
}
