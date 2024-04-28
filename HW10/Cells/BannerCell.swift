import UIKit

final class PostCell: UICollectionViewCell, CellProtocol {
    
    static var reuseID : String = "Post"
    
    var imageView: UIImageView = AppUIFunctions.createImageView()
    
    func setCell(item: Item) {
        
    }
}
