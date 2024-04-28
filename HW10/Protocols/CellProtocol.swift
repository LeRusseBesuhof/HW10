import Foundation
import UIKit

protocol CellProtocol : AnyObject {
    static var reuseID : String { get }
    var imageView : UIImageView { get }
    func setCell(item: Item)
}

