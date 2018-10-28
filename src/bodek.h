typedef void (*bodek_helper_cb)(void);

typedef struct {
    bodek_helper_cb cb; /* function callback */
} bodek_helper_t;

#ifdef __APPLE__

extern bodek_helper_t __start_bodek_helpers __asm("section$start$__DATA$bodek_helpers");
extern bodek_helper_t __stop_bodek_helpers  __asm("section$end$__DATA$bodek_helpers");

#define TEST(FN, BLOCK)                     \
    void FN(void) {                         \
        BLOCK                               \
    }                                       \
    static bodek_helper_t ptr_##FN              \
    __attribute((used, section("__DATA,bodek_helpers"))) = { \
        .cb = FN,                           \
    }
#elif

extern bodek_helper_t __start_bodek_helpers;
extern bodek_helper_t __stop_bodek_helpers;

#define TEST(FN, BLOCK)                     \
    void FN(void) {                         \
        BLOCK                               \
    }                                       \
    static bodek_helper_t ptr_##FN              \
    __attribute((used, section("bodek_helpers"))) = { \
        .cb = FN,                           \
    }
#endif

#define bodek_each_helper(ELEM, BLOCK) \
    for (bodek_helper_t *ELEM = &__start_bodek_helpers; \
         ELEM != &__stop_bodek_helpers; \
         ++ELEM) BLOCK \
