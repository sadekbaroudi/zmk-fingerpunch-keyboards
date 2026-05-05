# SPDX-License-Identifier: MIT

board_runner_args(nrfjprog "--nrf-family=NRF52" "--softreset")
include(${ZEPHYR_BASE}/boards/common/uf2.board.cmake)
include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)

# I copied the above from vikoto, instead of what I used to have here
# board_runner_args(nrfjprog "--nrf-family=NRF52" "--softreset")
# include(${ZEPHYR_BASE}/boards/common/blackmagicprobe.board.cmake)
# include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)