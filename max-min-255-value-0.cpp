#include <algorithm>
#include <cstdint>

uint8_t convert(int value) {
	return std::max(std::min(255, value), 0);
}
