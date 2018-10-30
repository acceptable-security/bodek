#include <string.h>

#define BODEK_FAIL 0
#define BODEK_SUCC 1

#define ASSERT(X)          \
	if ( !(X) ) {          \
		return BODEK_FAIL; \
	}

#define ASSERT_EQ(X, Y) \
	ASSERT((X) == (Y))

#define ASSERT_NOT_EQ(X, Y) \
	ASSERT((X) != (Y))

#define ASSERT_BUFF_EQ(X, Y, N) \
	ASSERT(memcmp((X), (Y), (N)) == 0)

#define ASSERT_BUFF_NOT_EQ(X, Y, N) \
	ASSERT(memcmp((X), (Y), (N)) != 0)
