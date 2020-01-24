#include <CSColorPicker/CSColorPicker.h>
#include <iostream> 
#include <sstream> 

NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.soup.practice21120"];

@interface _UIBatteryView
-(UIColor *)getColFromRGB:(NSString *)name;
@end

%hook _UIBatteryView
-(UIColor *)fillColor {
	return [self getColFromRGB: @"bodyCol"];
}
-(UIColor *)bodyColor {
	return [self getColFromRGB: @"outlineCol"];
}
-(UIColor *)boltColor {
	return [self getColFromRGB: @"boltCol"];
}
%new
-(UIColor *)getColFromRGB:(NSString *)name {
	float r = [[bundleDefaults valueForKey:[name stringByAppendingString:@"R"]] floatValue];
	float g = [[bundleDefaults valueForKey:[name stringByAppendingString:@"G"]] floatValue];
	float b = [[bundleDefaults valueForKey:[name stringByAppendingString:@"B"]] floatValue];

	return ([UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b /255.0f alpha:1.0f]);
}
%end

//UIAlertView *testAlert = [[UIAlertView alloc]initWithTitle:@"Debug" message:(NSString *)arg1 delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//[testAlert show];