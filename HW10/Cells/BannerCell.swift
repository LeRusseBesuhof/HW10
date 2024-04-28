import UIKit

final class BannerCell: UICollectionViewCell, CellProtocol {
    
    static var reuseID : String = "Banner"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 15
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal lazy var imageView : UIImageView = AppUIFunctions.createImageView(withSize: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
    
    private lazy var header : UILabel = AppUIFunctions.createLabel(
        withSize: CGRect(x: 24, y: 25, width: imageView.frame.width - 48, height: 29),
        textColor: .white, font: UIFont.systemFont(ofSize: 24, weight: .heavy))
    
    private lazy var descr : UILabel = AppUIFunctions.createLabel(
        withSize: CGRect(x: 24, y: header.frame.maxY + 41, width: header.frame.width, height: 50),
        textColor: .white)
    
    func setCell(item: Item) {
        AppUIFunctions.setViewInfo(toImageView: imageView, label: descr, header: header, fromItem: item)
        
        [imageView, descr, header].forEach { addSubview($0) }
    }
}
