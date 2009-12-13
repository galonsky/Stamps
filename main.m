
#import "Controller.h"

Controller *con;

int main(int argc, char *argv[]) {
	con = [[Controller alloc] init];
	[con start];
    
    return EXIT_SUCCESS;
}