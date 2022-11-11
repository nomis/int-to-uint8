#include <algorithm>
#include <cstdint>

uint8_t convert(int value) {
	return std::min(255, std::max(0, value));
}
