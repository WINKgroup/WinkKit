//
//  Logger.swift
//  WinkKit
//
//  Created by Rico Crescenzio on 29/10/17.
//  Copyright © 2017 Wink srl. All rights reserved.
//

/// Contains methods to log messages.
public final class Log {
    
    
    /// Print message with "I" prefixed. This method logs messages even for Release apps.
    ///
    /// - Parameters:
    ///   - tag: A tag to identify the log
    ///   - items: Variadic paramenter that will be print.
    public static func info(tag: Any, items: Any...) {
        print("I: \(tag)" , items);
    }
    
    /// Print message with "W" prefixed. This method logs messages only for Debug apps.
    ///
    /// - Parameters:
    ///   - tag: A tag to identify the log
    ///   - items: Variadic paramenter that will be print.
    public static func warning(tag: Any, items: Any...) {
        #if DEBUG
        print("W: \(tag)", items);
        #endif
    }
    
    /// Print message with "E" prefixed. This method logs messages only for Debug apps.
    ///
    /// - Parameters:
    ///   - tag: A tag to identify the log
    ///   - items: Variadic paramenter that will be print.
    public static func error(tag: Any, items: Any...) {
        #if DEBUG
        print("E: \(tag)", items);
        #endif
    }
        
    /// Print message with "D" prefixed. This method logs messages only for Debug apps.
    ///
    /// - Parameters:
    ///   - tag: A tag to identify the log
    ///   - items: Variadic paramenter that will be print.
    public static func debug(tag: Any, items: Any...) {
        #if DEBUG
        print("D: \(tag)", items);
        #endif
    }
    
    /// Print message with "D" prefixed. This method logs messages only for Debug apps.
    /// Do not provide file and line to have the default ones.
    ///
    /// - Parameters:
    ///   - file: The file where this method is called
    ///   - line: The line where this method is called
    ///   - items: Variadic paramenter that will be print.
    public static func debug(file: String = #file, line: Int = #line, items: Any...) {
        #if DEBUG
        print("D: \(file): \(line)", items);
        #endif
    }
}

