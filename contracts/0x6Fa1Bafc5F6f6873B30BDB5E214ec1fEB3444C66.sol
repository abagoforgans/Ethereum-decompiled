contract main {


// =======================  Init code  ======================


array of address stor0;
array of address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
bool stor10; offset 256
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint8 stor10; offset 24
uint64 stor14;
uint256 stor15;
uint256 stor17;
uint32 stor18;
uint256 stor19;
uint256 stor20;
uint8 stor21;

function _fallback() payable {
    mem[96] = 0xfd9285284b16148b8aaebee9123c638fab242cab
    mem[128] = 0x3deaaa3f9affe686ed1f0bd6a8b86961175f3d90
    stor0.length = 2
    s = 0
    idx = 96
    while 160 > idx:
        stor0[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor0.length > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    mem[160] = 0x4230ed77f9890349542d74d03b3aa8c5c13f68b
    mem[192] = 0x152f59eaaeb5c7e98afc664791c3c32015ac61b9
    stor1.length = 2
    s = 0
    idx = 160
    while 224 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor2 = 0x7fdc3a3adf3c701429f3e808efba16995f7a167d
    uint8(stor10.field_0) = 0
    uint8(stor10.field_8) = 18
    uint8(stor10.field_16) = 18
    uint8(stor10.field_24) = 0
    stor10.field_256 % 1 = 0
    stor10.field_256 % 1 = 0
    stor18 = 0
    stor19 = 20
    stor20 = 1000
    require not msg.value
    stor3 = msg.sender
    stor6 = code.data[14345 len 32]
    stor7 = code.data[14377 len 32]
    stor14 = 0
    stor15 = 0
    stor21 = 0
    stor17 = 0
    stor4 = code.data[14293 len 20]
    stor5 = code.data[14325 len 20]
    if code.data[14293 len 20]:
        stor21 = 1
    stor8 = code.data[14409 len 32]
    stor9 = code.data[14441 len 32]
    return code.data[638 len 13643]
}



// =====================  Runtime code  =====================


const getVersion = 'v1.0.3'


array of address stor0;
array of address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint8 stor10; offset 24
mapping of struct sub_1571c632;
mapping of struct stor12;
mapping of struct stor13;
uint32 stor14;
uint32 stor14; offset 32
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 16
uint256 stor19;
uint256 stor20;
uint8 stor21;
uint256 stor21;

function sub_1571c632(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require arg1 >= 0
    require arg1 < uint32(stor14.field_0)
    if sub_1571c632[arg1 << 224].field_1024 <= 5:
        return sub_1571c632[arg1 << 224].field_0, 
               sub_1571c632[arg1 << 224].field_256,
               sub_1571c632[arg1 << 224].field_512,
               sub_1571c632[arg1 << 224].field_768,
               sub_1571c632[arg1 << 224].field_1024,
               sub_1571c632[arg1 << 224].field_1280
    revert
}

function _fallback() payable {
    revert
}

function getContractInfo() {
    return stor6, stor7, stor15, uint32(stor14.field_0), uint32(stor14.field_32), stor9, stor8, bool(uint8(stor18.field_0))
}

function setTokenAddress(address arg1) {
    require stor3 == msg.sender
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require not uint8(stor10.field_0)
    stor5 = arg1
}

function sub_3e4fd89a(?) {
    require uint8(stor21) <= 11
    require uint8(stor21) != 5
    require block.timestamp < stor9
    stor13[address(arg1)].field_0 = 1
    stor13[address(arg1)].field_8 = 0
}

function sub_185429b9(?) {
    require stor3 == msg.sender
    require not uint8(stor18.field_16)
    stor8 = arg3
    stor9 = arg4
    stor4 = arg1
    stor5 = arg2
    if arg1:
        uint8(stor21) = 1
}

function setPlatformFeeRate(uint256 arg1) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    stor19 = arg1
}

function sub_d68a71bd(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    if not arg1:
        uint8(stor21) = 2
    else:
        uint8(stor21) = 1
}

function sub_4aaa489d(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    require uint8(stor21) == 8
    stor4 = arg1
}

function sub_77c20e9b(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    require uint8(stor21) == 8
    stor5 = arg1
}

function sub_8f16943e(?) {
    require 0 < stor1.length
    idx = 0
    while stor1[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor1.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require arg1 <= 11
    uint256(stor21) = arg1 or Mask(248, 8, uint256(stor21))
}

function sub_932b6ab0(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    require uint8(stor21) == 8
    uint8(stor18.field_0) = uint8(arg1)
}

function launch() payable {
    require stor3 == msg.sender
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require eth.balance(this.address) >= stor7
    require not uint8(stor18.field_16)
    uint8(stor21) = 5
    uint8(stor18.field_16) = 1
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_ec26fe84(?) {
    if not arg1:
        if stor20:
            if (0 / stor20) + arg1 >= arg1:
                return arg1, 0 / stor20, (0 / stor20) + arg1
    else:
        if stor19 * arg1 / arg1 == stor19:
            if stor20:
                if (stor19 * arg1 / stor20) + arg1 >= arg1:
                    return arg1, stor19 * arg1 / stor20, (stor19 * arg1 / stor20) + arg1
    revert
}

function a(address arg1, uint256 arg2) payable {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    require uint8(stor21) == 8
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f0e9c909(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    require uint8(stor21) == 8
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
}

function sub_dfccdcd0(?) {
    require stor20 + stor19 >= stor19
    if not arg1:
        if stor20 + stor19:
            if 0 / stor20 + stor19 <= arg1:
                return 0 / stor20 + stor19, arg1 - (0 / stor20 + stor19)
    else:
        if stor20 * arg1 / arg1 == stor20:
            if stor20 + stor19:
                if stor20 * arg1 / stor20 + stor19 <= arg1:
                    return stor20 * arg1 / stor20 + stor19, arg1 - (stor20 * arg1 / stor20 + stor19)
    revert
}

function sub_028ba046(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_256 != arg1:
            idx = idx + 1
            continue 
        require sub_1571c632[idx << 224].field_1024 <= 5
        return sub_1571c632[idx << 224].field_1024
    return 0
}

function sub_15c47753(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    if uint8(stor21) <= 11:
        return stor4, 
               stor5,
               bool(uint8(stor10.field_0)),
               uint8(stor10.field_0),
               uint8(stor10.field_16),
               uint8(stor10.field_0),
               stor17,
               bool(uint8(stor18.field_8)),
               bool(uint8(stor18.field_16)),
               stor19,
               uint8(stor21)
    revert
}

function sub_faae7e73(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    if uint8(stor21) != 5:
        require uint8(stor21) <= 11
        require uint8(stor21) == 7
    if not arg1:
        uint8(stor21) = 7
    else:
        uint8(stor21) = 6
        require stor5
        require ext_code.size(stor5)
        call stor5.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= stor16
        require stor16 <= ext_call.return_data[0]
        stor17 = ext_call.return_data[0] - stor16
}

function sub_e9bf0866(?) {
    idx = 0
    s = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_1024 <= 5
        if sub_1571c632[idx << 224].field_1024 != 2:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_512 + s >= s
        idx = idx + 1
        s = sub_1571c632[idx << 224].field_512 + s
        continue 
    return s
}

function sub_2826b7f8(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    require uint8(stor21) == 8
    idx = 0
    s = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_256 != arg1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_1024 <= 5
        if sub_1571c632[idx << 224].field_1024 != 2:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        sub_1571c632[idx << 224].field_1024 = 5
        require sub_1571c632[idx << 224].field_512 + s >= s
        idx = idx + 1
        s = sub_1571c632[idx << 224].field_512 + s
        continue 
    if s > 0:
        call arg2 with:
           value s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function getStatus() {
    require uint8(stor21) <= 11
    if uint8(stor21) == 1:
        if block.timestamp > stor9:
            if eth.balance(this.address) < stor7:
                return 4
            return 3
        if eth.balance(this.address) >= stor7:
            return 3
    require uint8(stor21) <= 11
    if uint8(stor21) != 5:
        if uint8(stor21) <= 11:
            return uint8(stor21)
    else:
        if uint8(stor10.field_0):
            if uint8(stor21) <= 11:
                return uint8(stor21)
        else:
            if not stor5:
                return 11
            require ext_code.size(stor5)
            call stor5.0x313ce567 with:
                 gas gas_remaining wei
            require ext_call.success
            if ext_call.return_data[31 len 1] > uint8(stor10.field_8):
                return 7
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            if 10^uint8(uint8(stor10.field_8) - ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] < stor16 / 10^uint8(uint8(stor10.field_8) - ext_call.return_data[0]):
                        return 7
                    return 6
                if uint8(stor21) <= 11:
                    return uint8(stor21)
    revert
}

function sub_28558f6f(?) {
    require stor3 == msg.sender
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    if 1 == bool(uint8(stor18.field_8)):
        return 0
    if uint8(stor10.field_0):
        return stor17
    require uint8(stor21) <= 11
    if uint8(stor21) != 5:
        return stor17
    require stor5
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0x313ce567 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[31 len 1] <= uint8(stor10.field_8)
    if uint8(stor10.field_8) == ext_call.return_data[31 len 1]:
        if ext_call.return_data[0] < stor16:
            return stor17
        require stor16 <= ext_call.return_data[0]
        stor17 = ext_call.return_data[0] - stor16
        return (ext_call.return_data[0] - stor16)
    require 10^uint8(uint8(stor10.field_8) - ext_call.return_data[0])
    if ext_call.return_data[0] < stor16 / 10^uint8(uint8(stor10.field_8) - ext_call.return_data[0]):
        return stor17
    require stor16 / 10^uint8(uint8(stor10.field_8) - ext_call.return_data[0]) <= ext_call.return_data[0]
    stor17 = ext_call.return_data[0] - (stor16 / 10^uint8(uint8(stor10.field_8) - ext_call.return_data[0]))
    return (ext_call.return_data[0] - (stor16 / 10^uint8(uint8(stor10.field_8) - ext_call.return_data[0])))
}

function sub_ce21eb63(?) {
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    idx = 0
    s = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_256 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_1024 <= 5
        if sub_1571c632[idx << 224].field_1024 != 2:
            idx = idx + 1
            s = s
            continue 
        sub_1571c632[idx << 224].field_1024 = 3
        require sub_1571c632[idx << 224].field_512 + s >= s
        mem[0] = uint32(idx)
        mem[32] = 11
        if not sub_1571c632[idx << 224].field_512:
            idx = idx + 1
            s = sub_1571c632[idx << 224].field_512 + s
            continue 
        require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / sub_1571c632[idx << 224].field_512 == sub_1571c632[idx << 224].field_768
        require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 >= 0
        idx = idx + 1
        s = sub_1571c632[idx << 224].field_512 + s
        continue 
    if s > 0:
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_7c5ca318(?) {
    require ext_code.size(stor5)
    call stor5.0x313ce567 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[31 len 1] <= uint8(stor10.field_8)
    uint8(stor10.field_16) = uint8(ext_call.return_data[0])
    if ext_call.return_data[31 len 1] != uint8(stor10.field_8):
        uint8(stor10.field_24) = uint8(uint8(stor10.field_8) - uint8(stor10.field_16))
    idx = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_256 != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_0 != arg1:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_1024 <= 5
        if sub_1571c632[idx << 224].field_1024:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        if not sub_1571c632[idx << 224].field_512:
            idx = idx + 1
            continue 
        require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / sub_1571c632[idx << 224].field_512 == sub_1571c632[idx << 224].field_768
        require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 >= 0
        idx = idx + 1
        continue 
    if 10^uint8(stor10.field_24):
        return (0 / 10^uint8(stor10.field_24))
    revert
}

function sub_64778eba(?) {
    require stor3 == msg.sender
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require stor5
    if not uint8(stor10.field_0):
        require uint8(stor21) <= 11
        if uint8(stor21) == 5:
            require ext_code.size(stor5)
            call stor5.0x313ce567 with:
                 gas gas_remaining wei
            require ext_call.success
            require ext_call.return_data[31 len 1] <= uint8(stor10.field_8)
            uint8(stor10.field_16) = uint8(ext_call.return_data[0])
            if ext_call.return_data[31 len 1] != uint8(stor10.field_8):
                uint8(stor10.field_24) = uint8(uint8(stor10.field_8) - uint8(stor10.field_16))
            require 10^uint8(stor10.field_24)
            stor16 = stor16 / 10^uint8(stor10.field_24)
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= stor16:
                require stor16 <= ext_call.return_data[0]
                stor17 = ext_call.return_data[0] - stor16
                uint8(stor10.field_0) = 1
                uint8(stor21) = 6
    require not uint8(stor18.field_8)
    require uint8(stor21) <= 11
    require uint8(stor21) == 6
    require stor17 > 0
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor17
    require ext_call.success
    uint8(stor18.field_8) = 1
}

function sub_d477a0c6(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require uint8(stor21) <= 11
    require uint8(stor21) == 8
    require stor5
    if not uint8(stor10.field_0):
        require uint8(stor21) <= 11
        if uint8(stor21) == 5:
            require ext_code.size(stor5)
            call stor5.0x313ce567 with:
                 gas gas_remaining wei
            require ext_call.success
            require ext_call.return_data[31 len 1] <= uint8(stor10.field_8)
            uint8(stor10.field_16) = uint8(ext_call.return_data[0])
            if ext_call.return_data[31 len 1] != uint8(stor10.field_8):
                uint8(stor10.field_24) = uint8(uint8(stor10.field_8) - uint8(stor10.field_16))
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require 10^uint8(stor10.field_24)
            stor16 = stor16 / 10^uint8(stor10.field_24)
            if ext_call.return_data[0] >= stor16 / 10^uint8(stor10.field_24):
                require stor16 <= ext_call.return_data[0]
                stor17 = ext_call.return_data[0] - stor16
                uint8(stor10.field_0) = 1
                uint8(stor21) = 6
    if stor3 == arg2:
        uint8(stor18.field_8) = 1
        require stor17 > 0
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), stor17
    else:
        idx = 0
        while uint32(idx) < uint32(stor14.field_0):
            mem[0] = uint32(idx)
            mem[32] = 11
            if sub_1571c632[idx << 224].field_256 != arg1:
                idx = idx + 1
                continue 
            mem[0] = uint32(idx)
            mem[32] = 11
            require sub_1571c632[idx << 224].field_1024 <= 5
            if sub_1571c632[idx << 224].field_1024:
                idx = idx + 1
                continue 
            mem[0] = uint32(idx)
            mem[32] = 11
            sub_1571c632[idx << 224].field_1024 = 5
            if not sub_1571c632[idx << 224].field_512:
                idx = idx + 1
                continue 
            require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / sub_1571c632[idx << 224].field_512 == sub_1571c632[idx << 224].field_768
            require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 >= 0
            idx = idx + 1
            continue 
        require 10^uint8(stor10.field_24)
        require 0 / 10^uint8(stor10.field_24) > 0
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), 0 / 10^uint8(stor10.field_24)
    require ext_call.success
}

function sub_03fc9132(?) {
    idx = 0
    while uint8(idx) < stor0.length:
        mem[0] = 0
        if stor0[uint8(idx)] != msg.sender:
            idx = idx + 1
            continue 
        require uint8(stor21) <= 11
        require uint8(stor21) != 8
        require uint8(stor21) <= 11
        if uint8(stor21) != 1:
            require uint8(stor21) <= 11
            if uint8(stor21) != 3:
                require uint8(stor21) <= 11
                require uint8(stor21) == 4
        idx = 0
        while uint32(idx) < uint32(stor14.field_0):
            mem[0] = uint32(idx)
            mem[32] = 11
            require sub_1571c632[idx << 224].field_1024 <= 5
            if sub_1571c632[idx << 224].field_1024:
                idx = idx + 1
                continue 
            sub_1571c632[idx << 224].field_1024 = 2
            require sub_1571c632[idx << 224].field_512 <= stor15
            stor15 -= sub_1571c632[idx << 224].field_512
            mem[0] = uint32(idx)
            mem[32] = 11
            if uint8(stor18.field_0):
                sub_1571c632[idx << 224].field_1024 = 3
                call sub_1571c632[idx << 224].field_256 with:
                   value sub_1571c632[idx << 224].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                idx = idx + 1
                continue 
            if sub_1571c632[idx << 224].field_256 != msg.sender:
                idx = idx + 1
                continue 
            mem[0] = uint32(idx)
            mem[32] = 11
            sub_1571c632[idx << 224].field_1024 = 3
            require sub_1571c632[idx << 224].field_512 >= 0
            idx = idx + 1
            continue 
        uint8(stor21) = 10
    require stor3 == msg.sender
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require uint8(stor21) <= 11
    if uint8(stor21) != 1:
        require uint8(stor21) <= 11
        if uint8(stor21) != 3:
            require uint8(stor21) <= 11
            require uint8(stor21) == 4
    idx = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_1024 <= 5
        if sub_1571c632[idx << 224].field_1024:
            idx = idx + 1
            continue 
        sub_1571c632[idx << 224].field_1024 = 2
        require sub_1571c632[idx << 224].field_512 <= stor15
        stor15 -= sub_1571c632[idx << 224].field_512
        mem[0] = uint32(idx)
        mem[32] = 11
        if uint8(stor18.field_0):
            sub_1571c632[idx << 224].field_1024 = 3
            call sub_1571c632[idx << 224].field_256 with:
               value sub_1571c632[idx << 224].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            continue 
        if sub_1571c632[idx << 224].field_256 != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        sub_1571c632[idx << 224].field_1024 = 3
        require sub_1571c632[idx << 224].field_512 >= 0
        idx = idx + 1
        continue 
    uint8(stor21) = 10
}

function sub_3967f31a(?) {
    idx = 0
    while uint8(idx) < stor0.length:
        mem[0] = 0
        if stor0[uint8(idx)] != msg.sender:
            idx = idx + 1
            continue 
        require uint8(stor21) <= 11
        require uint8(stor21) != 8
        require uint8(stor21) <= 11
        if uint8(stor21) != 1:
            require uint8(stor21) <= 11
            if uint8(stor21) != 3:
                require uint8(stor21) <= 11
                require uint8(stor21) == 4
        require stor13[address(arg1)].field_0 >= 1
        require ext_code.size(arg1)
        call arg1.getInfo() with:
             gas gas_remaining wei
        require ext_call.success
        require stor3 == ext_call.return_data[140 len 20]
        require ext_code.size(arg1)
        call arg1.0x4e69d560 with:
             gas gas_remaining wei
        require ext_call.success
        require not ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.closeContract() with:
             gas gas_remaining wei
        require ext_call.success
        idx = 0
        while uint32(idx) < uint32(stor14.field_0):
            mem[0] = uint32(idx)
            mem[32] = 11
            if sub_1571c632[idx << 224].field_0 != arg1:
                idx = idx + 1
                continue 
            mem[0] = uint32(idx)
            mem[32] = 11
            require sub_1571c632[idx << 224].field_1024 <= 5
            if sub_1571c632[idx << 224].field_1024:
                idx = idx + 1
                continue 
            sub_1571c632[idx << 224].field_1024 = 2
            require sub_1571c632[idx << 224].field_512 <= stor15
            stor15 -= sub_1571c632[idx << 224].field_512
            mem[0] = uint32(idx)
            mem[32] = 11
            if uint8(stor18.field_0):
                sub_1571c632[idx << 224].field_1024 = 3
                call sub_1571c632[idx << 224].field_256 with:
                   value sub_1571c632[idx << 224].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                idx = idx + 1
                continue 
            if sub_1571c632[idx << 224].field_256 != msg.sender:
                idx = idx + 1
                continue 
            mem[0] = uint32(idx)
            mem[32] = 11
            sub_1571c632[idx << 224].field_1024 = 3
            require sub_1571c632[idx << 224].field_512 >= 0
            idx = idx + 1
            continue 
    require stor3 == msg.sender
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require uint8(stor21) <= 11
    if uint8(stor21) != 1:
        require uint8(stor21) <= 11
        if uint8(stor21) != 3:
            require uint8(stor21) <= 11
            require uint8(stor21) == 4
    require stor13[address(arg1)].field_0 >= 1
    require ext_code.size(arg1)
    call arg1.getInfo() with:
         gas gas_remaining wei
    require ext_call.success
    require stor3 == ext_call.return_data[140 len 20]
    require ext_code.size(arg1)
    call arg1.0x4e69d560 with:
         gas gas_remaining wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.closeContract() with:
         gas gas_remaining wei
    require ext_call.success
    idx = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        if sub_1571c632[idx << 224].field_0 != arg1:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_1024 <= 5
        if sub_1571c632[idx << 224].field_1024:
            idx = idx + 1
            continue 
        sub_1571c632[idx << 224].field_1024 = 2
        require sub_1571c632[idx << 224].field_512 <= stor15
        stor15 -= sub_1571c632[idx << 224].field_512
        mem[0] = uint32(idx)
        mem[32] = 11
        if uint8(stor18.field_0):
            sub_1571c632[idx << 224].field_1024 = 3
            call sub_1571c632[idx << 224].field_256 with:
               value sub_1571c632[idx << 224].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            continue 
        if sub_1571c632[idx << 224].field_256 != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 11
        sub_1571c632[idx << 224].field_1024 = 3
        require sub_1571c632[idx << 224].field_512 >= 0
        idx = idx + 1
        continue 
}

function allocateToken() {
    idx = 0
    while uint8(idx) < stor0.length:
        mem[0] = 0
        if stor0[uint8(idx)] != msg.sender:
            idx = idx + 1
            continue 
        require uint8(stor21) <= 11
        require uint8(stor21) != 8
        require uint8(stor21) <= 11
        require uint8(stor21) == 5
        require uint8(stor21) <= 11
        require uint8(stor21) != 10
        require 1 == bool(uint8(stor18.field_0))
        require stor5
        require ext_code.size(stor5)
        call stor5.0x313ce567 with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[31 len 1] <= uint8(stor10.field_8)
        uint8(stor10.field_16) = uint8(ext_call.return_data[0])
        if ext_call.return_data[31 len 1] != uint8(stor10.field_8):
            uint8(stor10.field_24) = uint8(uint8(stor10.field_8) - uint8(stor10.field_16))
        require 10^uint8(stor10.field_24)
        stor16 = stor16 / 10^uint8(stor10.field_24)
        require ext_code.size(stor5)
        call stor5.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= stor16 / 10^uint8(stor10.field_24)
        idx = 0
        while uint32(idx) < uint32(stor14.field_0):
            mem[0] = uint32(idx)
            mem[32] = 11
            require sub_1571c632[idx << 224].field_1024 <= 5
            if not sub_1571c632[idx << 224].field_1024:
                mem[0] = uint32(idx)
                mem[32] = 11
                sub_1571c632[idx << 224].field_1024 = 1
                if not sub_1571c632[idx << 224].field_512:
                    require 10^uint8(stor10.field_24)
                    mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[100] = sub_1571c632[idx << 224].field_256
                    mem[132] = 0 / 10^uint8(stor10.field_24)
                    require ext_code.size(stor5)
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_1571c632[idx << 224].field_256, 0 / 10^uint8(stor10.field_24)
                else:
                    require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / sub_1571c632[idx << 224].field_512 == sub_1571c632[idx << 224].field_768
                    require 10^uint8(stor10.field_24)
                    mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[100] = sub_1571c632[idx << 224].field_256
                    mem[132] = sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / 10^uint8(stor10.field_24)
                    require ext_code.size(stor5)
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_1571c632[idx << 224].field_256, sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / 10^uint8(stor10.field_24)
                require ext_call.success
            idx = idx + 1
            continue 
        require ext_code.size(stor5)
        call stor5.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
        uint8(stor21) = 10
    require stor3 == msg.sender
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require uint8(stor21) <= 11
    require uint8(stor21) == 5
    require uint8(stor21) <= 11
    require uint8(stor21) != 10
    require 1 == bool(uint8(stor18.field_0))
    require stor5
    require ext_code.size(stor5)
    call stor5.0x313ce567 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[31 len 1] <= uint8(stor10.field_8)
    uint8(stor10.field_16) = uint8(ext_call.return_data[0])
    if ext_call.return_data[31 len 1] != uint8(stor10.field_8):
        uint8(stor10.field_24) = uint8(uint8(stor10.field_8) - uint8(stor10.field_16))
    require 10^uint8(stor10.field_24)
    stor16 = stor16 / 10^uint8(stor10.field_24)
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= stor16 / 10^uint8(stor10.field_24)
    idx = 0
    while uint32(idx) < uint32(stor14.field_0):
        mem[0] = uint32(idx)
        mem[32] = 11
        require sub_1571c632[idx << 224].field_1024 <= 5
        if not sub_1571c632[idx << 224].field_1024:
            mem[0] = uint32(idx)
            mem[32] = 11
            sub_1571c632[idx << 224].field_1024 = 1
            if not sub_1571c632[idx << 224].field_512:
                require 10^uint8(stor10.field_24)
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = sub_1571c632[idx << 224].field_256
                mem[132] = 0 / 10^uint8(stor10.field_24)
                require ext_code.size(stor5)
                call stor5.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_1571c632[idx << 224].field_256, 0 / 10^uint8(stor10.field_24)
            else:
                require sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / sub_1571c632[idx << 224].field_512 == sub_1571c632[idx << 224].field_768
                require 10^uint8(stor10.field_24)
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = sub_1571c632[idx << 224].field_256
                mem[132] = sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / 10^uint8(stor10.field_24)
                require ext_code.size(stor5)
                call stor5.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_1571c632[idx << 224].field_256, sub_1571c632[idx << 224].field_768 * sub_1571c632[idx << 224].field_512 / 10^uint8(stor10.field_24)
            require ext_call.success
        idx = idx + 1
        continue 
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor5)
        call stor5.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
    uint8(stor21) = 10
}

function sub_85e74fed(?) payable {
    require uint8(stor21) <= 11
    require uint8(stor21) != 5
    if stor8:
        require block.timestamp >= stor8
    require block.timestamp < stor9
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require uint32(stor14.field_0) < 16777215
    require stor13[address(msg.sender)].field_0 >= 1
    require ext_code.size(msg.sender)
    call msg.sender.getInfo() with:
         gas gas_remaining wei
    require ext_call.success
    require stor3 == ext_call.return_data[140 len 20]
    if msg.value <= 0:
        return 0
    require stor15 < stor6
    require stor20 + stor19 >= stor19
    if not msg.value:
        require stor20 + stor19
        require 0 / stor20 + stor19 <= msg.value
        require (0 / stor20 + stor19) + stor15 >= stor15
        if (0 / stor20 + stor19) + stor15 <= stor6:
            sub_1571c632[uint32(stor14.field_0)].field_0 = arg3
            sub_1571c632[uint32(stor14.field_0)].field_256 = arg2
            sub_1571c632[uint32(stor14.field_0)].field_512 = 0 / stor20 + stor19
            sub_1571c632[uint32(stor14.field_0)].field_768 = arg1
            sub_1571c632[uint32(stor14.field_0)].field_1024 = 0
            sub_1571c632[uint32(stor14.field_0)].field_1280 = 0
            sub_1571c632[uint32(stor14.field_0)].field_1280 = msg.value - (0 / stor20 + stor19)
            require (0 / stor20 + stor19) + stor15 >= stor15
            stor15 += 0 / stor20 + stor19
            if not 0 / stor20 + stor19:
                require stor16 >= stor16
            else:
                require arg1 * 0 / stor20 + stor19 / 0 / stor20 + stor19 == arg1
                require (arg1 * 0 / stor20 + stor19) + stor16 >= stor16
                stor16 += arg1 * 0 / stor20 + stor19
            call stor2 with:
               value msg.value - (0 / stor20 + stor19) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Invest((0 / stor20 + stor19), arg2, arg3, msg.value - (0 / stor20 + stor19));
            uint32(stor14.field_0) = uint32(uint32(stor14.field_0) + 1)
            if stor12[address(arg2)].field_0 > 0:
                stor12[address(arg2)].field_0 = uint32(stor12[address(arg2)].field_0 + 1)
            else:
                stor12[address(arg2)].field_0 = 1
                stor12[address(arg2)].field_8 = 0
                uint32(stor14.field_32) = uint32(uint32(stor14.field_32) + 1)
            return (0 / stor20 + stor19)
    else:
        require stor20 * msg.value / msg.value == stor20
        require stor20 + stor19
        require stor20 * msg.value / stor20 + stor19 <= msg.value
        require (stor20 * msg.value / stor20 + stor19) + stor15 >= stor15
        if (stor20 * msg.value / stor20 + stor19) + stor15 <= stor6:
            sub_1571c632[uint32(stor14.field_0)].field_0 = arg3
            sub_1571c632[uint32(stor14.field_0)].field_256 = arg2
            sub_1571c632[uint32(stor14.field_0)].field_512 = stor20 * msg.value / stor20 + stor19
            sub_1571c632[uint32(stor14.field_0)].field_768 = arg1
            sub_1571c632[uint32(stor14.field_0)].field_1024 = 0
            sub_1571c632[uint32(stor14.field_0)].field_1280 = 0
            sub_1571c632[uint32(stor14.field_0)].field_1280 = msg.value - (stor20 * msg.value / stor20 + stor19)
            require (stor20 * msg.value / stor20 + stor19) + stor15 >= stor15
            stor15 += stor20 * msg.value / stor20 + stor19
            if not stor20 * msg.value / stor20 + stor19:
                require stor16 >= stor16
            else:
                require arg1 * stor20 * msg.value / stor20 + stor19 / stor20 * msg.value / stor20 + stor19 == arg1
                require (arg1 * stor20 * msg.value / stor20 + stor19) + stor16 >= stor16
                stor16 += arg1 * stor20 * msg.value / stor20 + stor19
            call stor2 with:
               value msg.value - (stor20 * msg.value / stor20 + stor19) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Invest((stor20 * msg.value / stor20 + stor19), arg2, arg3, msg.value - (stor20 * msg.value / stor20 + stor19));
            uint32(stor14.field_0) = uint32(uint32(stor14.field_0) + 1)
            if stor12[address(arg2)].field_0 > 0:
                stor12[address(arg2)].field_0 = uint32(stor12[address(arg2)].field_0 + 1)
            else:
                stor12[address(arg2)].field_0 = 1
                stor12[address(arg2)].field_8 = 0
                uint32(stor14.field_32) = uint32(uint32(stor14.field_32) + 1)
            return (stor20 * msg.value / stor20 + stor19)
    stor15 = stor6
    if not stor6 - stor15:
        require stor16 >= stor16
    else:
        require (stor6 * arg1) - (stor15 * arg1) / stor6 - stor15 == arg1
        require (stor6 * arg1) - (stor15 * arg1) + stor16 >= stor16
        stor16 = (stor6 * arg1) - (stor15 * arg1) + stor16
    if not stor6 - stor15:
        require stor20
        require 0 / stor20 >= 0
        sub_1571c632[uint32(stor14.field_0)].field_0 = arg3
        sub_1571c632[uint32(stor14.field_0)].field_256 = arg2
        sub_1571c632[uint32(stor14.field_0)].field_512 = stor6 - stor15
        sub_1571c632[uint32(stor14.field_0)].field_768 = arg1
        sub_1571c632[uint32(stor14.field_0)].field_1024 = 0
        sub_1571c632[uint32(stor14.field_0)].field_1280 = 0
        sub_1571c632[uint32(stor14.field_0)].field_1280 = 0 / stor20
        call arg2 with:
           value msg.value - stor6 + stor15 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor2 with:
           value 0 / stor20 wei
             gas 2300 * is_zero(value) wei
        emit Invest((stor6 - stor15), arg2, arg3, 0 / stor20);
    else:
        require (stor6 * stor19) - (stor15 * stor19) / stor6 - stor15 == stor19
        require stor20
        require (stor6 * stor19) - (stor15 * stor19) / stor20 >= 0
        sub_1571c632[uint32(stor14.field_0)].field_0 = arg3
        sub_1571c632[uint32(stor14.field_0)].field_256 = arg2
        sub_1571c632[uint32(stor14.field_0)].field_512 = stor6 - stor15
        sub_1571c632[uint32(stor14.field_0)].field_768 = arg1
        sub_1571c632[uint32(stor14.field_0)].field_1024 = 0
        sub_1571c632[uint32(stor14.field_0)].field_1280 = 0
        sub_1571c632[uint32(stor14.field_0)].field_1280 = (stor6 * stor19) - (stor15 * stor19) / stor20
        call arg2 with:
           value msg.value - stor6 + stor15 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor2 with:
           value (stor6 * stor19) - (stor15 * stor19) / stor20 wei
             gas 2300 * is_zero(value) wei
        emit Invest((stor6 - stor15), arg2, arg3, (stor6 * stor19) - (stor15 * stor19) / stor20);
    uint32(stor14.field_0) = uint32(uint32(stor14.field_0) + 1)
    if stor12[address(arg2)].field_0 > 0:
        stor12[address(arg2)].field_0 = uint32(stor12[address(arg2)].field_0 + 1)
    else:
        stor12[address(arg2)].field_0 = 1
        stor12[address(arg2)].field_8 = 0
        uint32(stor14.field_32) = uint32(uint32(stor14.field_32) + 1)
    return (stor6 - stor15)
}

function sub_3840bc42(?) payable {
    mem[64] = 96
    require not msg.value
    require uint8(stor21) <= 11
    require uint8(stor21) != 8
    require stor5
    if uint8(stor10.field_0):
        if uint8(stor21) <= 11:
            require uint8(stor21) == 6
            require uint32(var27001) < uint32(stor14.field_0)
            mem[0] = uint32(var27001)
            mem[32] = 11
            if sub_1571c632[var27001 << 224].field_256 != msg.sender:
                var27001 = var27001 + 1
                continue 
            mem[0] = uint32(var27001)
            mem[32] = 11
            if sub_1571c632[var27001 << 224].field_0 != arg1:
                var27001 = var27001 + 1
                continue 
            mem[0] = uint32(var27001)
            mem[32] = 11
            if sub_1571c632[var27001 << 224].field_1024 <= 5:
                if sub_1571c632[var27001 << 224].field_1024:
                    var27001 = var27001 + 1
                    continue 
                mem[0] = uint32(var27001)
                mem[32] = 11
                sub_1571c632[var27001 << 224].field_1024 = 1
                if not sub_1571c632[var27001 << 224].field_512:
                    var27001 = var27001 + 1
                    continue 
                if sub_1571c632[var27001 << 224].field_768 * sub_1571c632[var27001 << 224].field_512 / sub_1571c632[var27001 << 224].field_512 == sub_1571c632[var27001 << 224].field_768:
                    if sub_1571c632[var27001 << 224].field_768 * sub_1571c632[var27001 << 224].field_512 >= 0:
                        var27001 = var27001 + 1
                        continue 
    else:
        if uint8(stor21) <= 11:
            if uint8(stor21) != 5:
                if uint8(stor21) <= 11:
                    require uint8(stor21) == 6
                    require uint32(var29001) < uint32(stor14.field_0)
                    mem[0] = uint32(var29001)
                    mem[32] = 11
                    if sub_1571c632[var29001 << 224].field_256 != msg.sender:
                        var29001 = var29001 + 1
                        continue 
                    mem[0] = uint32(var29001)
                    mem[32] = 11
                    if sub_1571c632[var29001 << 224].field_0 != arg1:
                        var29001 = var29001 + 1
                        continue 
                    mem[0] = uint32(var29001)
                    mem[32] = 11
                    if sub_1571c632[var29001 << 224].field_1024 <= 5:
                        if sub_1571c632[var29001 << 224].field_1024:
                            var29001 = var29001 + 1
                            continue 
                        mem[0] = uint32(var29001)
                        mem[32] = 11
                        sub_1571c632[var29001 << 224].field_1024 = 1
                        if not sub_1571c632[var29001 << 224].field_512:
                            var29001 = var29001 + 1
                            continue 
                        if sub_1571c632[var29001 << 224].field_768 * sub_1571c632[var29001 << 224].field_512 / sub_1571c632[var29001 << 224].field_512 == sub_1571c632[var29001 << 224].field_768:
                            if sub_1571c632[var29001 << 224].field_768 * sub_1571c632[var29001 << 224].field_512 >= 0:
                                var29001 = var29001 + 1
                                continue 
            else:
                require ext_code.size(stor5)
                call stor5.0x313ce567 with:
                     gas gas_remaining wei
                require ext_call.success
                require ext_call.return_data[31 len 1] <= uint8(stor10.field_8)
                uint8(stor10.field_16) = uint8(ext_call.return_data[0])
                if ext_call.return_data[31 len 1] == uint8(stor10.field_8):
                    mem[100] = this.address
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if 10^uint8(stor10.field_24):
                        stor16 = stor16 / 10^uint8(stor10.field_24)
                        if ext_call.return_data[0] < stor16 / 10^uint8(stor10.field_24):
                            if uint8(stor21) <= 11:
                                require uint8(stor21) == 6
                                require uint32(var39001) < uint32(stor14.field_0)
                                mem[0] = uint32(var39001)
                                mem[32] = 11
                                if sub_1571c632[var39001 << 224].field_256 != msg.sender:
                                    var39001 = var39001 + 1
                                    continue 
                                mem[0] = uint32(var39001)
                                mem[32] = 11
                                if sub_1571c632[var39001 << 224].field_0 != arg1:
                                    var39001 = var39001 + 1
                                    continue 
                                mem[0] = uint32(var39001)
                                mem[32] = 11
                                if sub_1571c632[var39001 << 224].field_1024 <= 5:
                                    if sub_1571c632[var39001 << 224].field_1024:
                                        var39001 = var39001 + 1
                                        continue 
                                    mem[0] = uint32(var39001)
                                    mem[32] = 11
                                    sub_1571c632[var39001 << 224].field_1024 = 1
                                    if not sub_1571c632[var39001 << 224].field_512:
                                        var39001 = var39001 + 1
                                        continue 
                                    if sub_1571c632[var39001 << 224].field_768 * sub_1571c632[var39001 << 224].field_512 / sub_1571c632[var39001 << 224].field_512 == sub_1571c632[var39001 << 224].field_768:
                                        if sub_1571c632[var39001 << 224].field_768 * sub_1571c632[var39001 << 224].field_512 >= 0:
                                            var39001 = var39001 + 1
                                            continue 
                        else:
                            if stor16 <= ext_call.return_data[0]:
                                stor17 = ext_call.return_data[0] - stor16
                                uint8(stor10.field_0) = 1
                                uint8(stor21) = 6
                                if uint8(stor21) <= 11:
                                    require uint8(stor21) == 6
                                    require uint32(var44001) < uint32(stor14.field_0)
                                    mem[0] = uint32(var44001)
                                    mem[32] = 11
                                    if sub_1571c632[var44001 << 224].field_256 != msg.sender:
                                        var44001 = var44001 + 1
                                        continue 
                                    mem[0] = uint32(var44001)
                                    mem[32] = 11
                                    if sub_1571c632[var44001 << 224].field_0 != arg1:
                                        var44001 = var44001 + 1
                                        continue 
                                    mem[0] = uint32(var44001)
                                    mem[32] = 11
                                    if sub_1571c632[var44001 << 224].field_1024 <= 5:
                                        if sub_1571c632[var44001 << 224].field_1024:
                                            var44001 = var44001 + 1
                                            continue 
                                        mem[0] = uint32(var44001)
                                        mem[32] = 11
                                        sub_1571c632[var44001 << 224].field_1024 = 1
                                        if not sub_1571c632[var44001 << 224].field_512:
                                            var44001 = var44001 + 1
                                            continue 
                                        if sub_1571c632[var44001 << 224].field_768 * sub_1571c632[var44001 << 224].field_512 / sub_1571c632[var44001 << 224].field_512 == sub_1571c632[var44001 << 224].field_768:
                                            if sub_1571c632[var44001 << 224].field_768 * sub_1571c632[var44001 << 224].field_512 >= 0:
                                                var44001 = var44001 + 1
                                                continue 
                else:
                    uint8(stor10.field_24) = uint8(uint8(stor10.field_8) - uint8(stor10.field_16))
                    mem[100] = this.address
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if 10^uint8(stor10.field_24):
                        stor16 = stor16 / 10^uint8(stor10.field_24)
                        if ext_call.return_data[0] < stor16 / 10^uint8(stor10.field_24):
                            if uint8(stor21) <= 11:
                                require uint8(stor21) == 6
                                require uint32(var40001) < uint32(stor14.field_0)
                                mem[0] = uint32(var40001)
                                mem[32] = 11
                                if sub_1571c632[var40001 << 224].field_256 != msg.sender:
                                    var40001 = var40001 + 1
                                    continue 
                                mem[0] = uint32(var40001)
                                mem[32] = 11
                                if sub_1571c632[var40001 << 224].field_0 != arg1:
                                    var40001 = var40001 + 1
                                    continue 
                                mem[0] = uint32(var40001)
                                mem[32] = 11
                                if sub_1571c632[var40001 << 224].field_1024 <= 5:
                                    if sub_1571c632[var40001 << 224].field_1024:
                                        var40001 = var40001 + 1
                                        continue 
                                    mem[0] = uint32(var40001)
                                    mem[32] = 11
                                    sub_1571c632[var40001 << 224].field_1024 = 1
                                    if not sub_1571c632[var40001 << 224].field_512:
                                        var40001 = var40001 + 1
                                        continue 
                                    if sub_1571c632[var40001 << 224].field_768 * sub_1571c632[var40001 << 224].field_512 / sub_1571c632[var40001 << 224].field_512 == sub_1571c632[var40001 << 224].field_768:
                                        if sub_1571c632[var40001 << 224].field_768 * sub_1571c632[var40001 << 224].field_512 >= 0:
                                            var40001 = var40001 + 1
                                            continue 
                        else:
                            if stor16 <= ext_call.return_data[0]:
                                stor17 = ext_call.return_data[0] - stor16
                                uint8(stor10.field_0) = 1
                                uint8(stor21) = 6
                                if uint8(stor21) <= 11:
                                    require uint8(stor21) == 6
                                    require uint32(var45001) < uint32(stor14.field_0)
                                    mem[0] = uint32(var45001)
                                    mem[32] = 11
                                    if sub_1571c632[var45001 << 224].field_256 != msg.sender:
                                        var45001 = var45001 + 1
                                        continue 
                                    mem[0] = uint32(var45001)
                                    mem[32] = 11
                                    if sub_1571c632[var45001 << 224].field_0 != arg1:
                                        var45001 = var45001 + 1
                                        continue 
                                    mem[0] = uint32(var45001)
                                    mem[32] = 11
                                    if sub_1571c632[var45001 << 224].field_1024 <= 5:
                                        if sub_1571c632[var45001 << 224].field_1024:
                                            var45001 = var45001 + 1
                                            continue 
                                        mem[0] = uint32(var45001)
                                        mem[32] = 11
                                        sub_1571c632[var45001 << 224].field_1024 = 1
                                        if not sub_1571c632[var45001 << 224].field_512:
                                            var45001 = var45001 + 1
                                            continue 
                                        if sub_1571c632[var45001 << 224].field_768 * sub_1571c632[var45001 << 224].field_512 / sub_1571c632[var45001 << 224].field_512 == sub_1571c632[var45001 << 224].field_768:
                                            if sub_1571c632[var45001 << 224].field_768 * sub_1571c632[var45001 << 224].field_512 >= 0:
                                                var45001 = var45001 + 1
                                                continue 
    revert
}



}
