contract main {




// =====================  Runtime code  =====================


const sub_08863c5b(?) = 10

const sub_9c36abb8(?) = 10^16

const sub_a5063be1(?) = 65535

const sub_d0a5aa7e(?) = 9


mapping of uint256 balances;
array of uint256 stor1;
array of struct sub_3a80eb4c;
mapping of uint64 sub_b81835c4;
uint8 stor4; offset 160
address artistAddress;

function sub_004e7f16(?) {
    return uint128(stor1.length)
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_3a80eb4c(?) {
    require calldata.size - 4 >= 32
    return address(sub_3a80eb4c[arg1].field_0), uint256(sub_3a80eb4c[arg1].field_256), bool(uint8(sub_3a80eb4c[arg1].field_512))
}

function artist() {
    return artistAddress
}

function sub_7da5e05c(?) {
    return uint128(stor1.length.field_128)
}

function balance() {
    return balances[msg.sender]
}

function sub_b81835c4(?) {
    require calldata.size - 4 >= 32
    return sub_b81835c4[arg1]
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if balances[msg.sender] + msg.value < balances[msg.sender]:
        revert with 0, 'ds-math-add-overflow'
    balances[msg.sender] += msg.value
    return (balances[msg.sender] + msg.value)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= balances[msg.sender]:
        require arg1 == arg1
    else:
        require balances[msg.sender] == arg1
    if balances[msg.sender] - arg1 > balances[msg.sender]:
        revert with 0, 'ds-math-sub-underflow'
    balances[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return balances[msg.sender]
}

function sub_b35fba3c(?) {
    require calldata.size - 4 >= 32
    if 10 * uint256(sub_3a80eb4c[arg1 << 128].field_256) / 10 != uint256(sub_3a80eb4c[arg1 << 128].field_256):
        revert with 0, 'ds-math-mul-overflow'
    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[arg1 << 128].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[arg1 << 128].field_256):
        revert with 0, 'ds-math-mul-overflow'
    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[arg1 << 128].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[arg1 << 128].field_256):
        revert with 0, 'ds-math-add-overflow'
    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[arg1 << 128].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[arg1 << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[arg1 << 128].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
        revert with 0, 'ds-math-add-overflow'
    return (((10000000000 * 10^18 * uint256(sub_3a80eb4c[arg1 << 128].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[arg1 << 128].field_256))
}

function sub_1feb5212(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length <= 65535:
        require arg1.length == arg1.length
        require uint16(arg1.length)
        require uint16(arg1.length) == uint16(arg2.length)
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = uint16(arg1.length)
        if not uint16(arg1.length):
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192] = uint16(arg1.length)
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * uint16(arg1.length)) + 224
            require not uint8(stor4.field_160)
            uint8(stor4.field_160) = 1
            idx = 0
            while idx < uint16(arg1.length):
                _1926 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1926] = 0
                mem[_1926 + 32] = 0
                mem[_1926 + 64] = 0
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 144 len 16]
                mem[32] = 2
                _1947 = sha3(mem[(32 * idx) + 144 len 16], 2)
                _1948 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1948] = address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0)
                mem[_1948 + 32] = uint256(stor1[_1947].field_0)
                mem[_1948 + 64] = bool(uint8(sub_3a80eb4c[_1947].field_0))
                require bool(uint8(sub_3a80eb4c[_1947].field_0)) == 1
                require mem[_1948 + 12 len 20] != msg.sender
                if uint256(stor1[_1947].field_0) <= balances[msg.sender]:
                    require uint256(stor1[_1947].field_0) == uint256(stor1[_1947].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2536 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2536]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3206 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3207 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3208 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3208] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3208 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3208 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3207]) + (uint64((uint128(_3206) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3207]) + (uint64((uint128(_3206) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3207]) + (uint64((uint128(_3206) >> 64) + 1) << 64) << 128].field_256) = mem[_3208 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3207]) + (uint64((uint128(_3206) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3339 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3339] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3339 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3339 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3206) >> 64) + 1) << 64) + uint64(uint64(stor[_3207]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3206) >> 64) + 1) << 64) + uint64(uint64(stor[_3207]) + 1) << 128].field_256) = mem[_3339 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3206) >> 64) + 1) << 64) + uint64(uint64(stor[_3207]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3207]) + (uint64((uint128(_3206) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3206) >> 64) + 1) << 64) + uint64(uint64(stor[_3207]) + 1))
                            mem[0] = uint64((uint128(_3206) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3206) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3206) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2540 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2540]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3210 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3211 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3212 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3212] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3212 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3212 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3211]) + (uint64((uint128(_3210) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3211]) + (uint64((uint128(_3210) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3211]) + (uint64((uint128(_3210) >> 64) + 1) << 64) << 128].field_256) = mem[_3212 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3211]) + (uint64((uint128(_3210) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3346 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3346] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3346 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3346 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3210) >> 64) + 1) << 64) + uint64(uint64(stor[_3211]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3210) >> 64) + 1) << 64) + uint64(uint64(stor[_3211]) + 1) << 128].field_256) = mem[_3346 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3210) >> 64) + 1) << 64) + uint64(uint64(stor[_3211]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3211]) + (uint64((uint128(_3210) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3210) >> 64) + 1) << 64) + uint64(uint64(stor[_3211]) + 1))
                            mem[0] = uint64((uint128(_3210) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3210) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3210) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2544 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2544]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3214 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3215 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3216 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3216] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3216 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3216 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3215]) + (uint64((uint128(_3214) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3215]) + (uint64((uint128(_3214) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3215]) + (uint64((uint128(_3214) >> 64) + 1) << 64) << 128].field_256) = mem[_3216 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3215]) + (uint64((uint128(_3214) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3353 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3353] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3353 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3353 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3214) >> 64) + 1) << 64) + uint64(uint64(stor[_3215]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3214) >> 64) + 1) << 64) + uint64(uint64(stor[_3215]) + 1) << 128].field_256) = mem[_3353 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3214) >> 64) + 1) << 64) + uint64(uint64(stor[_3215]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3215]) + (uint64((uint128(_3214) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3214) >> 64) + 1) << 64) + uint64(uint64(stor[_3215]) + 1))
                            mem[0] = uint64((uint128(_3214) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3214) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3214) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2548 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2548]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3218 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3219 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3220 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3220] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3220 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3220 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3219]) + (uint64((uint128(_3218) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3219]) + (uint64((uint128(_3218) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3219]) + (uint64((uint128(_3218) >> 64) + 1) << 64) << 128].field_256) = mem[_3220 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3219]) + (uint64((uint128(_3218) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3360 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3360] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3360 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3360 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3218) >> 64) + 1) << 64) + uint64(uint64(stor[_3219]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3218) >> 64) + 1) << 64) + uint64(uint64(stor[_3219]) + 1) << 128].field_256) = mem[_3360 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3218) >> 64) + 1) << 64) + uint64(uint64(stor[_3219]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3219]) + (uint64((uint128(_3218) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3218) >> 64) + 1) << 64) + uint64(uint64(stor[_3219]) + 1))
                            mem[0] = uint64((uint128(_3218) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3218) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3218) >> 64) + 1 << 192] + 2)
                else:
                    require balances[msg.sender] == uint256(stor1[_1947].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2552 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2552]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3222 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3223 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3224 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3224] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3224 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3224 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3223]) + (uint64((uint128(_3222) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3223]) + (uint64((uint128(_3222) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3223]) + (uint64((uint128(_3222) >> 64) + 1) << 64) << 128].field_256) = mem[_3224 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3223]) + (uint64((uint128(_3222) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3367 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3367] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3367 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3367 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3222) >> 64) + 1) << 64) + uint64(uint64(stor[_3223]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3222) >> 64) + 1) << 64) + uint64(uint64(stor[_3223]) + 1) << 128].field_256) = mem[_3367 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3222) >> 64) + 1) << 64) + uint64(uint64(stor[_3223]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3223]) + (uint64((uint128(_3222) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3222) >> 64) + 1) << 64) + uint64(uint64(stor[_3223]) + 1))
                            mem[0] = uint64((uint128(_3222) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3222) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3222) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2556 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2556]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3226 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3227 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3228 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3228] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3228 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3228 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3227]) + (uint64((uint128(_3226) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3227]) + (uint64((uint128(_3226) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3227]) + (uint64((uint128(_3226) >> 64) + 1) << 64) << 128].field_256) = mem[_3228 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3227]) + (uint64((uint128(_3226) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3374 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3374] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3374 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3374 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3226) >> 64) + 1) << 64) + uint64(uint64(stor[_3227]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3226) >> 64) + 1) << 64) + uint64(uint64(stor[_3227]) + 1) << 128].field_256) = mem[_3374 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3226) >> 64) + 1) << 64) + uint64(uint64(stor[_3227]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3227]) + (uint64((uint128(_3226) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3226) >> 64) + 1) << 64) + uint64(uint64(stor[_3227]) + 1))
                            mem[0] = uint64((uint128(_3226) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3226) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3226) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2560 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2560]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3230 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3231 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3232 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3232] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3232 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3232 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3231]) + (uint64((uint128(_3230) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3231]) + (uint64((uint128(_3230) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3231]) + (uint64((uint128(_3230) >> 64) + 1) << 64) << 128].field_256) = mem[_3232 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3231]) + (uint64((uint128(_3230) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3381 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3381] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3381 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3381 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3230) >> 64) + 1) << 64) + uint64(uint64(stor[_3231]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3230) >> 64) + 1) << 64) + uint64(uint64(stor[_3231]) + 1) << 128].field_256) = mem[_3381 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3230) >> 64) + 1) << 64) + uint64(uint64(stor[_3231]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3231]) + (uint64((uint128(_3230) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3230) >> 64) + 1) << 64) + uint64(uint64(stor[_3231]) + 1))
                            mem[0] = uint64((uint128(_3230) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3230) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3230) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1947].field_0) / 9 != uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1947].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1947].field_0)
                            mem[0] = mem[_1948 + 12 len 20]
                            _2564 = sha3(mem[0], 0)
                            if uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1947].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1948 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2564]) + uint256(stor1[_1947].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1947].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1948 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1948 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1947].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3234 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3235 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3236 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3236] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3236 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3236 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3235]) + (uint64((uint128(_3234) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3235]) + (uint64((uint128(_3234) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3235]) + (uint64((uint128(_3234) >> 64) + 1) << 64) << 128].field_256) = mem[_3236 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3235]) + (uint64((uint128(_3234) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3388 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3388] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3388 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3388 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3234) >> 64) + 1) << 64) + uint64(uint64(stor[_3235]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3234) >> 64) + 1) << 64) + uint64(uint64(stor[_3235]) + 1) << 128].field_256) = mem[_3388 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3234) >> 64) + 1) << 64) + uint64(uint64(stor[_3235]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3235]) + (uint64((uint128(_3234) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3234) >> 64) + 1) << 64) + uint64(uint64(stor[_3235]) + 1))
                            mem[0] = uint64((uint128(_3234) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3234) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3234) >> 64) + 1 << 192] + 2)
                idx = idx + 1
                continue 
            _1914 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _1916 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _1916) + 128
            mem[(32 * _1916) + _1914 + 128] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _3815 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * _1916) + _1914 + 160 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
            mem[_1914 + 64] = (32 * _3815) + (32 * _1916) + 160
            mem[(32 * _3815) + (32 * _1916) + _1914 + 160] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            _3847 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            mem[(32 * _3815) + (32 * _1916) + _1914 + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])]
            emit 0xcf8251aa: mem[mem[64] len (32 * _3847) + (32 * _3815) + (32 * _1916) + _1914 + -mem[64] + 192]
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * uint16(arg1.length)] = code.data[3776 len 32 * uint16(arg1.length)]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192] = uint16(arg1.length)
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * uint16(arg1.length)) + 224
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224 len 32 * uint16(arg1.length)] = code.data[3776 len 32 * uint16(arg1.length)]
            require not uint8(stor4.field_160)
            uint8(stor4.field_160) = 1
            idx = 0
            while idx < uint16(arg1.length):
                _1927 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1927] = 0
                mem[_1927 + 32] = 0
                mem[_1927 + 64] = 0
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 144 len 16]
                mem[32] = 2
                _1950 = sha3(mem[(32 * idx) + 144 len 16], 2)
                _1951 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1951] = address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0)
                mem[_1951 + 32] = uint256(stor1[_1950].field_0)
                mem[_1951 + 64] = bool(uint8(sub_3a80eb4c[_1950].field_0))
                require bool(uint8(sub_3a80eb4c[_1950].field_0)) == 1
                require mem[_1951 + 12 len 20] != msg.sender
                if uint256(stor1[_1950].field_0) <= balances[msg.sender]:
                    require uint256(stor1[_1950].field_0) == uint256(stor1[_1950].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2568 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2568]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3238 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3239 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3240 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3240] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3240 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3240 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3239]) + (uint64((uint128(_3238) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3239]) + (uint64((uint128(_3238) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3239]) + (uint64((uint128(_3238) >> 64) + 1) << 64) << 128].field_256) = mem[_3240 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3239]) + (uint64((uint128(_3238) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3395 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3395] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3395 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3395 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3238) >> 64) + 1) << 64) + uint64(uint64(stor[_3239]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3238) >> 64) + 1) << 64) + uint64(uint64(stor[_3239]) + 1) << 128].field_256) = mem[_3395 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3238) >> 64) + 1) << 64) + uint64(uint64(stor[_3239]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3239]) + (uint64((uint128(_3238) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3238) >> 64) + 1) << 64) + uint64(uint64(stor[_3239]) + 1))
                            mem[0] = uint64((uint128(_3238) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3238) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3238) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2572 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2572]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3242 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3243 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3244 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3244] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3244 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3244 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3243]) + (uint64((uint128(_3242) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3243]) + (uint64((uint128(_3242) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3243]) + (uint64((uint128(_3242) >> 64) + 1) << 64) << 128].field_256) = mem[_3244 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3243]) + (uint64((uint128(_3242) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3402 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3402] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3402 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3402 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3242) >> 64) + 1) << 64) + uint64(uint64(stor[_3243]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3242) >> 64) + 1) << 64) + uint64(uint64(stor[_3243]) + 1) << 128].field_256) = mem[_3402 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3242) >> 64) + 1) << 64) + uint64(uint64(stor[_3243]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3243]) + (uint64((uint128(_3242) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3242) >> 64) + 1) << 64) + uint64(uint64(stor[_3243]) + 1))
                            mem[0] = uint64((uint128(_3242) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3242) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3242) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2576 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2576]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3246 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3247 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3248 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3248] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3248 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3248 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3247]) + (uint64((uint128(_3246) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3247]) + (uint64((uint128(_3246) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3247]) + (uint64((uint128(_3246) >> 64) + 1) << 64) << 128].field_256) = mem[_3248 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3247]) + (uint64((uint128(_3246) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3409 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3409] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3409 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3409 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3246) >> 64) + 1) << 64) + uint64(uint64(stor[_3247]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3246) >> 64) + 1) << 64) + uint64(uint64(stor[_3247]) + 1) << 128].field_256) = mem[_3409 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3246) >> 64) + 1) << 64) + uint64(uint64(stor[_3247]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3247]) + (uint64((uint128(_3246) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3246) >> 64) + 1) << 64) + uint64(uint64(stor[_3247]) + 1))
                            mem[0] = uint64((uint128(_3246) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3246) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3246) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2580 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2580]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3250 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3251 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3252 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3252] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3252 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3252 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3251]) + (uint64((uint128(_3250) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3251]) + (uint64((uint128(_3250) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3251]) + (uint64((uint128(_3250) >> 64) + 1) << 64) << 128].field_256) = mem[_3252 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3251]) + (uint64((uint128(_3250) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3416 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3416] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3416 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3416 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3250) >> 64) + 1) << 64) + uint64(uint64(stor[_3251]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3250) >> 64) + 1) << 64) + uint64(uint64(stor[_3251]) + 1) << 128].field_256) = mem[_3416 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3250) >> 64) + 1) << 64) + uint64(uint64(stor[_3251]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3251]) + (uint64((uint128(_3250) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3250) >> 64) + 1) << 64) + uint64(uint64(stor[_3251]) + 1))
                            mem[0] = uint64((uint128(_3250) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3250) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3250) >> 64) + 1 << 192] + 2)
                else:
                    require balances[msg.sender] == uint256(stor1[_1950].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2584 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2584]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3254 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3255 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3256 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3256] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3256 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3256 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3255]) + (uint64((uint128(_3254) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3255]) + (uint64((uint128(_3254) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3255]) + (uint64((uint128(_3254) >> 64) + 1) << 64) << 128].field_256) = mem[_3256 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3255]) + (uint64((uint128(_3254) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3423 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3423] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3423 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3423 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3254) >> 64) + 1) << 64) + uint64(uint64(stor[_3255]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3254) >> 64) + 1) << 64) + uint64(uint64(stor[_3255]) + 1) << 128].field_256) = mem[_3423 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3254) >> 64) + 1) << 64) + uint64(uint64(stor[_3255]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3255]) + (uint64((uint128(_3254) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3254) >> 64) + 1) << 64) + uint64(uint64(stor[_3255]) + 1))
                            mem[0] = uint64((uint128(_3254) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3254) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3254) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2588 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2588]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3258 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3259 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3260 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3260] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3260 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3260 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3259]) + (uint64((uint128(_3258) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3259]) + (uint64((uint128(_3258) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3259]) + (uint64((uint128(_3258) >> 64) + 1) << 64) << 128].field_256) = mem[_3260 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3259]) + (uint64((uint128(_3258) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3430 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3430] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3430 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3430 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3258) >> 64) + 1) << 64) + uint64(uint64(stor[_3259]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3258) >> 64) + 1) << 64) + uint64(uint64(stor[_3259]) + 1) << 128].field_256) = mem[_3430 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3258) >> 64) + 1) << 64) + uint64(uint64(stor[_3259]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3259]) + (uint64((uint128(_3258) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3258) >> 64) + 1) << 64) + uint64(uint64(stor[_3259]) + 1))
                            mem[0] = uint64((uint128(_3258) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3258) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3258) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2592 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2592]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3262 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3263 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3264 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3264] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3264 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3264 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3263]) + (uint64((uint128(_3262) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3263]) + (uint64((uint128(_3262) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3263]) + (uint64((uint128(_3262) >> 64) + 1) << 64) << 128].field_256) = mem[_3264 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3263]) + (uint64((uint128(_3262) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3437 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3437] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3437 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3437 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3262) >> 64) + 1) << 64) + uint64(uint64(stor[_3263]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3262) >> 64) + 1) << 64) + uint64(uint64(stor[_3263]) + 1) << 128].field_256) = mem[_3437 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3262) >> 64) + 1) << 64) + uint64(uint64(stor[_3263]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3263]) + (uint64((uint128(_3262) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3262) >> 64) + 1) << 64) + uint64(uint64(stor[_3263]) + 1))
                            mem[0] = uint64((uint128(_3262) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3262) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3262) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1950].field_0) / 9 != uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1950].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1950].field_0)
                            mem[0] = mem[_1951 + 12 len 20]
                            _2596 = sha3(mem[0], 0)
                            if uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1950].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1951 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2596]) + uint256(stor1[_1950].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1950].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1951 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1951 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1950].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3266 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3267 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3268 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3268] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3268 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3268 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3267]) + (uint64((uint128(_3266) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3267]) + (uint64((uint128(_3266) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3267]) + (uint64((uint128(_3266) >> 64) + 1) << 64) << 128].field_256) = mem[_3268 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3267]) + (uint64((uint128(_3266) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3444 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3444] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3444 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3444 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3266) >> 64) + 1) << 64) + uint64(uint64(stor[_3267]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3266) >> 64) + 1) << 64) + uint64(uint64(stor[_3267]) + 1) << 128].field_256) = mem[_3444 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3266) >> 64) + 1) << 64) + uint64(uint64(stor[_3267]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3267]) + (uint64((uint128(_3266) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3266) >> 64) + 1) << 64) + uint64(uint64(stor[_3267]) + 1))
                            mem[0] = uint64((uint128(_3266) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3266) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3266) >> 64) + 1 << 192] + 2)
                idx = idx + 1
                continue 
            _1917 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _1919 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_1917 + 32] = (32 * _1919) + 128
            mem[(32 * _1919) + _1917 + 128] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _3818 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * _1919) + _1917 + 160 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
            mem[_1917 + 64] = (32 * _3818) + (32 * _1919) + 160
            mem[(32 * _3818) + (32 * _1919) + _1917 + 160] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            _3850 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            mem[(32 * _3818) + (32 * _1919) + _1917 + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])]
            emit 0xcf8251aa: mem[mem[64] len (32 * _3850) + (32 * _3818) + (32 * _1919) + _1917 + -mem[64] + 192]
    else:
        require 65535 == arg1.length
        require uint16(arg1.length)
        require uint16(arg1.length) == uint16(arg2.length)
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = uint16(arg1.length)
        if not uint16(arg1.length):
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192] = uint16(arg1.length)
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * uint16(arg1.length)) + 224
            require not uint8(stor4.field_160)
            uint8(stor4.field_160) = 1
            idx = 0
            while idx < uint16(arg1.length):
                _1928 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1928] = 0
                mem[_1928 + 32] = 0
                mem[_1928 + 64] = 0
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 144 len 16]
                mem[32] = 2
                _1953 = sha3(mem[(32 * idx) + 144 len 16], 2)
                _1954 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1954] = address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0)
                mem[_1954 + 32] = uint256(stor1[_1953].field_0)
                mem[_1954 + 64] = bool(uint8(sub_3a80eb4c[_1953].field_0))
                require bool(uint8(sub_3a80eb4c[_1953].field_0)) == 1
                require mem[_1954 + 12 len 20] != msg.sender
                if uint256(stor1[_1953].field_0) <= balances[msg.sender]:
                    require uint256(stor1[_1953].field_0) == uint256(stor1[_1953].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2600 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2600]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3270 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3271 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3272 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3272] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3272 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3272 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3271]) + (uint64((uint128(_3270) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3271]) + (uint64((uint128(_3270) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3271]) + (uint64((uint128(_3270) >> 64) + 1) << 64) << 128].field_256) = mem[_3272 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3271]) + (uint64((uint128(_3270) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3451 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3451] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3451 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3451 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3270) >> 64) + 1) << 64) + uint64(uint64(stor[_3271]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3270) >> 64) + 1) << 64) + uint64(uint64(stor[_3271]) + 1) << 128].field_256) = mem[_3451 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3270) >> 64) + 1) << 64) + uint64(uint64(stor[_3271]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3271]) + (uint64((uint128(_3270) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3270) >> 64) + 1) << 64) + uint64(uint64(stor[_3271]) + 1))
                            mem[0] = uint64((uint128(_3270) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3270) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3270) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2604 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2604]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3274 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3275 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3276 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3276] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3276 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3276 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3275]) + (uint64((uint128(_3274) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3275]) + (uint64((uint128(_3274) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3275]) + (uint64((uint128(_3274) >> 64) + 1) << 64) << 128].field_256) = mem[_3276 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3275]) + (uint64((uint128(_3274) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3458 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3458] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3458 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3458 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3274) >> 64) + 1) << 64) + uint64(uint64(stor[_3275]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3274) >> 64) + 1) << 64) + uint64(uint64(stor[_3275]) + 1) << 128].field_256) = mem[_3458 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3274) >> 64) + 1) << 64) + uint64(uint64(stor[_3275]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3275]) + (uint64((uint128(_3274) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3274) >> 64) + 1) << 64) + uint64(uint64(stor[_3275]) + 1))
                            mem[0] = uint64((uint128(_3274) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3274) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3274) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2608 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2608]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3278 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3279 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3280 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3280] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3280 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3280 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3279]) + (uint64((uint128(_3278) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3279]) + (uint64((uint128(_3278) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3279]) + (uint64((uint128(_3278) >> 64) + 1) << 64) << 128].field_256) = mem[_3280 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3279]) + (uint64((uint128(_3278) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3465 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3465] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3465 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3465 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3278) >> 64) + 1) << 64) + uint64(uint64(stor[_3279]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3278) >> 64) + 1) << 64) + uint64(uint64(stor[_3279]) + 1) << 128].field_256) = mem[_3465 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3278) >> 64) + 1) << 64) + uint64(uint64(stor[_3279]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3279]) + (uint64((uint128(_3278) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3278) >> 64) + 1) << 64) + uint64(uint64(stor[_3279]) + 1))
                            mem[0] = uint64((uint128(_3278) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3278) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3278) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2612 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2612]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3282 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3283 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3284 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3284] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3284 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3284 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3283]) + (uint64((uint128(_3282) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3283]) + (uint64((uint128(_3282) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3283]) + (uint64((uint128(_3282) >> 64) + 1) << 64) << 128].field_256) = mem[_3284 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3283]) + (uint64((uint128(_3282) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3472 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3472] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3472 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3472 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3282) >> 64) + 1) << 64) + uint64(uint64(stor[_3283]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3282) >> 64) + 1) << 64) + uint64(uint64(stor[_3283]) + 1) << 128].field_256) = mem[_3472 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3282) >> 64) + 1) << 64) + uint64(uint64(stor[_3283]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3283]) + (uint64((uint128(_3282) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3282) >> 64) + 1) << 64) + uint64(uint64(stor[_3283]) + 1))
                            mem[0] = uint64((uint128(_3282) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3282) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3282) >> 64) + 1 << 192] + 2)
                else:
                    require balances[msg.sender] == uint256(stor1[_1953].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2616 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2616]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3286 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3287 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3288 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3288] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3288 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3288 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3287]) + (uint64((uint128(_3286) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3287]) + (uint64((uint128(_3286) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3287]) + (uint64((uint128(_3286) >> 64) + 1) << 64) << 128].field_256) = mem[_3288 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3287]) + (uint64((uint128(_3286) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3479 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3479] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3479 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3479 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3286) >> 64) + 1) << 64) + uint64(uint64(stor[_3287]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3286) >> 64) + 1) << 64) + uint64(uint64(stor[_3287]) + 1) << 128].field_256) = mem[_3479 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3286) >> 64) + 1) << 64) + uint64(uint64(stor[_3287]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3287]) + (uint64((uint128(_3286) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3286) >> 64) + 1) << 64) + uint64(uint64(stor[_3287]) + 1))
                            mem[0] = uint64((uint128(_3286) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3286) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3286) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2620 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2620]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3290 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3291 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3292 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3292] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3292 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3292 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3291]) + (uint64((uint128(_3290) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3291]) + (uint64((uint128(_3290) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3291]) + (uint64((uint128(_3290) >> 64) + 1) << 64) << 128].field_256) = mem[_3292 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3291]) + (uint64((uint128(_3290) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3486 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3486] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3486 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3486 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3290) >> 64) + 1) << 64) + uint64(uint64(stor[_3291]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3290) >> 64) + 1) << 64) + uint64(uint64(stor[_3291]) + 1) << 128].field_256) = mem[_3486 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3290) >> 64) + 1) << 64) + uint64(uint64(stor[_3291]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3291]) + (uint64((uint128(_3290) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3290) >> 64) + 1) << 64) + uint64(uint64(stor[_3291]) + 1))
                            mem[0] = uint64((uint128(_3290) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3290) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3290) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2624 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2624]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3294 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3295 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3296 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3296] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3296 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3296 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3295]) + (uint64((uint128(_3294) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3295]) + (uint64((uint128(_3294) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3295]) + (uint64((uint128(_3294) >> 64) + 1) << 64) << 128].field_256) = mem[_3296 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3295]) + (uint64((uint128(_3294) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3493 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3493] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3493 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3493 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3294) >> 64) + 1) << 64) + uint64(uint64(stor[_3295]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3294) >> 64) + 1) << 64) + uint64(uint64(stor[_3295]) + 1) << 128].field_256) = mem[_3493 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3294) >> 64) + 1) << 64) + uint64(uint64(stor[_3295]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3295]) + (uint64((uint128(_3294) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3294) >> 64) + 1) << 64) + uint64(uint64(stor[_3295]) + 1))
                            mem[0] = uint64((uint128(_3294) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3294) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3294) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1953].field_0) / 9 != uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1953].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1953].field_0)
                            mem[0] = mem[_1954 + 12 len 20]
                            _2628 = sha3(mem[0], 0)
                            if uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1953].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1954 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2628]) + uint256(stor1[_1953].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1953].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1954 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1954 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1953].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3298 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3299 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3300 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3300] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3300 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3300 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3299]) + (uint64((uint128(_3298) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3299]) + (uint64((uint128(_3298) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3299]) + (uint64((uint128(_3298) >> 64) + 1) << 64) << 128].field_256) = mem[_3300 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3299]) + (uint64((uint128(_3298) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3500 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3500] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3500 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3500 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3298) >> 64) + 1) << 64) + uint64(uint64(stor[_3299]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3298) >> 64) + 1) << 64) + uint64(uint64(stor[_3299]) + 1) << 128].field_256) = mem[_3500 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3298) >> 64) + 1) << 64) + uint64(uint64(stor[_3299]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3299]) + (uint64((uint128(_3298) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3298) >> 64) + 1) << 64) + uint64(uint64(stor[_3299]) + 1))
                            mem[0] = uint64((uint128(_3298) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3298) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3298) >> 64) + 1 << 192] + 2)
                idx = idx + 1
                continue 
            _1920 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _1922 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_1920 + 32] = (32 * _1922) + 128
            mem[(32 * _1922) + _1920 + 128] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _3821 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * _1922) + _1920 + 160 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
            mem[_1920 + 64] = (32 * _3821) + (32 * _1922) + 160
            mem[(32 * _3821) + (32 * _1922) + _1920 + 160] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            _3853 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            mem[(32 * _3821) + (32 * _1922) + _1920 + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])]
            emit 0xcf8251aa: mem[mem[64] len (32 * _3853) + (32 * _3821) + (32 * _1922) + _1920 + -mem[64] + 192]
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * uint16(arg1.length)] = code.data[3776 len 32 * uint16(arg1.length)]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192] = uint16(arg1.length)
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * uint16(arg1.length)) + 224
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224 len 32 * uint16(arg1.length)] = code.data[3776 len 32 * uint16(arg1.length)]
            require not uint8(stor4.field_160)
            uint8(stor4.field_160) = 1
            idx = 0
            while idx < uint16(arg1.length):
                _1929 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1929] = 0
                mem[_1929 + 32] = 0
                mem[_1929 + 64] = 0
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 144 len 16]
                mem[32] = 2
                _1956 = sha3(mem[(32 * idx) + 144 len 16], 2)
                _1957 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1957] = address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0)
                mem[_1957 + 32] = uint256(stor1[_1956].field_0)
                mem[_1957 + 64] = bool(uint8(sub_3a80eb4c[_1956].field_0))
                require bool(uint8(sub_3a80eb4c[_1956].field_0)) == 1
                require mem[_1957 + 12 len 20] != msg.sender
                if uint256(stor1[_1956].field_0) <= balances[msg.sender]:
                    require uint256(stor1[_1956].field_0) == uint256(stor1[_1956].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2632 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2632]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3302 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3303 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3304 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3304] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3304 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3304 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3303]) + (uint64((uint128(_3302) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3303]) + (uint64((uint128(_3302) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3303]) + (uint64((uint128(_3302) >> 64) + 1) << 64) << 128].field_256) = mem[_3304 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3303]) + (uint64((uint128(_3302) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3507 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3507] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3507 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3507 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3302) >> 64) + 1) << 64) + uint64(uint64(stor[_3303]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3302) >> 64) + 1) << 64) + uint64(uint64(stor[_3303]) + 1) << 128].field_256) = mem[_3507 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3302) >> 64) + 1) << 64) + uint64(uint64(stor[_3303]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3303]) + (uint64((uint128(_3302) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3302) >> 64) + 1) << 64) + uint64(uint64(stor[_3303]) + 1))
                            mem[0] = uint64((uint128(_3302) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3302) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3302) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2636 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2636]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3306 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3307 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3308 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3308] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3308 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3308 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3307]) + (uint64((uint128(_3306) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3307]) + (uint64((uint128(_3306) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3307]) + (uint64((uint128(_3306) >> 64) + 1) << 64) << 128].field_256) = mem[_3308 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3307]) + (uint64((uint128(_3306) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3514 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3514] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3514 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3514 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3306) >> 64) + 1) << 64) + uint64(uint64(stor[_3307]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3306) >> 64) + 1) << 64) + uint64(uint64(stor[_3307]) + 1) << 128].field_256) = mem[_3514 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3306) >> 64) + 1) << 64) + uint64(uint64(stor[_3307]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3307]) + (uint64((uint128(_3306) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3306) >> 64) + 1) << 64) + uint64(uint64(stor[_3307]) + 1))
                            mem[0] = uint64((uint128(_3306) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3306) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3306) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2640 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2640]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3310 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3311 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3312 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3312] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3312 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3312 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3311]) + (uint64((uint128(_3310) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3311]) + (uint64((uint128(_3310) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3311]) + (uint64((uint128(_3310) >> 64) + 1) << 64) << 128].field_256) = mem[_3312 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3311]) + (uint64((uint128(_3310) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3521 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3521] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3521 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3521 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3310) >> 64) + 1) << 64) + uint64(uint64(stor[_3311]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3310) >> 64) + 1) << 64) + uint64(uint64(stor[_3311]) + 1) << 128].field_256) = mem[_3521 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3310) >> 64) + 1) << 64) + uint64(uint64(stor[_3311]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3311]) + (uint64((uint128(_3310) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3310) >> 64) + 1) << 64) + uint64(uint64(stor[_3311]) + 1))
                            mem[0] = uint64((uint128(_3310) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3310) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3310) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2644 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2644]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3314 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3315 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3316 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3316] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3316 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3316 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3315]) + (uint64((uint128(_3314) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3315]) + (uint64((uint128(_3314) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3315]) + (uint64((uint128(_3314) >> 64) + 1) << 64) << 128].field_256) = mem[_3316 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3315]) + (uint64((uint128(_3314) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3528 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3528] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3528 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3528 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3314) >> 64) + 1) << 64) + uint64(uint64(stor[_3315]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3314) >> 64) + 1) << 64) + uint64(uint64(stor[_3315]) + 1) << 128].field_256) = mem[_3528 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3314) >> 64) + 1) << 64) + uint64(uint64(stor[_3315]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3315]) + (uint64((uint128(_3314) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3314) >> 64) + 1) << 64) + uint64(uint64(stor[_3315]) + 1))
                            mem[0] = uint64((uint128(_3314) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3314) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3314) >> 64) + 1 << 192] + 2)
                else:
                    require balances[msg.sender] == uint256(stor1[_1956].field_0)
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[96]
                    if 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 10 != uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) / 1000000000 * 10^18 != 10 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 < 10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256):
                        revert with 0, 'ds-math-add-overflow'
                    if ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) < (10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    if mem[(32 * idx) + (32 * arg1.length) + 160] <= ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256):
                        require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2648 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2648]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3318 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3319 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3320 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3320] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3320 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3320 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3319]) + (uint64((uint128(_3318) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3319]) + (uint64((uint128(_3318) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3319]) + (uint64((uint128(_3318) >> 64) + 1) << 64) << 128].field_256) = mem[_3320 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3319]) + (uint64((uint128(_3318) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3535 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3535] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3535 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3535 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3318) >> 64) + 1) << 64) + uint64(uint64(stor[_3319]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3318) >> 64) + 1) << 64) + uint64(uint64(stor[_3319]) + 1) << 128].field_256) = mem[_3535 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3318) >> 64) + 1) << 64) + uint64(uint64(stor[_3319]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3319]) + (uint64((uint128(_3318) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3318) >> 64) + 1) << 64) + uint64(uint64(stor[_3319]) + 1))
                            mem[0] = uint64((uint128(_3318) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3318) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3318) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2652 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2652]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3322 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3323 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3324 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3324] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3324 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3324 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3323]) + (uint64((uint128(_3322) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3323]) + (uint64((uint128(_3322) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3323]) + (uint64((uint128(_3322) >> 64) + 1) << 64) << 128].field_256) = mem[_3324 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3323]) + (uint64((uint128(_3322) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3542 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3542] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3542 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3542 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3322) >> 64) + 1) << 64) + uint64(uint64(stor[_3323]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3322) >> 64) + 1) << 64) + uint64(uint64(stor[_3323]) + 1) << 128].field_256) = mem[_3542 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3322) >> 64) + 1) << 64) + uint64(uint64(stor[_3323]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3323]) + (uint64((uint128(_3322) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3322) >> 64) + 1) << 64) + uint64(uint64(stor[_3323]) + 1))
                            mem[0] = uint64((uint128(_3322) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3322) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3322) >> 64) + 1 << 192] + 2)
                    else:
                        require ((10000000000 * 10^18 * uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256)) + 50000000000 * 10^18 / 100000000000 * 10^18) + uint256(sub_3a80eb4c[mem[(32 * idx) + 128] << 128].field_256) == mem[(32 * idx) + (32 * arg1.length) + 160]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg1.length) + 128]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] >= 10^16:
                            require mem[(32 * idx) + (32 * arg1.length) + 160] == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2656 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2656]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3326 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3327 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3328 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3328] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3328 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3328 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3327]) + (uint64((uint128(_3326) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3327]) + (uint64((uint128(_3326) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3327]) + (uint64((uint128(_3326) >> 64) + 1) << 64) << 128].field_256) = mem[_3328 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3327]) + (uint64((uint128(_3326) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3549 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3549] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3549 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3549 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3326) >> 64) + 1) << 64) + uint64(uint64(stor[_3327]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3326) >> 64) + 1) << 64) + uint64(uint64(stor[_3327]) + 1) << 128].field_256) = mem[_3549 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3326) >> 64) + 1) << 64) + uint64(uint64(stor[_3327]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3327]) + (uint64((uint128(_3326) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3326) >> 64) + 1) << 64) + uint64(uint64(stor[_3327]) + 1))
                            mem[0] = uint64((uint128(_3326) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3326) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3326) >> 64) + 1 << 192] + 2)
                        else:
                            require 10^16 == mem[(32 * idx) + (32 * arg1.length) + 160]
                            if 9 * uint256(stor1[_1956].field_0) / 9 != uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0) / 1000000000 * 10^18 != 9 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 < 2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-add-overflow'
                            if balances[msg.sender] - uint256(stor1[_1956].field_0) > balances[msg.sender]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[0] = msg.sender
                            mem[32] = 0
                            balances[msg.sender] -= uint256(stor1[_1956].field_0)
                            mem[0] = mem[_1957 + 12 len 20]
                            _2660 = sha3(mem[0], 0)
                            if uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) > uint256(stor1[_1956].field_0):
                                revert with 0, 'ds-math-sub-underflow'
                            if balances[mem[0]] + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[mem[0]]:
                                revert with 0, 'ds-math-add-overflow'
                            mem[0] = mem[_1957 + 12 len 20]
                            balances[mem[0]] = uint256(stor[_2660]) + uint256(stor1[_1956].field_0) - ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18)
                            if balances[address(stor4.field_0)] + ((2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18) < balances[address(stor4.field_0)]:
                                revert with 0, 'ds-math-add-overflow'
                            balances[address(stor4.field_0)] += (2500000 * 10^18 * 3600 * uint256(stor1[_1956].field_0)) + 50000000000 * 10^18 / 100000000000 * 10^18
                            mem[_1957 + 64] = 0
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 144 len 16]
                            mem[32] = 2
                            address(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_0) = mem[_1957 + 12 len 20]
                            uint256(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_256) = uint256(stor1[_1956].field_0)
                            uint8(sub_3a80eb4c[mem[(32 * idx) + 144 len 16]].field_512) = 0
                            require idx < mem[96]
                            _3330 = mem[(32 * idx) + 128]
                            mem[0] = uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1)
                            mem[32] = 3
                            _3331 = sha3(uint64((uint128(mem[(32 * idx) + 128]) >> 64) + 1), 3)
                            _3332 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3332] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3332 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3332 + 64] = 1
                            mem[0] = uint128(uint64(stor[_3331]) + (uint64((uint128(_3330) >> 64) + 1) << 64))
                            mem[32] = 2
                            address(sub_3a80eb4c[uint64(stor[_3331]) + (uint64((uint128(_3330) >> 64) + 1) << 64) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[uint64(stor[_3331]) + (uint64((uint128(_3330) >> 64) + 1) << 64) << 128].field_256) = mem[_3332 + 32]
                            uint8(sub_3a80eb4c[uint64(stor[_3331]) + (uint64((uint128(_3330) >> 64) + 1) << 64) << 128].field_512) = 1
                            _3556 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3556] = msg.sender
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[_3556 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                            mem[_3556 + 64] = 1
                            mem[32] = 2
                            address(sub_3a80eb4c[(uint64((uint128(_3330) >> 64) + 1) << 64) + uint64(uint64(stor[_3331]) + 1) << 128].field_0) = msg.sender
                            uint256(sub_3a80eb4c[(uint64((uint128(_3330) >> 64) + 1) << 64) + uint64(uint64(stor[_3331]) + 1) << 128].field_256) = mem[_3556 + 32]
                            uint8(sub_3a80eb4c[(uint64((uint128(_3330) >> 64) + 1) << 64) + uint64(uint64(stor[_3331]) + 1) << 128].field_512) = 1
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = uint128(uint64(stor[_3331]) + (uint64((uint128(_3330) >> 64) + 1) << 64))
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224] = uint128((uint64((uint128(_3330) >> 64) + 1) << 64) + uint64(uint64(stor[_3331]) + 1))
                            mem[0] = uint64((uint128(_3330) >> 64) + 1)
                            mem[32] = 3
                            sub_b81835c4[(uint128(_3330) >> 64) + 1 << 192] = uint64(sub_b81835c4[(uint128(_3330) >> 64) + 1 << 192] + 2)
                idx = idx + 1
                continue 
            _1923 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _1925 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _1925) + 128
            mem[(32 * _1925) + _1923 + 128] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _3824 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * _1925) + _1923 + 160 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
            mem[_1923 + 64] = (32 * _3824) + (32 * _1925) + 160
            mem[(32 * _3824) + (32 * _1925) + _1923 + 160] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            _3856 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192]
            mem[(32 * _3824) + (32 * _1925) + _1923 + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 224 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * uint16(arg1.length)) + 192])]
            emit 0xcf8251aa: mem[mem[64] len (32 * _3856) + (32 * _3824) + (32 * _1925) + _1923 + -mem[64] + 192]
    uint8(stor4.field_160) = 0
}



}
