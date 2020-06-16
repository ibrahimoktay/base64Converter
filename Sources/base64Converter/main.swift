import Foundation
import ArgumentParser
import Core

enum CodingType: EnumerableFlag {
    case encode
    case decode
}

struct Base64Converter: ParsableCommand {
    
    @Flag()
    var codingType: CodingType
    
    @Argument()
    var value: String
    
    func run() throws {
        switch codingType {
        case .encode:
            print(Converter.encode(value))
        case .decode:
            print(Converter.decode(value))
        }
    }
}

Base64Converter.main()

