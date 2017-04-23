//
//  ViewController.m
//  ChessBoardResizable
//
//  Created by Syngmaster on 18/04/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "ViewController.h"
#import "ChessBoard.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ChessBoard *board = [[ChessBoard alloc] initWithFrame:CGRectMake(100, 100, 280, 250)];
    [self.view addSubview:board];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
