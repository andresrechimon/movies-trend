//
//  NetworkConstants.swift
//  movies-trends
//
//  Created by Andrés Rechimon on 17/01/2024.
//

import Foundation

class NetworkConstants {
    
    public static var shared: NetworkConstants = NetworkConstants()
    
    public var apiKey: String {
        get {
            return "a5688d1325ef95b8137be7f4e1dac3a3"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
