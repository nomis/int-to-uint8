#include <cstdint>

uint8_t convert(int value) {
	return value >= 255 ? 255 : (value > 0 ? value : 0);
}
