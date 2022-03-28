contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
bool stor3; offset 256
uint8 stor3;
uint8 stor3; offset 128
uint64 stor3; offset 8
address stor4;
uint256 stor5;
uint8 stor7;
uint256 stor11;

function _fallback() payable {
    stor5 = 1
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    stor4 = 0xda16251b2977f86cb8d4c3318e9c6f92d7fc1a8f
    require ext_code.size(0xda16251b2977f86cb8d4c3318e9c6f92d7fc1a8f)
    call 0xda16251b2977f86cb8d4c3318e9c6f92d7fc1a8f.getBetsProcessed() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[30 len 2] == 157
    uint8(stor1.field_160) = 1
    stor7 = 1
    uint8(stor3.field_0) = 5
    stor3.field_8 % 72057594037927936 = 0
    uint8(stor3.field_128) = 1
    stor3.field_256 % 1 = 0
    return code.data[343 len 8553]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor2; offset 8
uint256 stor2;
uint8 stor3; offset 128
uint64 stor3;
uint64 stor3; offset 64
address stor4;
uint256 stor5;
mapping of uint64 stor6;
uint8 stor7;
mapping of uint8 stor8;
array of struct stor9;
array of uint256 stor10;
uint256 stor11;
uint8 stor17F1;
uint8 stor3B24;
uint8 stor3E6A;
uint8 stor7CF1;
uint8 stor8190;
uint8 stor8987;
uint8 stor9439;
uint8 stor99F6;
uint8 stor9EBB;
uint8 storCC4F;
uint8 storD63F;
uint8 storFF55;

function totalGames() {
    return stor9.length
}

function deleteContract() {
    require stor0 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() {
    revert 
}

function changeOperator(address arg1) {
    require stor0 == msg.sender
    address(stor1.field_0) = arg1
}

function calculateRandomNumberByBlockhash(uint256 arg1, address arg2) {
    return uint8(sha3(arg2, arg1) % 37)
}

function enableBetting_only_Dev() {
    if stor0 != msg.sender:
        require address(stor1.field_0) == msg.sender
    uint8(stor3.field_128) = 1
}

function disableBetting_only_Dev() {
    if stor0 != msg.sender:
        require address(stor1.field_0) == msg.sender
    uint8(stor3.field_128) = 0
}

function getSettings() {
    return uint256(stor2.field_0), 
           Mask(248, 0, stor2.field_0),
           stor7,
           storFF55,
           stor3B24,
           uint8(stor1.field_0),
           bool(uint8(stor3.field_128))
}

function Invest() payable {
    require stor0 == msg.sender
    require 35 * stor5
    if 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16 != uint256(stor2.field_0):
        uint256(stor2.field_0) = 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16
        emit SettingsChanged(256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16, Mask(248, 8, 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16), stor7, storFF55, stor9EBB, uint8(stor1.field_0), bool(uint8(stor3.field_128)));
}

function sub_f921f2b8(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor0 != msg.sender:
        require address(stor1.field_0) == msg.sender
    idx = 0
    while idx < arg1.length:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            s = stor10.length + sha3(10) + 1
            while sha3(10) + stor10.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 10
        require idx < arg1.length
        stor10[stor10.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function calcHash(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function changeSettings(uint256 arg1, uint64 arg2, uint8 arg3, uint8 arg4, uint8 arg5, uint8 arg6) {
    require stor0 == msg.sender
    if arg1 > 0:
        stor5 = arg1
    uint8(stor1.field_160) = arg3
    if arg2:
        uint64(stor3.field_0) = arg2
    if arg4 > 0:
        storFF55 = arg4
        stor7CF1 = arg4
        stor17F1 = arg4
        storCC4F = arg4
        stor3E6A = arg4
        storD63F = arg4
    if arg5 > 0:
        stor9EBB = arg5
        stor99F6 = arg5
        stor8987 = arg5
        stor3B24 = arg5
        stor9439 = arg5
        stor8190 = arg5
    if arg6 > 0:
        stor7 = arg6
    require stor0 == msg.sender
    require 35 * stor5
    if 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16 != uint256(stor2.field_0):
        uint256(stor2.field_0) = 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16
        emit SettingsChanged(256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16, Mask(248, 8, 256 * 10^16 * eth.balance(this.address) / 35 * stor5 / 256 * 10^16), stor7, storFF55, stor9EBB, uint8(stor1.field_0), bool(uint8(stor3.field_128)));
}

function emergencyFixGameResult(uint64 arg1, uint256 arg2) {
    if stor0 != msg.sender:
        require address(stor1.field_0) == msg.sender
    require arg1 < stor9.length
    require 200 == uint8(stor9[arg1].field_768)
    require arg1 < stor9.length
    uint8(stor9[arg1].field_768) = uint8(sha3(address(stor9[arg1].field_0), arg2) % 37)
    stor9[arg1].field_512 = block.number
    s = 0
    idx = 0
    t = 0
    u = 0
    while uint8(idx) < 157:
        if not stor9[arg1].field_1024 or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            continue 
        mem[1280] = 0
        mem[1252] = uint16((256 * uint8(idx) + 1) + uint8(stor9[arg1].field_768) + 1)
        require ext_code.size(stor4)
        call stor4.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + uint8(stor9[arg1].field_768) + 1)
        mem[1248] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    mem[0] = uint8(t + 1)
                    mem[32] = 8
                    if stor8[t + 1 << 248]:
                        if 1 >= stor8[t + 1 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        mem[0] = uint8(t - 31)
                        mem[32] = 8
                        if stor8[t - 31 << 248]:
                            if 1 >= stor8[t - 31 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
        else:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    mem[0] = uint8(t + 1)
                    mem[32] = 8
                    if stor8[t + 1 << 248]:
                        if 1 >= stor8[t + 1 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        mem[0] = uint8(t - 31)
                        mem[32] = 8
                        if stor8[t - 31 << 248]:
                            if 1 >= stor8[t - 31 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
        revert 
    if u:
        call address(stor9[arg1].field_0) with:
           value u wei
             gas 2300 * is_zero(value) wei
    else:
        call address(stor9[arg1].field_0) with:
           value 1 wei
             gas 0 wei
    require ext_call.success
    emit EndGame(address(stor9[arg1].field_0), uint8(stor9[arg1].field_768), arg1);
}

function sub_4bae599f(?) payable {
    if not uint8(stor3.field_128):
        emit ErrorLog(msg.sender, Array(len=16, data='ContractDisabled'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if uint64(stor3.field_64) >= uint64(stor3.field_0):
        emit ErrorLog(msg.sender, Array(len=23, data='checkNbBetsCurrentBlock'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if msg.value < Mask(248, 0, stor2.field_8):
        emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if not arg1:
        emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if msg.value > uint256(stor2.field_0):
        emit ErrorLog(msg.sender, Array(len=15, data='Limit for table'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < 157:
        if not arg1 or not 2^idx:
            idx = idx + 1
            s = s
            t = t
            continue 
        if uint8(s + 1) <= 32:
            if uint8(-s + 31) < 32:
                mem[0] = uint8(s + 1)
                mem[32] = 8
                if stor8[s + 1 << 248]:
                    if 1 >= stor8[s + 1 << 248]:
                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor2.field_8)
                            continue 
                else:
                    if 1 >= stor7:
                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor2.field_8)
                            continue 
        else:
            if uint8(s + 1) <= 64:
                if uint8(-s + 63) < 32:
                    mem[0] = uint8(s - 31)
                    mem[32] = 8
                    if stor8[s - 31 << 248]:
                        if 1 >= stor8[s - 31 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
        revert 
    if t != msg.value:
        emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if not stor6[address(msg.sender)]:
        if not stor9.length:
            uint64(stor3.field_64) = 0
        else:
            require stor9.length - 1 < stor9.length
            if stor9[stor9.length].field_0 != block.number:
                uint64(stor3.field_64) = 0
            else:
                uint64(stor3.field_64) = uint64(uint64(stor3.field_64) + 1)
        stor6[address(msg.sender)] = uint64(stor9.length + 1)
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = (9 * stor9.length) + 9
            while 9 * stor9.length > idx:
                address(stor9[idx].field_0) = 0
                stor9[idx].field_256 = 0
                stor9[idx].field_512 = 0
                uint8(stor9[idx].field_768) = 0
                stor9[idx].field_1024 = 0
                stor9[idx].field_1280 = 0
                stor9[idx].field_1536 = 0
                stor9[idx].field_1792 = 0
                stor9[idx].field_2048 = 0
                idx = idx + 9
                continue 
    else:
        require uint64(stor6[address(msg.sender)] - 1) < stor9.length
        if 37 == uint8(stor9[uint64(stor6[address(msg.sender)] - 1)].field_768):
            emit ErrorLog(msg.sender, Array(len=29, data='previous game is not finished'));
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if not stor9.length:
            uint64(stor3.field_64) = 0
            stor6[address(msg.sender)] = uint64(stor9.length + 1)
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                idx = (9 * stor9.length) + 9
                while 9 * stor9.length > idx:
                    address(stor9[idx].field_0) = 0
                    stor9[idx].field_256 = 0
                    stor9[idx].field_512 = 0
                    uint8(stor9[idx].field_768) = 0
                    stor9[idx].field_1024 = 0
                    stor9[idx].field_1280 = 0
                    stor9[idx].field_1536 = 0
                    stor9[idx].field_1792 = 0
                    stor9[idx].field_2048 = 0
                    idx = idx + 9
                    continue 
        else:
            require stor9.length - 1 < stor9.length
            if stor9[stor9.length].field_0 != block.number:
                uint64(stor3.field_64) = 0
            else:
                uint64(stor3.field_64) = uint64(uint64(stor3.field_64) + 1)
            stor6[address(msg.sender)] = uint64(stor9.length + 1)
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                s = (9 * stor9.length) + 9
                while 9 * stor9.length > s:
                    address(stor9[s].field_0) = 0
                    stor9[s].field_256 = 0
                    stor9[s].field_512 = 0
                    uint8(stor9[s].field_768) = 0
                    stor9[s].field_1024 = 0
                    stor9[s].field_1280 = 0
                    stor9[s].field_1536 = 0
                    stor9[s].field_1792 = 0
                    stor9[s].field_2048 = 0
                    s = s + 9
                    continue 
    address(stor9[stor9.length].field_0) = msg.sender
    stor9[stor9.length].field_256 = block.number
    stor9[stor9.length].field_512 = 0
    uint8(stor9[stor9.length].field_768) = 37
    stor9[stor9.length].field_1024 = arg1
    stor9[stor9.length].field_1280 = arg2
    stor9[stor9.length].field_1536 = arg3
    stor9[stor9.length].field_1792 = arg4
    stor9[stor9.length].field_2048 = stor11
    stor11++
    emit 0x56b9902a: msg.sender, block.number, stor9.length - 1, stor11
}

function getGame(uint64 arg1) {
    require arg1 < stor9.length
    s = 0
    idx = 0
    t = 0
    u = 0
    while uint8(idx) < 157:
        if not stor9[arg1].field_1024 or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            continue 
        mem[704] = 0
        mem[676] = uint16((256 * uint8(idx) + 1) + uint8(stor9[arg1].field_768) + 1)
        require ext_code.size(stor4)
        call stor4.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + uint8(stor9[arg1].field_768) + 1)
        mem[672] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    mem[0] = uint8(t + 1)
                    mem[32] = 8
                    if stor8[t + 1 << 248]:
                        if 1 >= stor8[t + 1 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        mem[0] = uint8(t - 31)
                        mem[32] = 8
                        if stor8[t - 31 << 248]:
                            if 1 >= stor8[t - 31 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
        else:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    mem[0] = uint8(t + 1)
                    mem[32] = 8
                    if stor8[t + 1 << 248]:
                        if 1 >= stor8[t + 1 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        mem[0] = uint8(t - 31)
                        mem[32] = 8
                        if stor8[t - 31 << 248]:
                            if 1 >= stor8[t - 31 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
        revert 
    require arg1 < stor9.length
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < 157:
        if not stor9[arg1].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            t = t
            continue 
        if uint8(s + 1) <= 32:
            if uint8(-s + 31) < 32:
                mem[0] = uint8(s + 1)
                mem[32] = 8
                if stor8[s + 1 << 248]:
                    if 1 >= stor8[s + 1 << 248]:
                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor2.field_8)
                            continue 
                else:
                    if 1 >= stor7:
                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor2.field_8)
                            continue 
        else:
            if uint8(s + 1) <= 64:
                if uint8(-s + 63) < 32:
                    mem[0] = uint8(s - 31)
                    mem[32] = 8
                    if stor8[s - 31 << 248]:
                        if 1 >= stor8[s - 31 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
        revert 
    require arg1 < stor9.length
    idx = 0
    s = 0
    while uint8(idx) < 157:
        if not stor9[arg1].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require arg1 < stor9.length
    if u:
        return arg1 << 192, 
               address(stor9[arg1].field_0),
               stor9[arg1].field_256,
               stor9[arg1].field_512,
               u,
               uint8(stor9[arg1].field_768),
               stor9[arg1].field_1024,
               stor9[arg1].field_1280,
               stor9[arg1].field_1536,
               t,
               s
    return arg1 << 192, 
           address(stor9[arg1].field_0),
           stor9[arg1].field_256,
           stor9[arg1].field_512,
           1,
           uint8(stor9[arg1].field_768),
           stor9[arg1].field_1024,
           stor9[arg1].field_1280,
           stor9[arg1].field_1536,
           t,
           s
}

function sub_256dae99(?) {
    mem[128 len arg2.length] = arg2[all]
    if stor0 != msg.sender:
        require address(stor1.field_0) == msg.sender
    require arg1 < stor9.length
    if uint8(stor9[arg1].field_768) != 37:
        emit ErrorLog(msg.sender, Array(len=22, data='Gamble already spinned'));
    else:
        require arg1 < stor9.length
        require stor9[arg1].field_2048 < stor10.length
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = mem[ceil32(arg2.length) + floor32(arg2.length) + 128] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        if stor10[stor9[arg1].field_2048] != sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]):
            emit ErrorLog(msg.sender, Array(len=12, data='Hash differs'));
        else:
            require arg1 < stor9.length
            mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + arg2.length + 128] = stor9[arg1].field_1792
            require arg1 < stor9.length
            uint8(stor9[arg1].field_768) = uint8(sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]) % 37)
            stor9[arg1].field_512 = block.number
            s = 0
            idx = 0
            t = 0
            u = 0
            while uint8(idx) < 157:
                if not stor9[arg1].field_1024 or not 2^idx:
                    s = s
                    idx = idx + 1
                    t = t
                    u = u
                    continue 
                mem[ceil32(arg2.length) + 736] = 0
                mem[ceil32(arg2.length) + 708] = uint16((256 * uint8(idx) + 1) + uint8(stor9[arg1].field_768) + 1)
                require ext_code.size(stor4)
                call stor4.getCoeff(uint16 rg1) with:
                     gas gas_remaining - 50 wei
                    args uint16((256 * uint8(idx) + 1) + uint8(stor9[arg1].field_768) + 1)
                mem[ceil32(arg2.length) + 704] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    if uint8(t + 1) <= 32:
                        if uint8(-t + 31) < 32:
                            mem[0] = uint8(t + 1)
                            mem[32] = 8
                            if stor8[t + 1 << 248]:
                                if 1 >= stor8[t + 1 << 248]:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        t = t + 1
                                        u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
                            else:
                                if 1 >= stor7:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        t = t + 1
                                        u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
                    else:
                        if uint8(t + 1) <= 64:
                            if uint8(-t + 63) < 32:
                                mem[0] = uint8(t - 31)
                                mem[32] = 8
                                if stor8[t - 31 << 248]:
                                    if 1 >= stor8[t - 31 << 248]:
                                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            t = t + 1
                                            u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                            continue 
                                else:
                                    if 1 >= stor7:
                                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                            s = ext_call.return_data[0]
                                            idx = idx + 1
                                            t = t + 1
                                            u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                            continue 
                else:
                    if uint8(t + 1) <= 32:
                        if uint8(-t + 31) < 32:
                            mem[0] = uint8(t + 1)
                            mem[32] = 8
                            if stor8[t + 1 << 248]:
                                if 1 >= stor8[t + 1 << 248]:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0] + 1
                                        idx = idx + 1
                                        t = t + 1
                                        u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
                            else:
                                if 1 >= stor7:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0] + 1
                                        idx = idx + 1
                                        t = t + 1
                                        u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
                    else:
                        if uint8(t + 1) <= 64:
                            if uint8(-t + 63) < 32:
                                mem[0] = uint8(t - 31)
                                mem[32] = 8
                                if stor8[t - 31 << 248]:
                                    if 1 >= stor8[t - 31 << 248]:
                                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                            s = ext_call.return_data[0] + 1
                                            idx = idx + 1
                                            t = t + 1
                                            u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                            continue 
                                else:
                                    if 1 >= stor7:
                                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                            s = ext_call.return_data[0] + 1
                                            idx = idx + 1
                                            t = t + 1
                                            u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                            continue 
                revert 
            if u:
                call address(stor9[arg1].field_0) with:
                   value u wei
                     gas 2300 * is_zero(value) wei
            else:
                call address(stor9[arg1].field_0) with:
                   value 1 wei
                     gas 0 wei
            require ext_call.success
            require arg1 < stor9.length
            emit EndGame(address(stor9[arg1].field_0), uint8(stor9[arg1].field_768), arg1);
}

function checkGameResult(address arg1) {
    if arg1:
        require stor6[address(arg1)]
        require uint64(stor6[address(arg1)] - 1) < stor9.length
        require block.number > stor9[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor1.field_160)
        require uint64(stor6[address(arg1)] - 1) < stor9.length
        if block.hash(stor9[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor1.field_160)):
            require uint64(stor6[address(arg1)] - 1) < stor9.length
            uint8(stor9[uint64(stor6[address(arg1)] - 1)].field_768) = uint8(sha3(address(stor9[uint64(stor6[address(arg1)] - 1)].field_0), block.hash(stor9[uint64(stor6[address(arg1)] - 1)].field_256 + uint8(stor1.field_160))) % 37)
        else:
            emit ErrorLog(address(msg.sender), Array(len=29, data='Cannot generate random number'));
            require uint64(stor6[address(arg1)] - 1) < stor9.length
            uint8(stor9[uint64(stor6[address(arg1)] - 1)].field_768) = 200
        stor9[uint64(stor6[address(arg1)] - 1)].field_512 = block.number
        s = 0
        idx = 0
        t = 0
        u = 0
        while uint8(idx) < 157:
            if not stor9[uint64(stor6[address(arg1)] - 1)].field_1024 or not 2^idx:
                s = s
                idx = idx + 1
                t = t
                u = u
                continue 
            mem[704] = 0
            mem[676] = uint16((256 * uint8(idx) + 1) + uint8(stor9[uint64(stor6[address(arg1)] - 1)].field_768) + 1)
            require ext_code.size(stor4)
            call stor4.getCoeff(uint16 rg1) with:
                 gas gas_remaining - 50 wei
                args uint16((256 * uint8(idx) + 1) + uint8(stor9[uint64(stor6[address(arg1)] - 1)].field_768) + 1)
            mem[672] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                if uint8(t + 1) <= 32:
                    if uint8(-t + 31) < 32:
                        mem[0] = uint8(t + 1)
                        mem[32] = 8
                        if stor8[t + 1 << 248]:
                            if 1 >= stor8[t + 1 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                else:
                    if uint8(t + 1) <= 64:
                        if uint8(-t + 63) < 32:
                            mem[0] = uint8(t - 31)
                            mem[32] = 8
                            if stor8[t - 31 << 248]:
                                if 1 >= stor8[t - 31 << 248]:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        t = t + 1
                                        u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
                            else:
                                if 1 >= stor7:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0]
                                        idx = idx + 1
                                        t = t + 1
                                        u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
            else:
                if uint8(t + 1) <= 32:
                    if uint8(-t + 31) < 32:
                        mem[0] = uint8(t + 1)
                        mem[32] = 8
                        if stor8[t + 1 << 248]:
                            if 1 >= stor8[t + 1 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                else:
                    if uint8(t + 1) <= 64:
                        if uint8(-t + 63) < 32:
                            mem[0] = uint8(t - 31)
                            mem[32] = 8
                            if stor8[t - 31 << 248]:
                                if 1 >= stor8[t - 31 << 248]:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0] + 1
                                        idx = idx + 1
                                        t = t + 1
                                        u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
                            else:
                                if 1 >= stor7:
                                    if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                        s = ext_call.return_data[0] + 1
                                        idx = idx + 1
                                        t = t + 1
                                        u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                        continue 
            revert 
        require uint64(stor6[address(arg1)] - 1) < stor9.length
        idx = 0
        s = 0
        t = 0
        while uint8(idx) < 157:
            if not stor9[uint64(stor6[address(arg1)] - 1)].field_1024 or not 2^idx:
                idx = idx + 1
                s = s
                t = t
                continue 
            if uint8(s + 1) <= 32:
                if uint8(-s + 31) < 32:
                    mem[0] = uint8(s + 1)
                    mem[32] = 8
                    if stor8[s + 1 << 248]:
                        if 1 >= stor8[s + 1 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
            else:
                if uint8(s + 1) <= 64:
                    if uint8(-s + 63) < 32:
                        mem[0] = uint8(s - 31)
                        mem[32] = 8
                        if stor8[s - 31 << 248]:
                            if 1 >= stor8[s - 31 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + Mask(248, 0, stor2.field_8)
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + Mask(248, 0, stor2.field_8)
                                    continue 
            revert 
        require uint64(stor6[address(arg1)] - 1) < stor9.length
        idx = 0
        s = 0
        while uint8(idx) < 157:
            if not stor9[uint64(stor6[address(arg1)] - 1)].field_1024 or not 2^idx:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require uint64(stor6[address(arg1)] - 1) < stor9.length
        if u:
            return stor6[address(arg1)] - 1 << 192, 
                   address(stor9[uint64(stor6[address(arg1)] - 1)].field_0),
                   stor9[uint64(stor6[address(arg1)] - 1)].field_256,
                   stor9[uint64(stor6[address(arg1)] - 1)].field_512,
                   u,
                   uint8(stor9[uint64(stor6[address(arg1)] - 1)].field_768),
                   stor9[uint64(stor6[address(arg1)] - 1)].field_1024,
                   stor9[uint64(stor6[address(arg1)] - 1)].field_1280,
                   stor9[uint64(stor6[address(arg1)] - 1)].field_1536,
                   t,
                   s
        return stor6[address(arg1)] - 1 << 192, 
               address(stor9[uint64(stor6[address(arg1)] - 1)].field_0),
               stor9[uint64(stor6[address(arg1)] - 1)].field_256,
               stor9[uint64(stor6[address(arg1)] - 1)].field_512,
               1,
               uint8(stor9[uint64(stor6[address(arg1)] - 1)].field_768),
               stor9[uint64(stor6[address(arg1)] - 1)].field_1024,
               stor9[uint64(stor6[address(arg1)] - 1)].field_1280,
               stor9[uint64(stor6[address(arg1)] - 1)].field_1536,
               t,
               s
    require stor6[address(msg.sender)]
    require uint64(stor6[address(msg.sender)] - 1) < stor9.length
    require block.number > stor9[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor1.field_160)
    require uint64(stor6[address(msg.sender)] - 1) < stor9.length
    if block.hash(stor9[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor1.field_160)):
        require uint64(stor6[address(msg.sender)] - 1) < stor9.length
        uint8(stor9[uint64(stor6[address(msg.sender)] - 1)].field_768) = uint8(sha3(address(stor9[uint64(stor6[address(msg.sender)] - 1)].field_0), block.hash(stor9[uint64(stor6[address(msg.sender)] - 1)].field_256 + uint8(stor1.field_160))) % 37)
    else:
        emit ErrorLog(address(msg.sender), Array(len=29, data='Cannot generate random number'));
        require uint64(stor6[address(msg.sender)] - 1) < stor9.length
        uint8(stor9[uint64(stor6[address(msg.sender)] - 1)].field_768) = 200
    stor9[uint64(stor6[address(msg.sender)] - 1)].field_512 = block.number
    s = 0
    idx = 0
    t = 0
    u = 0
    while uint8(idx) < 157:
        if not stor9[uint64(stor6[address(msg.sender)] - 1)].field_1024 or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            continue 
        mem[704] = 0
        mem[676] = uint16((256 * uint8(idx) + 1) + uint8(stor9[uint64(stor6[address(msg.sender)] - 1)].field_768) + 1)
        require ext_code.size(stor4)
        call stor4.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + uint8(stor9[uint64(stor6[address(msg.sender)] - 1)].field_768) + 1)
        mem[672] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    mem[0] = uint8(t + 1)
                    mem[32] = 8
                    if stor8[t + 1 << 248]:
                        if 1 >= stor8[t + 1 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t + 1
                                u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        mem[0] = uint8(t - 31)
                        mem[32] = 8
                        if stor8[t - 31 << 248]:
                            if 1 >= stor8[t - 31 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t + 1
                                    u = (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
        else:
            if uint8(t + 1) <= 32:
                if uint8(-t + 31) < 32:
                    mem[0] = uint8(t + 1)
                    mem[32] = 8
                    if stor8[t + 1 << 248]:
                        if 1 >= stor8[t + 1 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t + 1
                                u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                continue 
            else:
                if uint8(t + 1) <= 64:
                    if uint8(-t + 63) < 32:
                        mem[0] = uint8(t - 31)
                        mem[32] = 8
                        if stor8[t - 31 << 248]:
                            if 1 >= stor8[t - 31 << 248]:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
                        else:
                            if 1 >= stor7:
                                if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t + 1
                                    u = Mask(248, 0, stor2.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.field_8)) + u
                                    continue 
        revert 
    require uint64(stor6[address(msg.sender)] - 1) < stor9.length
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < 157:
        if not stor9[uint64(stor6[address(msg.sender)] - 1)].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            t = t
            continue 
        if uint8(s + 1) <= 32:
            if uint8(-s + 31) < 32:
                mem[0] = uint8(s + 1)
                mem[32] = 8
                if stor8[s + 1 << 248]:
                    if 1 >= stor8[s + 1 << 248]:
                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor2.field_8)
                            continue 
                else:
                    if 1 >= stor7:
                        if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                            idx = idx + 1
                            s = s + 1
                            t = t + Mask(248, 0, stor2.field_8)
                            continue 
        else:
            if uint8(s + 1) <= 64:
                if uint8(-s + 63) < 32:
                    mem[0] = uint8(s - 31)
                    mem[32] = 8
                    if stor8[s - 31 << 248]:
                        if 1 >= stor8[s - 31 << 248]:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
                    else:
                        if 1 >= stor7:
                            if Mask(248, 0, stor2.field_8) <= uint256(stor2.field_0):
                                idx = idx + 1
                                s = s + 1
                                t = t + Mask(248, 0, stor2.field_8)
                                continue 
        revert 
    require uint64(stor6[address(msg.sender)] - 1) < stor9.length
    idx = 0
    s = 0
    while uint8(idx) < 157:
        if not stor9[uint64(stor6[address(msg.sender)] - 1)].field_1024 or not 2^idx:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require uint64(stor6[address(msg.sender)] - 1) < stor9.length
    if u:
        return stor6[address(msg.sender)] - 1 << 192, 
               address(stor9[uint64(stor6[address(msg.sender)] - 1)].field_0),
               stor9[uint64(stor6[address(msg.sender)] - 1)].field_256,
               stor9[uint64(stor6[address(msg.sender)] - 1)].field_512,
               u,
               uint8(stor9[uint64(stor6[address(msg.sender)] - 1)].field_768),
               stor9[uint64(stor6[address(msg.sender)] - 1)].field_1024,
               stor9[uint64(stor6[address(msg.sender)] - 1)].field_1280,
               stor9[uint64(stor6[address(msg.sender)] - 1)].field_1536,
               t,
               s
    return stor6[address(msg.sender)] - 1 << 192, 
           address(stor9[uint64(stor6[address(msg.sender)] - 1)].field_0),
           stor9[uint64(stor6[address(msg.sender)] - 1)].field_256,
           stor9[uint64(stor6[address(msg.sender)] - 1)].field_512,
           1,
           uint8(stor9[uint64(stor6[address(msg.sender)] - 1)].field_768),
           stor9[uint64(stor6[address(msg.sender)] - 1)].field_1024,
           stor9[uint64(stor6[address(msg.sender)] - 1)].field_1280,
           stor9[uint64(stor6[address(msg.sender)] - 1)].field_1536,
           t,
           s
}



}
