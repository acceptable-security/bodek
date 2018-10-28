#include <stdio.h>
#include "./bodek.h"

TEST(test1, {
	printf("Running a test");
});

int main(int argc, char* argv[]) {
	bodek_each_helper(fn, {
		fn->cb();
	})

	return 0;
}