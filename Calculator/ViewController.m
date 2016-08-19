//
//  ViewController.m
//  Calculator
//
//  Created by Student P_05 on 01/01/01.
//  Copyright © 2001 Purushottam Tayade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonMinus:(id)sender {
    self.labelOperator.text = @"-";
    [self.labelOperator setBackgroundColor:[UIColor whiteColor]];
    
}

- (IBAction)buttonplus:(id)sender {
    self.labelOperator.text = @"+";
    [self.labelOperator setBackgroundColor:[UIColor whiteColor]];
}

- (IBAction)buttonMultiply:(id)sender {
    self.labelOperator.text = @"*";
    [self.labelOperator setBackgroundColor:[UIColor whiteColor]];

}

- (IBAction)buttonDivide:(id)sender {
    self.labelOperator.text = @"/";
    [self.labelOperator setBackgroundColor:[UIColor whiteColor]];

}

- (IBAction)buttonEqualTo:(id)sender {
    [self.textFieldOne resignFirstResponder];
    [self.textFieldTwo resignFirstResponder];

    NSString *valOne = self.textFieldOne.text;
    NSString *valTwo = self.textFieldTwo.text;

    NSString *op = self.textFieldOne.text;

    if(!([valOne isEqualToString:@""]) && ![valTwo isEqualToString:@""] && ![op isEqualToString:@""])
    {   op = self.labelOperator.text;
    valueOne = valOne.floatValue;
    valueTwo = valTwo.floatValue;
        [self.view setBackgroundColor:[UIColor blackColor]];
if([op isEqualToString:@"+"])
{
    output = valueOne + valueTwo;
    self.labelOutput.text = [NSString stringWithFormat:@"%f",output];
}else if([op isEqualToString:@"-"])
{
    output = valueOne - valueTwo;
    self.labelOutput.text = [NSString stringWithFormat:@"%f",output];
}else if([op isEqualToString:@"*"])
{
    output = valueOne * valueTwo;
    self.labelOutput.text = [NSString stringWithFormat:@"%f",output];
}else if([op isEqualToString:@"/"])
{
    output = valueOne / valueTwo;
    self.labelOutput.text = [NSString stringWithFormat:@"%f",output];
}
    }
    else{
        NSLog(@"Wrong move");
        
    }
}
- (IBAction)buttonReset:(id)sender {
    self.textFieldOne.text = @"";
    self.textFieldTwo.text = @"";
    self.labelOutput.text = @"";
    self.labelOperator.text = @"";
    
    [self.labelOperator setBackgroundColor:[UIColor blackColor
                                        ]];

    [self.view setBackgroundColor:[UIColor whiteColor]];
}
@end
