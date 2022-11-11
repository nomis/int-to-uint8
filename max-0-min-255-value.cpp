#include <algorithm>
#include <cstdint>

uint8_t convert(int value) {
	return std::max(0, std::min(255, value));
}
