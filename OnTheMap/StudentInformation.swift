//
//  StudentInformation.swift
//  OnTheMap
//
//  Created by Sugandha Naolekar on 8/13/16.
//  Copyright © 2016 icode. All rights reserved.
//

import Foundation


struct StudentInformation {
    
    var createdAt: String
    var firstName: String
    var lastName: String
    var latitude: Double
    var longitude: Double
    var mapString: String
    var mediaURL: String
    var objectId: String
    var uniqueKey: String
    var updatedAt: String
    
    init(studInfo: [String: AnyObject]) {
        createdAt = studInfo[StudentInformationModel.createdAtKey] != nil ? studInfo[StudentInformationModel.createdAtKey] as! String: ""
        firstName =  studInfo[StudentInformationModel.firstNameKey] != nil ? studInfo[StudentInformationModel.firstNameKey] as! String: ""
        lastName  = studInfo[StudentInformationModel.lastNameKey] != nil ? studInfo[StudentInformationModel.lastNameKey] as! String: ""
        longitude = studInfo[StudentInformationModel.longitudeKey] != nil ? studInfo[StudentInformationModel.longitudeKey] as! Double: 0.0
        latitude = studInfo[StudentInformationModel.latitudeKey] != nil ? studInfo[StudentInformationModel.latitudeKey] as! Double: 0.0
        mapString = studInfo[StudentInformationModel.mapStringKey] != nil ? studInfo[StudentInformationModel.mapStringKey] as! String: ""
        mediaURL  = studInfo[StudentInformationModel.mediaURLKey] != nil ? studInfo[StudentInformationModel.mediaURLKey] as! String: ""
        objectId  = studInfo[StudentInformationModel.objectIdKey] != nil ? studInfo[StudentInformationModel.objectIdKey] as! String: ""
        uniqueKey = studInfo[StudentInformationModel.uniqueKeyKey] != nil ? studInfo[StudentInformationModel.uniqueKeyKey] as! String: ""
        updatedAt = studInfo[StudentInformationModel.updatedAtKey] != nil ? studInfo[StudentInformationModel.updatedAtKey] as! String: ""
    }
}