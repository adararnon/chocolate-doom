#ifdef __ANDROID__

#include <stdio.h>
#include <android/log.h>

#define TAG "DOOM"

android_LogPriority getLogPriority(FILE* stream) {
    if (stream == stdout) {
        return ANDROID_LOG_INFO;
    } else if (stream == stderr) {
        return ANDROID_LOG_ERROR;
    }

    return ANDROID_LOG_DEBUG;
}

int android_printf(const char* format, ...) {
    int res;
    va_list arg;
    va_start(arg, format);

    res = __android_log_vprint(ANDROID_LOG_INFO, TAG, format, arg);

    va_end(arg);

    return res;
}

int android_fprintf(FILE* stream, const char* format, ...) {
    int res;
    va_list arg;
    va_start(arg, format);

    res = __android_log_vprint(getLogPriority(stream), TAG, format, arg);

    va_end(arg);

    return res;
}

int android_vprintf(const char* format, va_list arg) {
    return __android_log_vprint(ANDROID_LOG_INFO, TAG, format, arg);
}

int android_vfprintf(FILE* stream, const char* format, va_list arg) {
    return __android_log_vprint(getLogPriority(stream), TAG, format, arg);
}

#endif // __ANDROID__
