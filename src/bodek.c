#include <stdio.h>
#include "./bodek.h"

bodek(test1, {
	printf("Running a test");
});

int main(int argc, char* argv[]) {
	unsigned int helper_count = 0;

	bodek_each_helper(fn) {
		helper_count++;
	}

	unsigned int helper_index = 0;

	bodek_each_helper(fn) {
		printf("Executing %d/%d\n", helper_index + 1, helper_count);
		fn->cb();
	}

	return 0;
}