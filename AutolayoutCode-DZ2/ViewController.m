#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UIView *redView;
@property(nonatomic, strong) UIView *yellowView;
@property(nonatomic, strong) UIView *greenView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.redView = [[UIView alloc]init];
    self.yellowView = [[UIView alloc]init];
    self.greenView = [[UIView alloc]init];
    
    NSArray *colors = @[[UIColor redColor], [UIColor yellowColor], [UIColor greenColor]];

    [@[self.redView, self.yellowView, self.greenView] enumerateObjectsUsingBlock:^(UIView * obj, NSUInteger idx, BOOL *stop) {

        [obj setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.view addSubview:obj];
        [obj setBackgroundColor:colors[idx]];
    }];

    [self setupLayout];
}

- (void)setupLayout {

    NSLayoutConstraint *con = [NSLayoutConstraint constraintWithItem:self.redView
                                                           attribute:NSLayoutAttributeLeading
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.view
                                                           attribute:NSLayoutAttributeLeft
                                                          multiplier:1
                                                            constant:15];
    [self.view addConstraint:con];



    con = [NSLayoutConstraint constraintWithItem:self.redView
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.yellowView
                                       attribute:NSLayoutAttributeLeading
                                      multiplier:1
                                        constant:-15];
    [self.view addConstraint:con];


    con = [NSLayoutConstraint constraintWithItem:self.yellowView
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.view
                                       attribute:NSLayoutAttributeRight
                                      multiplier:1
                                        constant:-15];
    [self.view addConstraint:con];


    con = [NSLayoutConstraint constraintWithItem:self.redView
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.greenView
                                       attribute:NSLayoutAttributeLeading
                                      multiplier:1
                                        constant:-15];
    [self.view addConstraint:con];

    con = [NSLayoutConstraint constraintWithItem:self.greenView
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.view
                                       attribute:NSLayoutAttributeRight
                                      multiplier:1
                                        constant:-15];
    [self.view addConstraint:con];


    con = [NSLayoutConstraint constraintWithItem:self.redView
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.view
                                       attribute:NSLayoutAttributeTop
                                      multiplier:1
                                        constant:15] ;
    [self.view addConstraint:con];


    con = [NSLayoutConstraint constraintWithItem:self.yellowView
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.view
                                       attribute:NSLayoutAttributeTop
                                      multiplier:1
                                        constant:15] ;
    [self.view addConstraint:con];


    con = [NSLayoutConstraint constraintWithItem:self.yellowView
                                       attribute: NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.greenView
                                       attribute:NSLayoutAttributeTop
                                      multiplier:1
                                        constant:-15] ;
    [self.view addConstraint:con];




    con = [NSLayoutConstraint constraintWithItem:self.redView
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.view
                                       attribute:NSLayoutAttributeBottom
                                      multiplier:1
                                        constant:-15] ;
    [self.view addConstraint:con];

    con = [NSLayoutConstraint constraintWithItem:self.greenView
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.view
                                       attribute:NSLayoutAttributeBottom
                                      multiplier:1
                                        constant:-15] ;
    [self.view addConstraint:con];

    con = [NSLayoutConstraint constraintWithItem:self.redView
                                       attribute: NSLayoutAttributeWidth
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.yellowView
                                       attribute: NSLayoutAttributeWidth
                                      multiplier:1
                                        constant:0] ;
    [self.view addConstraint:con];

    con = [NSLayoutConstraint constraintWithItem:self.redView
                                       attribute: NSLayoutAttributeWidth
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.greenView
                                       attribute: NSLayoutAttributeWidth
                                      multiplier:1
                                        constant:0] ;
    [self.view addConstraint:con];

    con = [NSLayoutConstraint constraintWithItem:self.yellowView
                                       attribute: NSLayoutAttributeHeight
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self.greenView
                                       attribute: NSLayoutAttributeHeight
                                      multiplier:1
                                        constant:0] ;
    [self.view addConstraint:con];
}


-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}


@end
