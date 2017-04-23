//
//  ChessBoard.m
//  ChessBoardResizable
//
//  Created by Syngmaster on 18/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "ChessBoard.h"
#import <QuartzCore/QuartzCore.h>

@implementation ChessBoard



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //set up for chessboard
        CGFloat boardFrameSide = frame.size.width < frame.size.height ? frame.size.width*0.95 : frame.size.height*0.95;
        
        CGFloat boardSide = boardFrameSide*0.95;
        CGFloat cellOffset = boardFrameSide*0.05;
        CGFloat cellSideSize = boardSide/8;
        
        self.layer.borderWidth = 1.0;
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin;
        
        
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                
                UIView *view = [[UIView alloc] initWithFrame:CGRectMake(cellOffset+i*cellSideSize,cellOffset+j*cellSideSize, cellSideSize, cellSideSize)];
                view.tag = UIViewTagCell;
                view.layer.borderWidth = 1;
                view.layer.borderColor = [UIColor blackColor].CGColor;
                
                //set black and white colors for cells
                view.backgroundColor = ((i+j)%2 == 0)?[UIColor blackColor]:[UIColor whiteColor];
                
                [self addSubview:view];
            }
        }
    }
    
    return self;
}

@end
