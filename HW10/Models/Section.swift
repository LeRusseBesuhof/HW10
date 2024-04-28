import Foundation

struct Section : Identifiable {
    let id = UUID().uuidString
    let group : [Item]
    
    internal static func mockData() -> [Section] {
        
        let storyGroup = [
            Item(image: "wood", label: "Wood"),
            Item(image: "stone", label: "Stone"),
            Item(image: "copper", label: "Copper"),
            Item(image: "steel", label: "Iron"),
            Item(image: "gold", label: "Gold"),
            Item(image: "diamond", label: "Diamond")
        ]
        
        let messageGroup = [
            Item(image: "stick", label: "The oldest wooden weapons discovered so far are spears in Schöningen, Germany."),
            Item(image: "stone-axe", label: "Stone has been used to make arrowheads, spearheads, hand axes, and querns."),
            Item(image: "pickaxe", label: "Copper Age was an era of transition between the Neolithic and the Bronze Age."),
            Item(image: "sword", label: "Archeologists believe that iron was discovered by the Hittites of ancient Egypt."),
            Item(image: "rings", label: "Gold was highly valued for its rarity and ability to reflect light."),
            Item(image: "necklace", label: "Diamonds were worn as adornments, used as cutting tools, served as a talisman.")
        ]
        
        let bannerGroup = [
            Item(image: "wheel", header: "Wheel", label: "A wheel is a rotating component that is intended to turn on an axle bearing."),
            Item(image: "book", header: "Typography", label: "Typography is the art and technique of arranging type to make written language legible."),
            Item(image: "pc", header: "PC", label: "Before there was the personal computer the term of art for a domestic computing machine was “microcomputer“.")
        ]
        
        let imageGroup = [
            Item(image: "windmill"),
            Item(image: "engine"),
            Item(image: "rocket")
        ]
        
        let storySection = Section(group: storyGroup)
        let messageSection = Section(group: messageGroup)
        let bannerSection = Section(group: bannerGroup)
        let imageSection = Section(group: imageGroup)
        
        return [storySection, messageSection, bannerSection, imageSection]
    }
}
