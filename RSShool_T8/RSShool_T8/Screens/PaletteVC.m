//
//  PaletteVC.m
//  RSShool_T8
//
//  Created by Анастасия Скорюкова on 18.07.2021.
//

#import "PaletteVC.h"

@interface PaletteVC ()
@property (strong, nonatomic) IBOutlet UIButton *saveColorsButton;
@property (strong, nonatomic) IBOutlet UIButton *colorButton1;
@property (strong, nonatomic) IBOutlet UIButton *colorButton2;
@property (strong, nonatomic) IBOutlet UIButton *colorButton3;
@property (strong, nonatomic) IBOutlet UIButton *colorButton4;
@property (strong, nonatomic) IBOutlet UIButton *colorButton5;
@property (strong, nonatomic) IBOutlet UIButton *colorButton6;
@property (strong, nonatomic) IBOutlet UIButton *colorButton7;
@property (strong, nonatomic) IBOutlet UIButton *colorButton8;
@property (strong, nonatomic) IBOutlet UIButton *colorButton9;
@property (strong, nonatomic) IBOutlet UIButton *colorButton10;
@property (strong, nonatomic) IBOutlet UIButton *colorButton11;
@property (strong, nonatomic) IBOutlet UIButton *colorButton12;


@end

@implementation PaletteVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureSaveButton];
    [self configureViewController];
}


- (void) configureViewController {
    NSArray *colorsArray = @[self.colorButton1, self.colorButton2, self.colorButton3, self.colorButton4, self.colorButton5, self.colorButton6, self.colorButton7, self.colorButton8, self.colorButton9, self.colorButton10, self.colorButton11, self.colorButton12];
    
    for (UIButton *colorButton in colorsArray) {
        [self configureColorButton:colorButton];
        if (colorButton.isSelected == YES) {
            
        }
    }
    
    
}

- (void) configureSaveButton {
    [self.saveColorsButton.layer setCornerRadius:10.0];
    [self.saveColorsButton.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Medium" size:18]];
    
    [self.saveColorsButton.layer setShadowColor: [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor];
    [self.saveColorsButton.layer setShadowOpacity:1.0];
    [self.saveColorsButton.layer setShadowRadius:2.0];
    [self.saveColorsButton.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
}


- (void) configureColorButton: (UIButton*) button {
    [button.layer setCornerRadius:10.0];

    [button.layer setShadowColor: [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor];
    [button.layer setShadowOpacity:1.0];
    [button.layer setShadowRadius:2.0];
    [button.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
}

@end
