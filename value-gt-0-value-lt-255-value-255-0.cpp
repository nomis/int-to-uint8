#include <cstdint>

uint8_t convert(int value) {
	return value > 0 ? (value < 255 ? value : 255) : 0;
}
