//
//  TweetFilterViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 15.05.2023.
//

import Foundation

enum TweetFilterViewModel : Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title : String {
        switch self {
        case.tweets : return "Tweets"
        case.replies : return "Replies"
        case.likes : return "Likes"
        }
    }
}
