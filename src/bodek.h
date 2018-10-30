#include "./assert.h"

typedef int (*bodek_helper_cb)(void);

typedef struct {
    bodek_helper_cb cb;
    const char* msg;
} bodek_helper_t;

#define PP_CAT(a, b) PP_CAT_I(a, b)
#define PP_CAT_I(a, b) PP_CAT_II(~, a ## b)
#define PP_CAT_II(p, res) res

#define BODEK_NAME PP_CAT(PP_CAT(PP_CAT(base, __COUNTER__), _), __LINE__)

#ifdef __APPLE__
extern bodek_helper_t __start_bodek_helpers __asm("section$start$__DATA$bodek_helpers");
extern bodek_helper_t __stop_bodek_helpers  __asm("section$end$__DATA$bodek_helpers");

#define _bodek(FN, MSG, BLOCK)                               \
    int FN(void) {                                           \
        BLOCK                                                \
        return BODEK_SUCC;                                   \
    }                                                        \
    static bodek_helper_t PP_CAT(ptr_, FN)                   \
    __attribute((used, section("__DATA,bodek_helpers"))) = { \
        .msg = MSG,                                          \
        .cb = FN,                                            \
    }
#elif

extern bodek_helper_t __start_bodek_helpers;
extern bodek_helper_t __stop_bodek_helpers;

#define _bodek(FN, MSG, BLOCK)                        \
    int FN(void) {                                    \
        BLOCK                                         \
        return BODEK_SUCC;                            \
    }                                                 \
    static bodek_helper_t ptr_ ## FN                  \
    __attribute((used, section("bodek_helpers"))) = { \
        .cb = FN,                                     \
        .msg = MSG,                                   \
    }
#endif

#define REDIR(X) X

#define bodek(MSG, BLOCK) \
    _bodek(REDIR(BODEK_NAME), MSG, BLOCK)

#define bodek_each_helper(ELEM)                         \
    for (bodek_helper_t *ELEM = &__start_bodek_helpers; \
         ELEM != &__stop_bodek_helpers;                 \
         ++ELEM)                                        
