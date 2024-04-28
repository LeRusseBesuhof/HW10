import Foundation

struct Item : Identifiable {
    let id = UUID().uuidString
    let image : String
    var header : String?
    var label : String?
}
