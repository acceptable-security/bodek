#include <string.h>
#include <stdio.h>

/**
 * Assertions
 */
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

/**
 * Helper definitions
 */

typedef enum {
    BODEK_BEFORE_TEST,
    BODEK_TEST,
    BODEK_AFTER_TEST
} bodek_run_t;

typedef struct {
    unsigned int test_n;
    void* user_data;
} bodek_ctx_t;

typedef int (*bodek_helper_cb)(bodek_ctx_t*);

typedef struct {
    bodek_helper_cb cb;
    const char* msg;
    bodek_run_t rt;
    
    char _align[5]; /* I have literally no idea why dont ask me */
} bodek_helper_t;

#define PP_CAT(a, b) PP_CAT_I(a, b)
#define PP_CAT_I(a, b) PP_CAT_II(~, a ## b)
#define PP_CAT_II(p, res) res

#define BODEK_NAME PP_CAT(PP_CAT(PP_CAT(base, __COUNTER__), _), __LINE__)

#ifdef __APPLE__
extern bodek_helper_t __start_bodek_helpers __asm("section$start$__DATA$bodek_helpers");
extern bodek_helper_t __stop_bodek_helpers  __asm("section$end$__DATA$bodek_helpers");

#define _bodek(FN, RT, MSG, BLOCK)                           \
    int FN(bodek_ctx_t* ctx) {                               \
        BLOCK                                                \
        return BODEK_SUCC;                                   \
    }                                                        \
    static bodek_helper_t PP_CAT(ptr_, FN)                   \
    __attribute((used, section("__DATA,bodek_helpers"))) = { \
        .cb = FN,                                            \
        .msg = MSG,                                          \
        .rt = RT,                                            \
    }
#elif

extern bodek_helper_t __start_bodek_helpers;
extern bodek_helper_t __stop_bodek_helpers;

#define _bodek(FN, RT, MSG, BLOCK)                    \
    int FN(bodek_ctx_t* ctx) {                        \
        BLOCK                                         \
        return BODEK_SUCC;                            \
    }                                                 \
    static bodek_helper_t ptr_ ## FN                  \
    __attribute((used, section("bodek_helpers"))) = { \
        .cb = FN,                                     \
        .msg = MSG,                                   \
        .rt = RT,                                     \
    }
#endif

#define REDIR(X) X

#define bodek(MSG, BLOCK) \
    _bodek(REDIR(BODEK_NAME), BODEK_TEST, MSG, BLOCK)

#define bodek_before_test(MSG, BLOCK) \
    _bodek(REDIR(BODEK_NAME), BODEK_BEFORE_TEST, MSG, BLOCK)

#define bodek_after_test(MSG, BLOCK) \
    _bodek(REDIR(BODEK_NAME), BODEK_AFTER_TEST, MSG, BLOCK)

#define bodek_each_helper(ELEM)                         \
    for (bodek_helper_t *ELEM = &__start_bodek_helpers; \
         ELEM != &__stop_bodek_helpers;                 \
         ++ELEM)                                        

/**
 * Printouts
 */
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

static void bodek_test_passed(int min, int max, const char* message) {
    printf(ANSI_FONT_BOLD
           ANSI_COLOR_GREEN
           BODEK_CHECK
           ANSI_RESET
           ANSI_FONT_BOLD
           " [%d/%d] Test succeeded: "
           ANSI_RESET
           "%s"
           "\n", min, max, message);
}

static void bodek_test_failed(int min, int max, const char* message) {
    printf(ANSI_FONT_BOLD
           ANSI_COLOR_RED
           BODEK_CROSS
           ANSI_RESET
           ANSI_FONT_BOLD
           " [%d/%d] Test failed: "
           ANSI_RESET
           "%s"
           "\n", min, max, message);
}

/**
 * Running the tests
 */
#define BODEK_RUN()                                                        \
    do {                                                                   \
        unsigned int helper_count = 0;                                     \
        unsigned int helper_index = 0;                                     \
        bodek_ctx_t ctx = {                                                \
            .test_n = 0,                                                   \
            .user_data = NULL,                                             \
        };                                                                 \
                                                                           \
        bodek_each_helper(fn)                                              \
            helper_count++;                                                \
                                                                           \
        bodek_each_helper(fn) {                                            \
            if ( fn->rt != BODEK_TEST ) {                                  \
                continue;                                                  \
            }                                                              \
            ctx.test_n = helper_index;                                     \
            ctx.user_data = NULL;                                          \
                                                                           \
            bodek_each_helper(pretest) {                                   \
                if ( pretest->rt != BODEK_BEFORE_TEST ) {                  \
                    continue;                                              \
                }                                                          \
                                                                           \
                pretest->cb(&ctx);                                         \
            }                                                              \
                                                                           \
            int res = fn->cb(&ctx);                                        \
                                                                           \
            bodek_each_helper(posttest) {                                  \
                if ( posttest->rt != BODEK_AFTER_TEST ) {                  \
                    continue;                                              \
                }                                                          \
                                                                           \
                posttest->cb(&ctx);                                        \
            }                                                              \
                                                                           \
                                                                           \
            if ( res == BODEK_SUCC ) {                                     \
                bodek_test_passed(helper_index + 1, helper_count, fn->msg);\
            }                                                              \
            else {                                                         \
                bodek_test_failed(helper_index + 1, helper_count, fn->msg);\
            }                                                              \
                                                                           \
            helper_index++;                                                \
        }                                                                  \
    } while(0)
