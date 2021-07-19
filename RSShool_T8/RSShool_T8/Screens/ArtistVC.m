//
//  ArtistVC.m
//  RSShool_T8
//
//  Created by Анастасия Скорюкова on 17.07.2021.
//

#import "ArtistVC.h"
#import "DrawingsVC.h"
#import "PaletteVC.h"

@interface ArtistVC ()

@property (strong, nonatomic) IBOutlet UIBarButtonItem *drawingsButton;
@property (strong, nonatomic) IBOutlet UIView *canvasView;
@property (strong, nonatomic) IBOutlet UIButton *openPaletteButton;
@property (strong, nonatomic) IBOutlet UIButton *openTimerButton;
@property (strong, nonatomic) IBOutlet UIButton *drawButton;
@property (strong, nonatomic) IBOutlet UIButton *shareButton;
@property (assign, nonatomic) BOOL isChildViewControllerAdded;



@end


@implementation ArtistVC


- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViewController];
    [self configureCanvasView];
    [self.storyboard instantiateViewControllerWithIdentifier:@"PaletteVC"];
   
    
}


- (void) configureViewController {
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor], NSFontAttributeName: [UIFont fontWithName:@"Montserrat-Regular" size:16]}];
    self.isChildViewControllerAdded = NO;
    
    [self.drawingsButton setTitleTextAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"Montserrat-Regular" size:16]} forState:UIControlStateNormal];
    [self configureDrawingButton:self.openPaletteButton];
    [self configureDrawingButton:self.openTimerButton];
    [self configureDrawingButton:self.drawButton];
    [self configureDrawingButton:self.shareButton];
    
}

- (IBAction)openPaletteButtonTapped:(id)sender {
    PaletteVC *childVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PaletteVC"];
    
    if (self.isChildViewControllerAdded) {
        
        self.isChildViewControllerAdded = NO;

        [childVC willMoveToParentViewController:nil];
        [childVC.view removeFromSuperview];
        [childVC removeFromParentViewController];
    } else {
        
        self.isChildViewControllerAdded = YES;

        childVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PaletteVC"];
        [self addChildViewController:childVC];
        childVC.view.frame = [self frameForChildVC];
        [childVC.view setBackgroundColor:[UIColor whiteColor]];
        
        [childVC.view.layer setCornerRadius:50.0];
        [childVC.view.layer setShadowColor: [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor];
        [childVC.view.layer setShadowOpacity:1.0];
        [childVC.view.layer setShadowRadius:8.0];
        [childVC.view.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
        [self.view addSubview:childVC.view];
        [childVC didMoveToParentViewController:self];
    }
}

-(void) configureCanvasView {
    [self.canvasView.layer setCornerRadius:8.0];

    [self.canvasView.layer setShadowColor: [UIColor colorWithRed:0.0 green:0.7 blue:1.0 alpha:0.25].CGColor];
    [self.canvasView.layer setShadowOpacity:1.0];
    [self.canvasView.layer setShadowRadius:8.0];
    [self.canvasView.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
}


- (void) configureDrawingButton: (UIButton*) button {
    [button.layer setCornerRadius:10.0];
    [button.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Medium" size:18]];
    
    [button.layer setShadowColor: [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor];
    [button.layer setShadowOpacity:1.0];
    [button.layer setShadowRadius:2.0];
    [button.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
}


- (IBAction)drawingButtonTapped:(id)sender {
    DrawingsVC *destVC = [DrawingsVC new];
    [self.navigationController pushViewController:destVC animated:true];
}





- (CGRect)frameForChildVC {
    return CGRectMake(0.0, 350.0, 375.0, 351.0);
}



@end
