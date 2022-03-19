contract main {


// =======================  Init code  ======================


uint32 stor1; offset 32
uint256 stor1; offset 64
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5; offset 160
uint256 stor5;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint8 stor9; offset 24
uint8 stor9; offset 32
uint8 stor9; offset 40
uint8 stor9; offset 48
uint8 stor9; offset 56
uint8 stor9; offset 64
uint8 stor9; offset 72
uint256 stor9; offset 80

function _fallback() payable {
    Mask(176, 0, stor9.field_80) = Mask(176, 0, code.data[4824 len 32])
    require address(code.data[4728 len 32]) != code.data[4708 len 20]
    Mask(192, 0, stor1.field_64) = Mask(192, 0, msg.sender)
    uint8(stor5.field_160) = 0
    stor3 = code.data[4728 len 32] or Mask(96, 160, stor3)
    stor2 = code.data[4696 len 32]
    stor4 = code.data[4760 len 32] or Mask(96, 160, stor4)
    uint256(stor5.field_0) = code.data[4792 len 32] or Mask(96, 160, uint256(stor5.field_0))
    uint8(stor9.field_0) = 0
    uint8(stor7.field_0) = 0
    uint8(stor9.field_56) = 0
    uint8(stor7.field_8) = 0
    uint8(stor9.field_8) = 0
    uint8(stor9.field_64) = 0
    uint8(stor9.field_72) = 0
    uint8(stor9.field_16) = 0
    uint8(stor9.field_24) = 0
    uint8(stor9.field_32) = 0
    uint8(stor9.field_40) = 0
    uint8(stor9.field_48) = 0
    uint32(stor1.field_32) = 0
    return code.data[618 len 4078]
}



// =====================  Runtime code  =====================


uint256 sub_630b2d17;
uint32 sub_42d82f5f;
uint32 stor1; offset 32
address stor1;
address stor1; offset 64
uint256 stor1; offset 32
uint256 stor1;
address stor2;
address stor3;
address stor4;
uint8 sub_f522f70a; offset 160
address stor5;
uint256 sub_60b4a355;
uint8 sub_60354e17;
uint8 sub_8e45219f; offset 8
array of struct stor8;
bool stor9; offset 256
uint8 sub_e71873f3;
uint8 sub_310bd52c; offset 8
uint8 sub_61620e74; offset 16
uint8 stor9; offset 24
uint8 stor9; offset 32
uint8 stor9; offset 40
uint8 stor9; offset 48
uint8 stor9; offset 56
uint8 stor9; offset 64
uint8 stor9; offset 72
uint16 stor9; offset 40
uint32 stor9; offset 40
uint32 stor9; offset 40
address registryAddress; offset 80
uint256 stor9; offset 40

function sub_1367d40f(?) payable {
    return uint32(stor8.length)
}

function sub_310bd52c(?) payable {
    return sub_310bd52c
}

function sub_42d82f5f(?) payable {
    return sub_42d82f5f
}

function sub_60354e17(?) payable {
    return sub_60354e17
}

function sub_60b4a355(?) payable {
    return sub_60b4a355
}

function sub_61620e74(?) payable {
    return sub_61620e74
}

function sub_630b2d17(?) payable {
    return sub_630b2d17
}

function sub_8e45219f(?) payable {
    return sub_8e45219f
}

function sub_e71873f3(?) payable {
    return sub_e71873f3
}

function getRegistryAddress() payable {
    return registryAddress
}

function sub_f522f70a(?) payable {
    return sub_f522f70a
}

function kill() payable {
    if address(stor1.field_64) != msg.sender:
    selfdestruct(address(stor1.field_64))
}

function _fallback() payable {
  stop
}

function sub_abad09dc(?) payable {
    return (block.timestamp > sub_42d82f5f)
}

function getRoles() payable {
    return address(stor1.field_0), stor2, stor3, stor4, stor5
}

function sub_56df0fa7(?) payable {
    return sub_e71873f3, sub_e71873f3, uint32(stor1.field_32)
}

function sub_31e78c4c(?) payable {
    require arg1 < stor8.length
    return uint8(stor8[arg1].field_0), uint32(stor8[arg1].field_8)
}

function getOutcome() payable {
    if 2 == sub_e71873f3:
        return 1
    if not uint8(stor9.field_32):
        return 0
    return 2
}

function sub_31cc6ea5(?) payable {
    require msg.sender == address(stor1.field_64)
    sub_60b4a355 = arg2
    sub_630b2d17 = arg1
    uint256(stor1.field_0) = arg3 or Mask(224, 32, uint256(stor1.field_0))
    sub_f522f70a = 1
}

function getValidations() payable {
    if 0 == registryAddress:
        return 1, 1, 1, 1
    call registryAddress.0xf971d77c with:
         gas gas_remaining - 25050 wei
        args stor2
    require ext_call.success
    call registryAddress.0xf971d77c with:
         gas gas_remaining - 25050 wei
        args stor3
    call registryAddress.0xf971d77c with:
         gas gas_remaining - 25050 wei
        args stor4
    call registryAddress.0xf971d77c with:
         gas gas_remaining - 25050 wei
        args stor5
    return ext_call.return_data[0] != 0, ext_call.return_data[0] != 0, ext_call.return_data[0] != 0, ext_call.return_data[0] != 0
}

function sub_f1baa57c(?) payable {
    if sub_f522f70a:
        if not uint8(stor9.field_32):
            if msg.sender == stor5:
                if 0 == registryAddress:
                    require not sub_61620e74
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 0
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    sub_61620e74 = 1
                else:
                    call registryAddress.0xf971d77c with:
                         gas gas_remaining - 25050 wei
                        args stor5
                    require ext_call.success
                    if ext_call.return_data[0] != 0:
                        require not sub_61620e74
                        stor8.length++
                        if not stor8.length <= stor8.length + 1:
                            idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                            while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        uint8(stor8[stor8.length].field_0) = 0
                        Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                        sub_61620e74 = 1
}

function sub_61bc7dd4(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor3:
            if 0 == registryAddress:
                require sub_61620e74
                require not sub_310bd52c
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 1
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                sub_310bd52c = 1
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor3
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require sub_61620e74
                    require not sub_310bd52c
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 1
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    sub_310bd52c = 1
}

function sub_b050062d(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor2:
            if 0 == registryAddress:
                require sub_61620e74
                require not sub_60354e17
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 2
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                sub_60354e17 = 1
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor2
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require sub_61620e74
                    require not sub_60354e17
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 2
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    sub_60354e17 = 1
}

function sub_d02c004d(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor4:
            if 0 == registryAddress:
                require sub_8e45219f
                require 0 == sub_e71873f3
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 5
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                sub_e71873f3 = 1
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor4
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require sub_8e45219f
                    require 0 == sub_e71873f3
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 5
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    sub_e71873f3 = 1
}

function sub_c4018e88(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor2:
            if 0 == registryAddress:
                require sub_310bd52c
                require sub_60354e17
                require not sub_8e45219f
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 3
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                sub_8e45219f = 1
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor2
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require sub_310bd52c
                    require sub_60354e17
                    require not sub_8e45219f
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 3
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    sub_8e45219f = 1
}

function sub_c1bc792b(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor4:
            if 0 == registryAddress:
                require sub_e71873f3 != 0
                require sub_e71873f3 != 2
                require block.timestamp <= sub_42d82f5f
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 6
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                sub_e71873f3 = 2
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor4
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require sub_e71873f3 != 0
                    require sub_e71873f3 != 2
                    require block.timestamp <= sub_42d82f5f
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 6
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    sub_e71873f3 = 2
}

function sub_6f8d5ffc(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor5:
            if 0 == registryAddress:
                require not sub_61620e74
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 7
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                uint8(stor9.field_24) = 1
                uint8(stor9.field_32) = 1
                Mask(216, 0, stor9.field_40) = 0
                stor9.field_256 % 1 = 0
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor5
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require not sub_61620e74
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 7
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint8(stor9.field_24) = 1
                    uint8(stor9.field_32) = 1
                    Mask(216, 0, stor9.field_40) = 0
                    stor9.field_256 % 1 = 0
}

function sub_7446808d(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor2:
            if 0 == registryAddress:
                require sub_61620e74
                require not sub_60354e17
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 9
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                uint8(stor9.field_32) = 1
                Mask(216, 0, stor9.field_40) = uint16(stor9.field_40)
                uint8(stor9.field_56) = 1
                stor9.field_256 % 1 = 0
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor2
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require sub_61620e74
                    require not sub_60354e17
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 9
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint8(stor9.field_32) = 1
                    Mask(216, 0, stor9.field_40) = uint16(stor9.field_40)
                    uint8(stor9.field_56) = 1
                    stor9.field_256 % 1 = 0
}

function sub_2fbe35b8(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor3:
            if 0 == registryAddress:
                require sub_61620e74
                require not sub_310bd52c
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 8
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                uint8(stor9.field_32) = 1
                Mask(216, 0, stor9.field_40) = stor9.field_40 % 16777216
                uint8(stor9.field_64) = 1
                stor9.field_256 % 1 = 0
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor3
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require sub_61620e74
                    require not sub_310bd52c
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 8
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint8(stor9.field_32) = 1
                    Mask(216, 0, stor9.field_40) = stor9.field_40 % 16777216
                    uint8(stor9.field_64) = 1
                    stor9.field_256 % 1 = 0
}

function sub_7c471976(?) payable {
    if not uint8(stor9.field_32):
        if msg.sender == stor3:
            if 0 == registryAddress:
                require not uint8(stor9.field_72)
                require block.timestamp > sub_42d82f5f
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 16
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                uint8(stor9.field_32) = 1
                Mask(216, 0, stor9.field_40) = uint32(stor9.field_40)
                uint8(stor9.field_72) = 1
                stor9.field_256 % 1 = 0
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor3
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require not uint8(stor9.field_72)
                    require block.timestamp > sub_42d82f5f
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 16
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint8(stor9.field_32) = 1
                    Mask(216, 0, stor9.field_40) = uint32(stor9.field_40)
                    uint8(stor9.field_72) = 1
                    stor9.field_256 % 1 = 0
}

function sub_1d2bef27(?) payable {
    if not uint8(stor9.field_32):
        if stor3 != msg.sender:
            if msg.sender == stor2:
                if 0 == registryAddress:
                    if not uint8(stor9.field_40):
                        require uint8(stor9.field_48)
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    if stor3 != msg.sender:
                        uint8(stor8[stor8.length].field_0) = 15
                    else:
                        uint8(stor8[stor8.length].field_0) = 12
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint16(stor9.field_40) = 0
                    uint32(stor1.field_32) = 0
                else:
                    call registryAddress.0xf971d77c with:
                         gas gas_remaining - 25050 wei
                        args stor2
                    require ext_call.success
                    if ext_call.return_data[0] != 0:
                        if not uint8(stor9.field_40):
                            require uint8(stor9.field_48)
                        stor8.length++
                        if not stor8.length <= stor8.length + 1:
                            idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                            while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if stor3 != msg.sender:
                            uint8(stor8[stor8.length].field_0) = 15
                        else:
                            uint8(stor8[stor8.length].field_0) = 12
                        Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                        stor8[stor8.length].field_256 % 1 = 0
                        uint16(stor9.field_40) = 0
                        uint32(stor1.field_32) = 0
        else:
            if 0 == registryAddress:
                if not uint8(stor9.field_40):
                    require uint8(stor9.field_48)
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                if stor3 != msg.sender:
                    uint8(stor8[stor8.length].field_0) = 15
                else:
                    uint8(stor8[stor8.length].field_0) = 12
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                uint16(stor9.field_40) = 0
                uint32(stor1.field_32) = 0
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor3
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    if not uint8(stor9.field_40):
                        require uint8(stor9.field_48)
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    if stor3 != msg.sender:
                        uint8(stor8[stor8.length].field_0) = 15
                    else:
                        uint8(stor8[stor8.length].field_0) = 12
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint16(stor9.field_40) = 0
                    uint32(stor1.field_32) = 0
                else:
                    if msg.sender == stor2:
                        if 0 == registryAddress:
                            if not uint8(stor9.field_40):
                                require uint8(stor9.field_48)
                            stor8.length++
                            if not stor8.length <= stor8.length + 1:
                                idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                                while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            if stor3 != msg.sender:
                                uint8(stor8[stor8.length].field_0) = 15
                            else:
                                uint8(stor8[stor8.length].field_0) = 12
                            Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                            stor8[stor8.length].field_256 % 1 = 0
                            uint16(stor9.field_40) = 0
                            uint32(stor1.field_32) = 0
                        else:
                            call registryAddress.0xf971d77c with:
                                 gas gas_remaining - 25050 wei
                                args stor2
                            require ext_call.success
                            if ext_call.return_data[0] != 0:
                                if not uint8(stor9.field_40):
                                    require uint8(stor9.field_48)
                                stor8.length++
                                if not stor8.length <= stor8.length + 1:
                                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                if stor3 != msg.sender:
                                    uint8(stor8[stor8.length].field_0) = 15
                                else:
                                    uint8(stor8[stor8.length].field_0) = 12
                                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                                stor8[stor8.length].field_256 % 1 = 0
                                uint16(stor9.field_40) = 0
                                uint32(stor1.field_32) = 0
}

function sub_fa71afdb(?) payable {
    require not uint8(stor9.field_32)
    require sub_310bd52c
    require sub_60354e17
    require sub_e71873f3 != 2
    if stor3 != msg.sender:
        if msg.sender == stor2:
            if 0 == registryAddress:
                require not uint8(stor9.field_48)
                if not uint8(stor9.field_40):
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 13
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint8(stor9.field_48) = 1
                    Mask(224, 0, stor1.field_32) = Mask(224, 0, arg1)
                else:
                    require uint32(stor1.field_32) == uint32(arg1)
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 14
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint16(stor9.field_40) = 0
                    uint256(stor1.field_0) = arg1 or Mask(224, 32, uint256(stor1.field_0))
            else:
                call registryAddress.0xf971d77c with:
                     gas gas_remaining - 25050 wei
                    args stor2
                require ext_call.success
                if ext_call.return_data[0] != 0:
                    require not uint8(stor9.field_48)
                    if not uint8(stor9.field_40):
                        stor8.length++
                        if not stor8.length <= stor8.length + 1:
                            idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                            while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        uint8(stor8[stor8.length].field_0) = 13
                        Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                        stor8[stor8.length].field_256 % 1 = 0
                        uint8(stor9.field_48) = 1
                        Mask(224, 0, stor1.field_32) = Mask(224, 0, arg1)
                    else:
                        require uint32(stor1.field_32) == uint32(arg1)
                        stor8.length++
                        if not stor8.length <= stor8.length + 1:
                            idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                            while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        uint8(stor8[stor8.length].field_0) = 14
                        Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                        stor8[stor8.length].field_256 % 1 = 0
                        uint16(stor9.field_40) = 0
                        uint256(stor1.field_0) = arg1 or Mask(224, 32, uint256(stor1.field_0))
    else:
        if 0 == registryAddress:
            require not uint8(stor9.field_40)
            if not uint8(stor9.field_48):
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 10
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                uint8(stor9.field_40) = 1
                Mask(224, 0, stor1.field_32) = Mask(224, 0, arg1)
            else:
                require uint32(stor1.field_32) == uint32(arg1)
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                uint8(stor8[stor8.length].field_0) = 11
                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                stor8[stor8.length].field_256 % 1 = 0
                uint16(stor9.field_40) = 0
                uint256(stor1.field_0) = arg1 or Mask(224, 32, uint256(stor1.field_0))
        else:
            call registryAddress.0xf971d77c with:
                 gas gas_remaining - 25050 wei
                args stor3
            require ext_call.success
            if ext_call.return_data[0] != 0:
                require not uint8(stor9.field_40)
                if not uint8(stor9.field_48):
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 10
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint8(stor9.field_40) = 1
                    Mask(224, 0, stor1.field_32) = Mask(224, 0, arg1)
                else:
                    require uint32(stor1.field_32) == uint32(arg1)
                    stor8.length++
                    if not stor8.length <= stor8.length + 1:
                        idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                        while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    uint8(stor8[stor8.length].field_0) = 11
                    Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                    stor8[stor8.length].field_256 % 1 = 0
                    uint16(stor9.field_40) = 0
                    uint256(stor1.field_0) = arg1 or Mask(224, 32, uint256(stor1.field_0))
            else:
                if msg.sender == stor2:
                    if 0 == registryAddress:
                        require not uint8(stor9.field_48)
                        if not uint8(stor9.field_40):
                            stor8.length++
                            if not stor8.length <= stor8.length + 1:
                                idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                                while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            uint8(stor8[stor8.length].field_0) = 13
                            Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                            stor8[stor8.length].field_256 % 1 = 0
                            uint8(stor9.field_48) = 1
                            Mask(224, 0, stor1.field_32) = Mask(224, 0, arg1)
                        else:
                            require uint32(stor1.field_32) == uint32(arg1)
                            stor8.length++
                            if not stor8.length <= stor8.length + 1:
                                idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                                while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            uint8(stor8[stor8.length].field_0) = 14
                            Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                            stor8[stor8.length].field_256 % 1 = 0
                            uint16(stor9.field_40) = 0
                            uint256(stor1.field_0) = arg1 or Mask(224, 32, uint256(stor1.field_0))
                    else:
                        call registryAddress.0xf971d77c with:
                             gas gas_remaining - 25050 wei
                            args stor2
                        require ext_call.success
                        if ext_call.return_data[0] != 0:
                            require not uint8(stor9.field_48)
                            if not uint8(stor9.field_40):
                                stor8.length++
                                if not stor8.length <= stor8.length + 1:
                                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                uint8(stor8[stor8.length].field_0) = 13
                                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                                stor8[stor8.length].field_256 % 1 = 0
                                uint8(stor9.field_48) = 1
                                Mask(224, 0, stor1.field_32) = Mask(224, 0, arg1)
                            else:
                                require uint32(stor1.field_32) == uint32(arg1)
                                stor8.length++
                                if not stor8.length <= stor8.length + 1:
                                    idx = stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
                                    while stor8.length - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                                uint8(stor8[stor8.length].field_0) = 14
                                Mask(248, 0, stor8[stor8.length].field_8) = Mask(248, 0, block.timestamp)
                                stor8[stor8.length].field_256 % 1 = 0
                                uint16(stor9.field_40) = 0
                                uint256(stor1.field_0) = arg1 or Mask(224, 32, uint256(stor1.field_0))
}



}
