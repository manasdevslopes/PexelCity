//
//  Constants.swift
//  Pexel City
//
//  Created by MANAS VIJAYWARGIYA on 01/07/1940 Saka.
//  Copyright © 1940 MANAS VIJAYWARGIYA. All rights reserved.
//

import Foundation

let apiKey = "78d35f75d0a627494134d2541603afbe"


//https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=67991330d6a40e44c495b8382bf95f99&lat=42.8&lon=122.3&radius=1&radius_units=mi&per_page=40&format=json&nojsoncallback=1


func flikrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String
{
    
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    
}
