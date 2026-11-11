#ifndef FAST_TELEMETRY_HPP
#define FAST_TELEMETRY_HPP
#include <math.h>
#include <stddef.h>
#include <stdint.h>

// Bounded fixed-point text output, without printf's floating-point formatter.
class Fast_Telemetry {
public:
    Fast_Telemetry(char* data, size_t capacity) : data(data), capacity(capacity) {}
    void Text(const char* text) { while(*text) Character(*text++); }
    void Unsigned(uint32_t value) {
        char digits[10];
        unsigned int count = 0;
        do { digits[count++] = (char)('0' + value % 10U); value /= 10U; } while(value);
        while(count) Character(digits[--count]);
    }
    void Fixed3(float value) {
        if(!isfinite(value) || fabsf(value) > 1000000.0f) { Text("nan"); return; }
        if(value < 0.0f) Character('-');
        const uint32_t scaled = (uint32_t)(fabsf(value) * 1000.0f + 0.5f);
        Unsigned(scaled / 1000U);
        const uint32_t fraction = scaled % 1000U;
        Character('.');
        Character((char)('0' + fraction / 100U));
        Character((char)('0' + (fraction / 10U) % 10U));
        Character((char)('0' + fraction % 10U));
    }
    size_t Size() const { return overflow ? 0U : length; }
private:
    void Character(char value) {
        if(length < capacity) data[length++] = value;
        else overflow = true;
    }
    char* data;
    size_t capacity;
    size_t length = 0;
    bool overflow = false;
};
#endif
