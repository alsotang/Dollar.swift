//
//  Dictionary.swift
//  Cent
//
//  Created by Ankur Patel on 6/30/14.
//  Copyright (c) 2014 Encore Dev Labs LLC. All rights reserved.
//

import Foundation
import Dollar

extension Dictionary {
    
    /// Checks whether Dictionary has no keys and hence is empty
    ///
    /// :return Whether dictionary is empty
    public func isEmpty () -> Bool {
        return Array(self.keys).isEmpty
    }

    /// Merges the dictionary with dictionaries passed. The latter dictionaries will override
    /// values of the keys that are already set
    ///
    /// :param dictionaries A comma seperated list of dictionaries
    public mutating func merge<K, V>(dictionaries: Dictionary<K, V>...) {
        for dict in dictionaries {
            for (key, value) in dict {
                self.updateValue(value as Value, forKey: key as Key)
            }
        }
    }
    
}
