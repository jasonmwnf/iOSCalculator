//
//  ViewController.h
//  Calculator
//
//  Created by Jason Williams on 2016-01-21.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int currentOperation;
    float result;
    float currentNumber;
    
}
@property (weak, nonatomic) IBOutlet UILabel *Label;


- (IBAction)buttonDigit:(id)sender;
- (IBAction)buttonOperation:(id)sender;
- (IBAction)Cancel:(id)sender;
@end

