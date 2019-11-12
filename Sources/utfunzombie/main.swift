import Darwin
import Foundation
import TSCUtility

public func convert(path: Foundation.URL) -> String? {
    do {
        let input = try String(contentsOf: path)
        return input.precomposedStringWithCanonicalMapping
    } catch {
        return nil
    }
}

do {
    let arguments = Array(CommandLine.arguments.dropFirst()) // Don't include the command name
    
    let parser = ArgumentParser(usage: "path", overview: "Convert file to precomposed characters")
    
    let pathsOption = parser.add(positional: "path", kind: String.self, optional:false, usage:"Path to file")
    let parsedArguments = try parser.parse(arguments)
    
    if let filePath = parsedArguments.get(pathsOption) {
        
        let url = Foundation.URL(fileURLWithPath: filePath)
        
        let output = convert(path: url)
        
        fputs(output, stdout)
        
        exit(EXIT_SUCCESS)
    }
} catch {
}

exit(EXIT_FAILURE)
