#include "pffRootListController.h"

@implementation pffRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;

}

- (void)respring {
    pid_t respringPid;
    char *respringArgv[] = {"/usr/bin/killall", (kCFCoreFoundationVersionNumber >= kCFCoreFoundationVersionNumber_iOS_6_0) ? "backboardd" : "SpringBoard", NULL};
    posix_spawn(&respringPid, respringArgv[0], NULL, NULL, respringArgv, NULL);
    waitpid(respringPid, NULL, WEXITED);
}

@end
