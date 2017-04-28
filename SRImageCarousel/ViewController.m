//
//  ViewController.m
//  SRImageCarousel
//
//  Created by sharui on 2017/4/25.
//  Copyright © 2017年 sharui. All rights reserved.
//

#import "ViewController.h"
#import "SRImageCarouselControl.h"

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()
@property (nonatomic ,strong ) SRImageCarouselControl * imageCarouselControl;


@end

@implementation ViewController
- (IBAction)pageingEnabled:(UISwitch *)sender {
	
	[sender setOn:!sender.on];
	self.imageCarouselControl.cusPagingEnabled = sender.on;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self.view addSubview:self.imageCarouselControl];
	
	[self.imageCarouselControl reloadData];
	
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (SRImageCarouselControl *)imageCarouselControl {
	
	if (!_imageCarouselControl) {
		_imageCarouselControl = [[SRImageCarouselControl alloc] initWithFrame:CGRectMake(0, 50,SCREEN_WIDTH , 200)];
		_imageCarouselControl.dataSourse = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
	}

	return _imageCarouselControl;
}
@end
