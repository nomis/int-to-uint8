#include <algorithm>
#include <cstdint>

uint8_t convert(int value) {
	return std::min(std::max(value, 0), 255);
}
