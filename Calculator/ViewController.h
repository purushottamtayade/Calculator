//
//  ViewController.h
//  Calculator
//
//  Created by Student P_05 on 01/01/01.
//  Copyright © 2001 Purushottam Tayade. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    float valueOne;
    float valueTwo;
    float output;
}

@property (strong, nonatomic) IBOutlet UITextField *textFieldOne;
@property (strong, nonatomic) IBOutlet UITextField *textFieldTwo;
@property (strong, nonatomic) IBOutlet UILabel *labelOperator;
@property (strong, nonatomic) IBOutlet UILabel *labelOutput;
- (IBAction)buttonMinus:(id)sender;
- (IBAction)buttonplus:(id)sender;
- (IBAction)buttonMultiply:(id)sender;
- (IBAction)buttonDivide:(id)sender;
- (IBAction)buttonEqualTo:(id)sender;
- (IBAction)buttonReset:(id)sender;

@end

