//
//  Enums.swift
//  swifthomework3
//
//  Created by Томик on 6.12.23.
//

import Foundation

enum Books: String {
    case theHobbit
    case theLordOfTheRings
    case theLittlePrince
    
    
    func getBookDescription() -> String {
        switch self {
            case .theHobbit:
                return "The Hobbit, or There and Back Again is a children's fantasy novel by English author J. R. R. Tolkien. It was published in 1937 to wide critical acclaim, being nominated for the Carnegie Medal and awarded a prize from the New York Herald Tribune for best juvenile fiction."
            case .theLordOfTheRings:
                return "The Lord of the Rings is an epic high fantasy novel by the English author and scholar J. R. R. Tolkien. Set in Middle-earth, the story began as a sequel to Tolkien's 1937 children's book The Hobbit, but eventually developed into a much larger work."
            case .theLittlePrince:
                return "The Little Prince is a novella written and illustrated by French aristocrat, writer, and military pilot Antoine de Saint-Exupéry."
        }
    }
}

func bookSelecting(titleOfTheBook: Books) -> String {
        return titleOfTheBook.getBookDescription()
    }


