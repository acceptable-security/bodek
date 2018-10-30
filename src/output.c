#include <stdio.h>

#define BODEK_CROSS "\xe2\x9C\x97"
#define BODEK_CHECK "\xe2\x9C\x94"

#define ANSI_RESET "\e[0m"

#define ANSI_FONT_BOLD "\e[1m"
#define ANSI_FONT_ITAL "\e[3m"
#define ANSI_FONT_LINE "\e[4m"
#define ANSI_FONT_STRK "\e[9m"

#define ANSI_COLOR_BLACK "\x1B[30m"
#define ANSI_COLOR_RED   "\x1B[31m"
#define ANSI_COLOR_GREEN "\x1B[32m"

void bodek_test_passed(int min, int max, const char* message) {
	printf(ANSI_FONT_BOLD
		   ANSI_COLOR_GREEN
		   BODEK_CHECK
		   ANSI_RESET
		   ANSI_FONT_BOLD
		   " [%d/%d] Test failed: "
		   ANSI_RESET
		   "%s"
		   "\n", min, max, message);
}

void bodek_test_failed(int min, int max, const char* message) {
	printf(ANSI_FONT_BOLD
		   ANSI_COLOR_RED
		   BODEK_CROSS
		   ANSI_RESET
		   ANSI_FONT_BOLD
		   " [%d/%d] Test succeeded: "
		   ANSI_RESET
		   "%s"
		   "\n", min, max, message);
}