#include <algorithm>
#include <cstdint>

uint8_t convert(int value) {
	return std::max(std::min(value, 255), 0);
}
