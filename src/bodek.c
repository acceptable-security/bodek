#include <stdio.h>
#include "./bodek.h"
#include "./output.h"

int main(int argc, char* argv[]) {
	unsigned int helper_count = 0;

	bodek_each_helper(fn) {
		helper_count++;
	}

	unsigned int helper_index = 0;

	bodek_each_helper(fn) {
		int res = fn->cb();

		if ( res == BODEK_SUCC ) {
			bodek_test_passed(helper_index + 1, helper_count, fn->msg);
		}
		else {
			bodek_test_failed(helper_index + 1, helper_count, fn->msg);
		}

		helper_index++;
	}

	return 0;
}