// To parse the JSON, add this file to your project and do:
//
//   let iTunesTrack = try? newJSONDecoder().decode(ITunesTrack.self, from: jsonData)

import Foundation

public struct ITunesTrack: Codable {
    public let resultCount: Int
    public let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case resultCount = "resultCount"
        case results = "results"
    }
    
    public init(resultCount: Int, results: [Result]) {
        self.resultCount = resultCount
        self.results = results
    }
}

public struct Result: Codable {
    public let wrapperType: String
    public let kind: String
    public let artistId: Int
    public let collectionId: Int
    public let trackId: Int
    public let artistName: String
    public let collectionName: String
    public let trackName: String
    public let collectionCensoredName: String
    public let trackCensoredName: String
    public let artistViewUrl: String
    public let collectionViewUrl: String
    public let trackViewUrl: String
    public let previewUrl: String
    public let artworkUrl30: String
    public let artworkUrl60: String
    public let artworkUrl100: String
    public let collectionPrice: Double
    public let trackPrice: Double
    public let releaseDate: String
    public let collectionExplicitness: String
    public let trackExplicitness: String
    public let discCount: Int
    public let discNumber: Int
    public let trackCount: Int
    public let trackNumber: Int
    public let trackTimeMillis: Int
    public let country: String
    public let currency: String
    public let primaryGenreName: String
    public let isStreamable: Bool
    public let collectionArtistId: Int?
    public let collectionArtistName: String?
    
    enum CodingKeys: String, CodingKey {
        case wrapperType = "wrapperType"
        case kind = "kind"
        case artistId = "artistId"
        case collectionId = "collectionId"
        case trackId = "trackId"
        case artistName = "artistName"
        case collectionName = "collectionName"
        case trackName = "trackName"
        case collectionCensoredName = "collectionCensoredName"
        case trackCensoredName = "trackCensoredName"
        case artistViewUrl = "artistViewUrl"
        case collectionViewUrl = "collectionViewUrl"
        case trackViewUrl = "trackViewUrl"
        case previewUrl = "previewUrl"
        case artworkUrl30 = "artworkUrl30"
        case artworkUrl60 = "artworkUrl60"
        case artworkUrl100 = "artworkUrl100"
        case collectionPrice = "collectionPrice"
        case trackPrice = "trackPrice"
        case releaseDate = "releaseDate"
        case collectionExplicitness = "collectionExplicitness"
        case trackExplicitness = "trackExplicitness"
        case discCount = "discCount"
        case discNumber = "discNumber"
        case trackCount = "trackCount"
        case trackNumber = "trackNumber"
        case trackTimeMillis = "trackTimeMillis"
        case country = "country"
        case currency = "currency"
        case primaryGenreName = "primaryGenreName"
        case isStreamable = "isStreamable"
        case collectionArtistId = "collectionArtistId"
        case collectionArtistName = "collectionArtistName"
    }
    
    public init(wrapperType: String, kind: String, artistId: Int, collectionId: Int, trackId: Int, artistName: String, collectionName: String, trackName: String, collectionCensoredName: String, trackCensoredName: String, artistViewUrl: String, collectionViewUrl: String, trackViewUrl: String, previewUrl: String, artworkUrl30: String, artworkUrl60: String, artworkUrl100: String, collectionPrice: Double, trackPrice: Double, releaseDate: String, collectionExplicitness: String, trackExplicitness: String, discCount: Int, discNumber: Int, trackCount: Int, trackNumber: Int, trackTimeMillis: Int, country: String, currency: String, primaryGenreName: String, isStreamable: Bool, collectionArtistId: Int?, collectionArtistName: String?) {
        self.wrapperType = wrapperType
        self.kind = kind
        self.artistId = artistId
        self.collectionId = collectionId
        self.trackId = trackId
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.collectionCensoredName = collectionCensoredName
        self.trackCensoredName = trackCensoredName
        self.artistViewUrl = artistViewUrl
        self.collectionViewUrl = collectionViewUrl
        self.trackViewUrl = trackViewUrl
        self.previewUrl = previewUrl
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = collectionPrice
        self.trackPrice = trackPrice
        self.releaseDate = releaseDate
        self.collectionExplicitness = collectionExplicitness
        self.trackExplicitness = trackExplicitness
        self.discCount = discCount
        self.discNumber = discNumber
        self.trackCount = trackCount
        self.trackNumber = trackNumber
        self.trackTimeMillis = trackTimeMillis
        self.country = country
        self.currency = currency
        self.primaryGenreName = primaryGenreName
        self.isStreamable = isStreamable
        self.collectionArtistId = collectionArtistId
        self.collectionArtistName = collectionArtistName
    }
}
