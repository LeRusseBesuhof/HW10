import Foundation

struct Section : Identifiable {
    let id = UUID().uuidString
    let group : [Item]
    
    static func mockData() -> [Section] {
        
        let storyGroup = [
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: "")
        ]
        
        let messageGroup = [
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: "")
        ]
        
        let postGroup = [
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: "")
        ]
        
        let imageGroup = [
            Item(image: "", label: ""),
            Item(image: "", label: ""),
            Item(image: "", label: "")
        ]
        
        let storySection = Section(group: storyGroup)
        let messageSection = Section(group: messageGroup)
        let postSection = Section(group: postGroup)
        let imageSection = Section(group: imageGroup)
        
        return [storySection, messageSection, postSection, imageSection]
    }
}
