import UIKit

final class ImageCell: UICollectionViewCell, CellProtocol {
    
    static var reuseID : String = "Image"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 15
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal lazy var imageView: UIImageView = AppUIFunctions.createImageView(withSize: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
    
    func setCell(item: Item) {
        AppUIFunctions.setViewInfo(toImageView: imageView, fromItem: item)
        
        addSubview(imageView)
    }
}
