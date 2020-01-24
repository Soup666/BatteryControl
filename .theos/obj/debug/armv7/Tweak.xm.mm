#line 1 "Tweak.xm"
#include <CSColorPicker/CSColorPicker.h>
#include <iostream> 
#include <sstream> 

NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.soup.practice21120"];

@interface _UIBatteryView
-(UIColor *)getColFromRGB:(NSString *)name;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class _UIBatteryView; 
static UIColor * (*_logos_orig$_ungrouped$_UIBatteryView$fillColor)(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$_UIBatteryView$fillColor(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$_UIBatteryView$bodyColor)(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$_UIBatteryView$bodyColor(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$_UIBatteryView$boltColor)(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$_UIBatteryView$boltColor(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$_UIBatteryView$getColFromRGB$(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST, SEL, NSString *); 

#line 11 "Tweak.xm"

static UIColor * _logos_method$_ungrouped$_UIBatteryView$fillColor(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [self getColFromRGB: @"bodyCol"];
}
static UIColor * _logos_method$_ungrouped$_UIBatteryView$bodyColor(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [self getColFromRGB: @"outlineCol"];
}
static UIColor * _logos_method$_ungrouped$_UIBatteryView$boltColor(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [self getColFromRGB: @"boltCol"];
}

static UIColor * _logos_method$_ungrouped$_UIBatteryView$getColFromRGB$(_LOGOS_SELF_TYPE_NORMAL _UIBatteryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * name) {
	float r = [[bundleDefaults valueForKey:[name stringByAppendingString:@"R"]] floatValue];
	float g = [[bundleDefaults valueForKey:[name stringByAppendingString:@"G"]] floatValue];
	float b = [[bundleDefaults valueForKey:[name stringByAppendingString:@"B"]] floatValue];

	return ([UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b /255.0f alpha:1.0f]);
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIBatteryView = objc_getClass("_UIBatteryView"); MSHookMessageEx(_logos_class$_ungrouped$_UIBatteryView, @selector(fillColor), (IMP)&_logos_method$_ungrouped$_UIBatteryView$fillColor, (IMP*)&_logos_orig$_ungrouped$_UIBatteryView$fillColor);MSHookMessageEx(_logos_class$_ungrouped$_UIBatteryView, @selector(bodyColor), (IMP)&_logos_method$_ungrouped$_UIBatteryView$bodyColor, (IMP*)&_logos_orig$_ungrouped$_UIBatteryView$bodyColor);MSHookMessageEx(_logos_class$_ungrouped$_UIBatteryView, @selector(boltColor), (IMP)&_logos_method$_ungrouped$_UIBatteryView$boltColor, (IMP*)&_logos_orig$_ungrouped$_UIBatteryView$boltColor);{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIColor *), strlen(@encode(UIColor *))); i += strlen(@encode(UIColor *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$_UIBatteryView, @selector(getColFromRGB:), (IMP)&_logos_method$_ungrouped$_UIBatteryView$getColFromRGB$, _typeEncoding); }} }
#line 33 "Tweak.xm"
