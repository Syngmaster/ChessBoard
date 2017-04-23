//
//  ChessBoard.h
//  ChessBoardResizable
//
//  Created by Syngmaster on 18/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, UIViewTag){
    
    UIViewTagCheck,
    UIViewTagBoard,
    UIViewTagCell
    
};

@interface ChessBoard : UIView

@end
