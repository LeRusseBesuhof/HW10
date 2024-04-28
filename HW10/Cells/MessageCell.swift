import UIKit

final class MessageCell: UICollectionViewCell, CellProtocol {
    
    static var reuseID: String = "Message"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .appLightGray
        layer.cornerRadius = 15
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal lazy var imageView: UIImageView = AppUIFunctions.createImageView(withSize: CGRect(x: 10, y: 13, width: 61, height: 61))
    
    private lazy var text : UILabel = AppUIFunctions.createLabel(withSize: CGRect(x: imageView.frame.maxX + 12, y: 13, width: frame.width - 96, height: frame.height - 26))
    
    func setCell(item: Item) {
        
        AppUIFunctions.setViewInfo(toImageView: imageView, label: text, fromItem: item)
        
        [imageView, text].forEach { addSubview($0) }
    }
}
