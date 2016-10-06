//
//  ViewController.m
//  MNColorMe
//
//  Created by Mrunalini on 13/09/16.
//  Copyright © 2016 Mrunalini Nemade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    redVal=0;
    greenVal=0;
    blueVal=0;
    
    UISlider *blueSlider=[[UISlider alloc]initWithFrame:CGRectMake(150, 600, 250, 30)];
    //blueSlider.backgroundColor=[UIColor blueColor];
    [blueSlider setThumbTintColor:[UIColor grayColor]];
    
    [blueSlider addTarget:self action:@selector(changeBlueColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:blueSlider];
    
    
    UISlider *greenSlider=[[UISlider alloc]initWithFrame:CGRectMake(150, 500, 250, 30)];
    //greenSlider.backgroundColor=[UIColor greenColor];
    [greenSlider setThumbTintColor:[UIColor grayColor]];
    [greenSlider addTarget:self action:@selector(changeGreenColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:greenSlider];
    
    
    UISlider *redSlider=[[UISlider alloc]initWithFrame:CGRectMake(150, 400, 250, 30)];
    //redSlider.backgroundColor=[UIColor redColor];
    [redSlider setThumbTintColor:[UIColor grayColor]];
    
    [redSlider addTarget:self action:@selector(changeRedColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:redSlider];
    
    
    blueLabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 600, 60, 40)];
    blueLabel.backgroundColor =[UIColor blueColor];
    blueLabel.textColor=[UIColor whiteColor];
    
    [self.view addSubview:blueLabel];
    
    
    
    greenLabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 500, 60, 40)];
    greenLabel.backgroundColor =[UIColor greenColor];
    [self.view addSubview:greenLabel];
    
    
    
    redLabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 400, 60, 40)];
    redLabel.backgroundColor =[UIColor redColor];
    [self.view addSubview:redLabel];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)changeRedColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    redLabel.textColor=[UIColor whiteColor];
    redLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    redVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
    
}
-(void)colorMe:  (float) redval withGreen : (float) greenval withBlue :(float) blueval
{
    self.view.backgroundColor=[UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1];
}

-(void)changeGreenColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    greenLabel.textColor=[UIColor whiteColor];
    greenLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    greenVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
    
    //    self.view.backgroundColor=[UIColor colorWithRed:0 green:colorValue blue:0 alpha:1];
    
    
}

-(void)changeBlueColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    //blueLabel.textColor=[UIColor whiteColor];
    blueLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    blueVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
    
    //    self.view.backgroundColor=[UIColor colorWithRed:0 green:0 blue:colorValue alpha:1];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
