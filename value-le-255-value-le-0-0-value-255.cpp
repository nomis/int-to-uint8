#include <cstdint>

uint8_t convert(int value) {
	return value <= 255 ? (value <= 0 ? 0 : value) : 255;
}
