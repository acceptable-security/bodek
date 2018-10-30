#include "bodek.h"
#include "assert.h"
#include <stdlib.h>

bodek("Make sure we can evaluate a test", {
	// Do nothing
});

bodek("Make sure we can handle a failing test", {
	ASSERT(0)
});

bodek("Make sure ASSERT_EQ evaluates 1 == 1", {
	ASSERT_EQ(1, 1)
});

bodek("Make sure ASSERT_EQ fails on 1 == 0", {
	ASSERT_EQ(1, 0)
});

bodek("Make sure ASSERT_NOT_EQ evaluates 1 != 0 correctly", {

});

bodek("Successful test", {
	int a[5];
	int b[5];

	memset(a, 0, sizeof(int) * 5);
	memset(b, 0, sizeof(int) * 5);

	ASSERT_BUFF_EQ(a, b, 5)
});
 
bodek("Failing test", {
	int a[5];
	int b[5];

	memset(a, 0, sizeof(int) * 5);
	memset(b, 1, sizeof(int) * 5);

	ASSERT_BUFF_EQ(a, b, 5)
});

int main(int argc, char* argv[]) {
	BODEK_RUN();
}