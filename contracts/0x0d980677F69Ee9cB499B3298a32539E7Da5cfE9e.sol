contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
bool stor3; offset 256
uint8 stor3;
uint8 stor3; offset 64
uint64 stor3; offset 8
address stor3; offset 72
address stor4;
bool stor6; offset 256
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
uint128 stor6; offset 176
uint256 stor9;
uint256 stor10;

function _fallback() {
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    address(stor3.field_72) = 0x73d6621e9150bff9d1d450caad3c790b6f071f2
    require ext_code.size(0 or 0x73d6621e9150bff9d1d450caad3c790b6f071f2)
    call 0 or 0x73d6621e9150bff9d1d450caad3c790b6f071f2.0x9eb9dd3b with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[30 len 2] == 157
    stor4 = 0x907c9b744701519633e32d6946d215b224bc26ae
    stor2 = 256 * 10^16
    uint8(stor1.field_160) = 1
    uint8(stor3.field_0) = 5
    stor3.field_8 % 72057594037927936 = 0
    uint8(stor3.field_64) = 1
    stor3.field_256 % 1 = 0
    stor9 = 277 * 10^18
    stor10 = 50 * 10^18
    uint8(stor6.field_160) = 3
    uint8(stor6.field_168) = 0
    uint8(stor6.field_176) = 1
    Mask(80, 0, stor6.field_176) = 0
    stor6.field_256 % 1 = 0
    return code.data[498 len 9316]
}



// =====================  Runtime code  =====================


#
#  - preliminaryGameResult(uint64 arg1)
#
address stor0;
array of uint256 stor1;
array of uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint8 stor6; offset 176
uint16 stor6;
uint16 stor6; offset 160
address stor6;
mapping of uint8 stor7;
array of struct stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor7979;
uint8 stor1D90;
uint8 stor6104;
uint8 stor6AD7;
uint8 storA018;
uint8 storA427;
uint8 storA9A1;
uint8 storC425;
uint8 storC747;
uint8 storD9BA;
uint8 storEEC1;
uint8 storF61D;

function totalGames() {
    return stor8.length
}

function deleteContract() {
    require stor0 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() {
    revert 
}

function Invest() payable {
    require stor0 == msg.sender
}

function getDistributeProfitsInfo() {
    return stor11, stor12
}

function getTokenSettings() {
    return uint16(stor6.field_0), stor9, stor10
}

function changeOperator(address arg1) {
    require stor0 == msg.sender
    address(stor1.length) = arg1
}

function calculateRandomNumberByBlockhash(uint256 arg1, address arg2) {
    return uint8(sha3(arg2, arg1) % 37)
}

function enableBetting_only_Dev() {
    if stor0 != msg.sender:
        require address(stor1.length) == msg.sender
    uint8(stor3.length.field_64) = 1
}

function disableBetting_only_Dev() {
    if stor0 != msg.sender:
        require address(stor1.length) == msg.sender
    uint8(stor3.length.field_64) = 0
}

function setSmartAffiliateContract(address arg1) {
    require stor0 == msg.sender
    require address(stor6.field_0) <= 0
    address(stor6.field_0) = arg1
}

function setProfitDistributionContract(address arg1) {
    require stor0 == msg.sender
    require address(stor5.length) <= 0
    address(stor5.length) = arg1
}

function changeTokenSettings(uint16 arg1, uint256 arg2, uint256 arg3) {
    require stor0 == msg.sender
    uint16(stor6.field_160) = arg1
    stor9 = arg2
    stor10 = arg3
}

function getSettings() {
    return stor2.length, 
           Mask(248, 0, stor2.length),
           uint8(stor6.field_0),
           stor6AD7,
           storD9BA,
           uint8(stor1.length),
           bool(uint8(stor3.length.field_64))
}

function changeMaxBet(uint256 arg1) {
    require stor0 == msg.sender
    if 256 * 10^16 * arg1 / 256 * 10^16 != stor2.length:
        stor2.length = 256 * 10^16 * arg1 / 256 * 10^16
        emit SettingsChanged(256 * 10^16 * arg1 / 256 * 10^16, Mask(248, 8, 256 * 10^16 * arg1 / 256 * 10^16), uint8(stor6.field_0), stor6AD7, stor6104, uint8(stor1.length), bool(uint8(stor3.length.field_64)));
}

function distributeProfits(uint256 arg1) {
    if stor0 != msg.sender:
        require address(stor1.length) == msg.sender
    if address(stor5.length) > 0:
        if eth.balance(this.address) >= stor9 + stor10:
            call address(stor5.length) with:
               value eth.balance(this.address) - stor9 wei
                 gas arg1 wei
            require ext_call.success
            stor11 = eth.balance(this.address) - stor9
            stor12 = block.timestamp
}

function changeSettings(uint64 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5) {
    require stor0 == msg.sender
    uint8(stor1.length.field_160) = arg2
    if arg1:
        uint64(stor3.length) = arg1
    if arg3 > 0:
        stor6AD7 = arg3
        stor1D90 = arg3
        storC747 = arg3
        storA018 = arg3
        storA427 = arg3
        stor7979 = arg3
    if arg4 > 0:
        stor6104 = arg4
        storC425 = arg4
        storEEC1 = arg4
        storD9BA = arg4
        storF61D = arg4
        storA9A1 = arg4
    if arg5 > 0:
        uint8(stor6.field_176) = arg5
}

function checkGamesReadyForSpinning() {
    mem[96] = 0
    mem[128 len 8160] = 0
    mem[64] = 8480
    mem[8288] = 0
    mem[8320] = 0
    mem[8352] = 0
    mem[8384] = 0
    mem[8416] = 0
    mem[8448] = 0
    s = 8288
    idx = stor8.length - 1
    t = 0
    while idx >= 0:
        require idx < stor8.length
        mem[0] = 8
        _13 = mem[64]
        mem[64] = mem[64] + 192
        mem[_13] = stor8[idx].field_0
        mem[_13 + 32] = uint256(stor8[idx].field_256)
        mem[_13 + 64] = uint8(stor8[idx].field_512)
        mem[_13 + 96] = uint256(stor8[idx].field_768)
        mem[_13 + 128] = uint256(stor8[idx].field_1024)
        mem[_13 + 160] = uint256(stor8[idx].field_1280)
        if block.number - uint256(stor8[idx].field_256) >= 256:
            mem[mem[64]] = mem[96]
            t = 96
            v = mem[64]
            u = 8192
            while u > 32:
                mem[v + 32] = mem[t + 32]
                t = t + 32
                v = v + 32
                u = u - 32
                continue 
            return memory
              from mem[64]
               len 8192
        if uint8(stor8[idx].field_512) != 37:
            s = _13
            idx = idx - 1
            t = t
            continue 
        if block.number <= uint8(stor1.length.field_160) + uint256(stor8[idx].field_256):
            s = _13
            idx = idx - 1
            t = t
            continue 
        require uint16(t) < 256
        mem[(32 * uint16(t)) + 96] = idx + 1
        s = _13
        idx = idx - 1
        t = t + 1
        continue 
    mem[mem[64]] = mem[96]
    mem[mem[64] + 32 len 8160] = mem[128 len 8160]
    return memory
      from mem[64]
       len 8192
}

function GetGameIndexesToProcess() {
    mem[96] = 0
    mem[128 len 2016] = 0
    mem[64] = 2336
    mem[2144] = 0
    mem[2176] = 0
    mem[2208] = 0
    mem[2240] = 0
    mem[2272] = 0
    mem[2304] = 0
    s = 2144
    idx = stor8.length - 1
    s = 0
    while idx >= 0:
        require idx < stor8.length
        mem[0] = 8
        _17 = mem[64]
        mem[64] = mem[64] + 192
        mem[_17] = stor8[idx].field_0
        mem[_17 + 32] = uint256(stor8[idx].field_256)
        mem[_17 + 64] = uint8(stor8[idx].field_512)
        mem[_17 + 96] = uint256(stor8[idx].field_768)
        mem[_17 + 128] = uint256(stor8[idx].field_1024)
        mem[_17 + 160] = uint256(stor8[idx].field_1280)
        if block.number - uint256(stor8[idx].field_256) < 256:
            if uint8(stor8[idx].field_512) != 37:
                s = _17
                idx = idx - 1
                s = s
                continue 
            if block.number < uint8(stor1.length.field_160) + uint256(stor8[idx].field_256):
                s = _17
                idx = idx - 1
                s = s
                continue 
            require uint8(s) < 64
            mem[(32 * uint8(s)) + 96] = idx + 1
            s = _17
            idx = idx - 1
            s = s + 1
            continue 
        _22 = mem[64]
        mem[mem[64]] = mem[96]
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64] = mem[160]
        s = 160
        t = mem[64] + 64
        idx = 1984
        while idx > 32:
            mem[t + 32] = mem[s + 32]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        return memory
          from mem[64]
           len _22 + -mem[64] + 2048
    mem[mem[64]] = mem[96]
    mem[mem[64] + 32] = mem[128]
    mem[mem[64] + 64] = mem[160]
    mem[mem[64] + 96 len 1952] = mem[192 len 1952]
    return memory
      from mem[64]
       len 2048
}

function emergencyFixGameResult(uint64 arg1, uint256 arg2) {
    if stor0 != msg.sender:
        require address(stor1.length) == msg.sender
    require arg1 < stor8.length
    require 200 == uint8(stor8[arg1].field_512)
    require arg1 < stor8.length
    uint8(stor8[arg1].field_512) = uint8(sha3(stor8[arg1].field_0, arg2) % 37)
    s = 0
    idx = 0
    t = 0
    u = 0
    v = 0
    while uint8(idx) < 157:
        if not uint256(stor8[arg1].field_768) or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            v = v
            continue 
        mem[896] = 0
        mem[868] = uint16((256 * uint8(idx) + 1) + uint8(stor8[arg1].field_512) + 1)
        require ext_code.size(stor3.length.field_72)
        call stor3.length.field_72.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + uint8(stor8[arg1].field_512) + 1)
        mem[864] = ext_call.return_data[0]
        require ext_call.success
        if uint8(u + 1) <= 32:
            require uint8(-u + 31) < 32
            mem[0] = uint8(u + 1)
            mem[32] = 7
            if stor7[u + 1 << 248]:
                require 1 >= stor7[u + 1 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        else:
            require uint8(u + 1) <= 64
            require uint8(-u + 63) < 32
            mem[0] = uint8(u - 31)
            mem[32] = 7
            if stor7[u - 31 << 248]:
                require 1 >= stor7[u - 31 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        require Mask(248, 0, stor2.length.field_8) <= stor2.length
        if ext_call.return_data[0] <= 0:
            if uint8(t) != 1:
                s = ext_call.return_data[0]
                idx = idx + 1
                t = t - 1
                u = u + 1
                v = (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                continue 
            call stor8[arg1].field_0 with:
               value (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                 gas 2300 * is_zero(value) wei
        else:
            if uint8(t) != 1:
                s = ext_call.return_data[0] + 1
                idx = idx + 1
                t = t - 1
                u = u + 1
                v = Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                continue 
            call stor8[arg1].field_0 with:
               value Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
        emit EndGame(stor8[arg1].field_0, uint8(stor8[arg1].field_512), arg1);
    call stor8[arg1].field_0 with:
       value v wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EndGame(stor8[arg1].field_0, uint8(stor8[arg1].field_512), arg1);
}

function ProcessGameExt(uint256 arg1) {
    require arg1 < stor8.length
    if block.number - uint256(stor8[arg1].field_256) >= 256:
        return 2
    if uint8(stor8[arg1].field_512) != 37:
        return 1
    if block.number <= uint256(stor8[arg1].field_256) + uint8(stor1.length.field_160):
        return 1
    if block.hash(uint256(stor8[arg1].field_256) + uint8(stor1.length.field_160)):
        require arg1 < stor8.length
        uint8(stor8[arg1].field_512) = uint8(sha3(stor8[arg1].field_0, block.hash(uint256(stor8[arg1].field_256) + uint8(stor1.length.field_160))) % 37)
    else:
        emit ErrorLog(msg.sender, Array(len=29, data='Cannot generate random number'));
        require arg1 < stor8.length
        uint8(stor8[arg1].field_512) = 200
    require uint64(arg1) < stor8.length
    s = 0
    idx = 0
    t = 0
    u = 0
    v = 0
    while uint8(idx) < 157:
        if not uint256(stor8[uint64(arg1)].field_768) or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            v = v
            continue 
        mem[896] = 0
        mem[868] = uint16((256 * uint8(idx) + 1) + uint8(stor8[uint64(arg1)].field_512) + 1)
        require ext_code.size(stor3.length.field_72)
        call stor3.length.field_72.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + uint8(stor8[uint64(arg1)].field_512) + 1)
        mem[864] = ext_call.return_data[0]
        require ext_call.success
        if uint8(u + 1) <= 32:
            require uint8(-u + 31) < 32
            mem[0] = uint8(u + 1)
            mem[32] = 7
            if stor7[u + 1 << 248]:
                require 1 >= stor7[u + 1 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        else:
            require uint8(u + 1) <= 64
            require uint8(-u + 63) < 32
            mem[0] = uint8(u - 31)
            mem[32] = 7
            if stor7[u - 31 << 248]:
                require 1 >= stor7[u - 31 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        require Mask(248, 0, stor2.length.field_8) <= stor2.length
        if ext_call.return_data[0] <= 0:
            if uint8(t) != 1:
                s = ext_call.return_data[0]
                idx = idx + 1
                t = t - 1
                u = u + 1
                v = (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                continue 
            if (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                call stor8[arg1].field_0 with:
                   value (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if uint8(t) != 1:
                s = ext_call.return_data[0] + 1
                idx = idx + 1
                t = t - 1
                u = u + 1
                v = Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                continue 
            if Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                call stor8[arg1].field_0 with:
                   value Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        require arg1 < stor8.length
        emit EndGame(stor8[arg1].field_0, uint8(stor8[arg1].field_512), arg1);
        return 0
    if v > 0:
        call stor8[arg1].field_0 with:
           value v wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require arg1 < stor8.length
    emit EndGame(stor8[arg1].field_0, uint8(stor8[arg1].field_512), arg1);
    return 0
}

function getGame(uint64 arg1) {
    require arg1 < stor8.length
    s = 0
    idx = 0
    t = 0
    u = 0
    v = 0
    while uint8(idx) < 157:
        if not uint256(stor8[arg1].field_768) or not 2^idx:
            s = s
            idx = idx + 1
            t = t
            u = u
            v = v
            continue 
        mem[512] = 0
        mem[484] = uint16((256 * uint8(idx) + 1) + uint8(stor8[arg1].field_512) + 1)
        require ext_code.size(stor3.length.field_72)
        call stor3.length.field_72.getCoeff(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args uint16((256 * uint8(idx) + 1) + uint8(stor8[arg1].field_512) + 1)
        mem[480] = ext_call.return_data[0]
        require ext_call.success
        if uint8(u + 1) <= 32:
            require uint8(-u + 31) < 32
            mem[0] = uint8(u + 1)
            mem[32] = 7
            if stor7[u + 1 << 248]:
                require 1 >= stor7[u + 1 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        else:
            require uint8(u + 1) <= 64
            require uint8(-u + 63) < 32
            mem[0] = uint8(u - 31)
            mem[32] = 7
            if stor7[u - 31 << 248]:
                require 1 >= stor7[u - 31 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        require Mask(248, 0, stor2.length.field_8) <= stor2.length
        if ext_call.return_data[0] <= 0:
            if uint8(t) != 1:
                s = ext_call.return_data[0]
                idx = idx + 1
                t = t - 1
                u = u + 1
                v = (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                continue 
            require arg1 < stor8.length
            idx = 0
            s = 0
            t = 0
            u = 0
            while uint8(idx) < 157:
                if not uint256(stor8[arg1].field_768) or not 2^idx:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                if uint8(t + 1) <= 32:
                    require uint8(-t + 31) < 32
                    mem[0] = uint8(t + 1)
                    mem[32] = 7
                    if stor7[t + 1 << 248]:
                        require 1 >= stor7[t + 1 << 248]
                    else:
                        require 1 >= uint8(stor6.field_176)
                else:
                    require uint8(t + 1) <= 64
                    require uint8(-t + 63) < 32
                    mem[0] = uint8(t - 31)
                    mem[32] = 7
                    if stor7[t - 31 << 248]:
                        require 1 >= stor7[t - 31 << 248]
                    else:
                        require 1 >= uint8(stor6.field_176)
                require Mask(248, 0, stor2.length.field_8) <= stor2.length
                if uint8(s) != 1:
                    idx = idx + 1
                    s = s - 1
                    t = t + 1
                    u = u + Mask(248, 0, stor2.length.field_8)
                    continue 
                require arg1 < stor8.length
                idx = 0
                s = 0
                while uint8(idx) < 157:
                    if not uint256(stor8[arg1].field_768) or not 2^idx:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                require arg1 < stor8.length
                return arg1 << 192, 
                       stor8[arg1].field_0,
                       uint256(stor8[arg1].field_256),
                       (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v,
                       uint8(stor8[arg1].field_512),
                       uint256(stor8[arg1].field_768),
                       uint256(stor8[arg1].field_1024),
                       uint256(stor8[arg1].field_1280),
                       u + Mask(248, 0, stor2.length.field_8),
                       s
            require arg1 < stor8.length
            idx = 0
            s = 0
            while uint8(idx) < 157:
                if not uint256(stor8[arg1].field_768) or not 2^idx:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            require arg1 < stor8.length
            return arg1 << 192, 
                   stor8[arg1].field_0,
                   uint256(stor8[arg1].field_256),
                   (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v,
                   uint8(stor8[arg1].field_512),
                   uint256(stor8[arg1].field_768),
                   uint256(stor8[arg1].field_1024),
                   uint256(stor8[arg1].field_1280),
                   u,
                   s
        if uint8(t) != 1:
            s = ext_call.return_data[0] + 1
            idx = idx + 1
            t = t - 1
            u = u + 1
            v = Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
            continue 
        require arg1 < stor8.length
        idx = 0
        s = 0
        t = 0
        u = 0
        while uint8(idx) < 157:
            if not uint256(stor8[arg1].field_768) or not 2^idx:
                idx = idx + 1
                s = s
                t = t
                u = u
                continue 
            if uint8(t + 1) <= 32:
                require uint8(-t + 31) < 32
                mem[0] = uint8(t + 1)
                mem[32] = 7
                if stor7[t + 1 << 248]:
                    require 1 >= stor7[t + 1 << 248]
                else:
                    require 1 >= uint8(stor6.field_176)
            else:
                require uint8(t + 1) <= 64
                require uint8(-t + 63) < 32
                mem[0] = uint8(t - 31)
                mem[32] = 7
                if stor7[t - 31 << 248]:
                    require 1 >= stor7[t - 31 << 248]
                else:
                    require 1 >= uint8(stor6.field_176)
            require Mask(248, 0, stor2.length.field_8) <= stor2.length
            if uint8(s) != 1:
                idx = idx + 1
                s = s - 1
                t = t + 1
                u = u + Mask(248, 0, stor2.length.field_8)
                continue 
            require arg1 < stor8.length
            idx = 0
            s = 0
            while uint8(idx) < 157:
                if not uint256(stor8[arg1].field_768) or not 2^idx:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            require arg1 < stor8.length
            return arg1 << 192, 
                   stor8[arg1].field_0,
                   uint256(stor8[arg1].field_256),
                   Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v,
                   uint8(stor8[arg1].field_512),
                   uint256(stor8[arg1].field_768),
                   uint256(stor8[arg1].field_1024),
                   uint256(stor8[arg1].field_1280),
                   u + Mask(248, 0, stor2.length.field_8),
                   s
        require arg1 < stor8.length
        idx = 0
        s = 0
        while uint8(idx) < 157:
            if not uint256(stor8[arg1].field_768) or not 2^idx:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require arg1 < stor8.length
        return arg1 << 192, 
               stor8[arg1].field_0,
               uint256(stor8[arg1].field_256),
               Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v,
               uint8(stor8[arg1].field_512),
               uint256(stor8[arg1].field_768),
               uint256(stor8[arg1].field_1024),
               uint256(stor8[arg1].field_1280),
               u,
               s
    require arg1 < stor8.length
    t = 0
    u = 0
    w = 0
    x = 0
    while uint8(t) < 157:
        if not uint256(stor8[arg1].field_768) or not 2^t:
            t = t + 1
            u = u
            w = w
            x = x
            continue 
        if uint8(w + 1) <= 32:
            require uint8(-w + 31) < 32
            mem[0] = uint8(w + 1)
            mem[32] = 7
            if stor7[w + 1 << 248]:
                require 1 >= stor7[w + 1 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        else:
            require uint8(w + 1) <= 64
            require uint8(-w + 63) < 32
            mem[0] = uint8(w - 31)
            mem[32] = 7
            if stor7[w - 31 << 248]:
                require 1 >= stor7[w - 31 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        require Mask(248, 0, stor2.length.field_8) <= stor2.length
        if uint8(u) != 1:
            t = t + 1
            u = u - 1
            w = w + 1
            x = x + Mask(248, 0, stor2.length.field_8)
            continue 
        require arg1 < stor8.length
        idx = 0
        s = 0
        while uint8(idx) < 157:
            if not uint256(stor8[arg1].field_768) or not 2^idx:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require arg1 < stor8.length
        return arg1 << 192, 
               stor8[arg1].field_0,
               uint256(stor8[arg1].field_256),
               v,
               uint8(stor8[arg1].field_512),
               uint256(stor8[arg1].field_768),
               uint256(stor8[arg1].field_1024),
               uint256(stor8[arg1].field_1280),
               x + Mask(248, 0, stor2.length.field_8),
               s
    require arg1 < stor8.length
    t = 0
    s = 0
    while uint8(t) < 157:
        if not uint256(stor8[arg1].field_768) or not 2^t:
            t = t + 1
            s = s
            continue 
        t = t + 1
        s = s + 1
        continue 
    require arg1 < stor8.length
    return arg1 << 192, 
           stor8[arg1].field_0,
           uint256(stor8[arg1].field_256),
           v,
           uint8(stor8[arg1].field_512),
           uint256(stor8[arg1].field_768),
           uint256(stor8[arg1].field_1024),
           uint256(stor8[arg1].field_1280),
           x,
           s
}

function placeBet(uint256 arg1, bytes32 arg2, bytes32 arg3) payable {
    if not uint8(stor3.length.field_64):
        emit ErrorLog(msg.sender, Array(len=16, data='ContractDisabled'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if stor8.length > 0:
        idx = stor8.length - 1
        s = 0
        while idx > 0:
            require idx < stor8.length
            if uint256(stor8[idx].field_256) == block.number:
                require idx < stor8.length
                mem[0] = 8
                if stor8[idx].field_0 == msg.sender:
                    emit ErrorLog(msg.sender, Array(len=25, data='Play twice the same block'));
                else:
                    if uint8(s + 1) < uint64(stor3.length):
                        idx = idx - 1
                        s = s + 1
                        continue 
                    emit ErrorLog(msg.sender, Array(len=18, data='maxGamblesPerBlock'));
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            if msg.value < Mask(248, 0, stor2.length.field_8):
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
            if msg.value > stor2.length:
                emit ErrorLog(msg.sender, Array(len=15, data='Limit for table'));
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            idx = 0
            s = 0
            t = 0
            u = 0
            while uint8(idx) < 157:
                if not arg1 or not 2^idx:
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                if uint8(t + 1) <= 32:
                    require uint8(-t + 31) < 32
                    mem[0] = uint8(t + 1)
                    mem[32] = 7
                    if stor7[t + 1 << 248]:
                        require 1 >= stor7[t + 1 << 248]
                    else:
                        require 1 >= uint8(stor6.field_176)
                else:
                    require uint8(t + 1) <= 64
                    require uint8(-t + 63) < 32
                    mem[0] = uint8(t - 31)
                    mem[32] = 7
                    if stor7[t - 31 << 248]:
                        require 1 >= stor7[t - 31 << 248]
                    else:
                        require 1 >= uint8(stor6.field_176)
                require Mask(248, 0, stor2.length.field_8) <= stor2.length
                if uint8(s) != 1:
                    idx = idx + 1
                    s = s - 1
                    t = t + 1
                    u = u + Mask(248, 0, stor2.length.field_8)
                    continue 
                if u + Mask(248, 0, stor2.length.field_8) != msg.value:
                    emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    idx = sha3(8) + (6 * stor8.length) + 6
                    while sha3(8) + (6 * stor8.length) > idx:
                        stor[idx] = 0
                        uint256(stor1[idx].field_0) = 0
                        uint8(stor2[idx].field_0) = 0
                        uint256(stor3[idx].field_0) = 0
                        uint256(stor4[idx]) = 0
                        uint256(stor5[idx]) = 0
                        idx = idx + 6
                        continue 
                stor8[stor8.length].field_0 = msg.sender
                uint256(stor8[stor8.length].field_256) = block.number
                uint8(stor8[stor8.length].field_512) = 37
                uint256(stor8[stor8.length].field_768) = arg1
                uint256(stor8[stor8.length].field_1024) = arg2
                uint256(stor8[stor8.length].field_1280) = arg3
                if address(stor6.field_0) <= 0:
                    require ext_code.size(address(stor4.length))
                    call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 0, msg.value, uint16(stor6.field_0), 0
                else:
                    require ext_code.size(address(stor6.field_0))
                    call address(stor6.field_0).getAffiliateInfo(address rg1) with:
                         gas gas_remaining - 50 wei
                        args msg.sender
                    require ext_call.success
                    require ext_code.size(address(stor4.length))
                    call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(ext_call.return_data[0]), msg.value, uint16(stor6.field_0), uint16(ext_call.return_data[32])
                require ext_call.success
                emit PlayerBet(stor8.length, ext_call.return_data[0]);
            if u != msg.value:
                emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = sha3(8) + (6 * stor8.length) + 6
                while sha3(8) + (6 * stor8.length) > idx:
                    stor[idx] = 0
                    uint256(stor1[idx].field_0) = 0
                    uint8(stor2[idx].field_0) = 0
                    uint256(stor3[idx].field_0) = 0
                    uint256(stor4[idx]) = 0
                    uint256(stor5[idx]) = 0
                    idx = idx + 6
                    continue 
            stor8[stor8.length].field_0 = msg.sender
            uint256(stor8[stor8.length].field_256) = block.number
            uint8(stor8[stor8.length].field_512) = 37
            uint256(stor8[stor8.length].field_768) = arg1
            uint256(stor8[stor8.length].field_1024) = arg2
            uint256(stor8[stor8.length].field_1280) = arg3
            if address(stor6.field_0) <= 0:
                require ext_code.size(address(stor4.length))
                call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, 0, msg.value, uint16(stor6.field_0), 0
            else:
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).getAffiliateInfo(address rg1) with:
                     gas gas_remaining - 50 wei
                    args msg.sender
                require ext_call.success
                require ext_code.size(address(stor4.length))
                call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(ext_call.return_data[0]), msg.value, uint16(stor6.field_0), uint16(ext_call.return_data[32])
            require ext_call.success
            emit PlayerBet(stor8.length, ext_call.return_data[0]);
    if msg.value < Mask(248, 0, stor2.length.field_8):
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
    if msg.value > stor2.length:
        emit ErrorLog(msg.sender, Array(len=15, data='Limit for table'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    idx = 0
    s = 0
    t = 0
    u = 0
    while uint8(idx) < 157:
        if not arg1 or not 2^idx:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if uint8(t + 1) <= 32:
            require uint8(-t + 31) < 32
            mem[0] = uint8(t + 1)
            mem[32] = 7
            if stor7[t + 1 << 248]:
                require 1 >= stor7[t + 1 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        else:
            require uint8(t + 1) <= 64
            require uint8(-t + 63) < 32
            mem[0] = uint8(t - 31)
            mem[32] = 7
            if stor7[t - 31 << 248]:
                require 1 >= stor7[t - 31 << 248]
            else:
                require 1 >= uint8(stor6.field_176)
        require Mask(248, 0, stor2.length.field_8) <= stor2.length
        if uint8(s) != 1:
            idx = idx + 1
            s = s - 1
            t = t + 1
            u = u + Mask(248, 0, stor2.length.field_8)
            continue 
        if u + Mask(248, 0, stor2.length.field_8) != msg.value:
            emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = sha3(8) + (6 * stor8.length) + 6
            while sha3(8) + (6 * stor8.length) > idx:
                stor[idx] = 0
                uint256(stor1[idx].field_0) = 0
                uint8(stor2[idx].field_0) = 0
                uint256(stor3[idx].field_0) = 0
                uint256(stor4[idx]) = 0
                uint256(stor5[idx]) = 0
                idx = idx + 6
                continue 
        stor8[stor8.length].field_0 = msg.sender
        uint256(stor8[stor8.length].field_256) = block.number
        uint8(stor8[stor8.length].field_512) = 37
        uint256(stor8[stor8.length].field_768) = arg1
        uint256(stor8[stor8.length].field_1024) = arg2
        uint256(stor8[stor8.length].field_1280) = arg3
        if address(stor6.field_0) <= 0:
            require ext_code.size(address(stor4.length))
            call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
                 gas gas_remaining - 50 wei
                args msg.sender, 0, msg.value, uint16(stor6.field_0), 0
        else:
            require ext_code.size(address(stor6.field_0))
            call address(stor6.field_0).getAffiliateInfo(address rg1) with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            require ext_code.size(address(stor4.length))
            call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(ext_call.return_data[0]), msg.value, uint16(stor6.field_0), uint16(ext_call.return_data[32])
        require ext_call.success
        emit PlayerBet(stor8.length, ext_call.return_data[0]);
    if u != msg.value:
        emit ErrorLog(msg.sender, Array(len=15, data='Wrong bet value'));
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = (6 * stor8.length) + 6
        while 6 * stor8.length > idx:
            stor8[idx].field_0 = 0
            uint256(stor8[idx].field_256) = 0
            uint8(stor8[idx].field_512) = 0
            uint256(stor8[idx].field_768) = 0
            uint256(stor8[idx].field_1024) = 0
            uint256(stor8[idx].field_1280) = 0
            idx = idx + 6
            continue 
    stor8[stor8.length].field_0 = msg.sender
    uint256(stor8[stor8.length].field_256) = block.number
    uint8(stor8[stor8.length].field_512) = 37
    uint256(stor8[stor8.length].field_768) = arg1
    uint256(stor8[stor8.length].field_1024) = arg2
    uint256(stor8[stor8.length].field_1280) = arg3
    if address(stor6.field_0) <= 0:
        require ext_code.size(address(stor4.length))
        call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
             gas gas_remaining - 50 wei
            args msg.sender, 0, msg.value, uint16(stor6.field_0), 0
    else:
        require ext_code.size(address(stor6.field_0))
        call address(stor6.field_0).getAffiliateInfo(address rg1) with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        require ext_code.size(address(stor4.length))
        call address(stor4.length).emission(address rg1, address rg2, uint256 rg3, uint16 rg4, uint16 rg5) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(ext_call.return_data[0]), msg.value, uint16(stor6.field_0), uint16(ext_call.return_data[32])
    require ext_call.success
    emit PlayerBet(stor8.length, ext_call.return_data[0]);
}

function ProcessGames(uint256[] arg1, bool arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg2:
        require var17001 < arg1.length
        require var17001 < arg1.length
        _98 = mem[(32 * var17001) + 128]
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[(32 * arg1.length) + 256] = 0
        mem[(32 * arg1.length) + 288] = 0
        require _98 < stor8.length
        mem[0] = 8
        mem[64] = (32 * arg1.length) + 512
        mem[(32 * arg1.length) + 320] = stor8[_98].field_0
        mem[(32 * arg1.length) + 352] = uint256(stor8[_98].field_256)
        mem[(32 * arg1.length) + 384] = uint8(stor8[_98].field_512)
        mem[(32 * arg1.length) + 416] = uint256(stor8[_98].field_768)
        mem[(32 * arg1.length) + 448] = uint256(stor8[_98].field_1024)
        mem[(32 * arg1.length) + 480] = uint256(stor8[_98].field_1280)
        if block.number - uint256(stor8[_98].field_256) < 256:
            if 37 == uint8(stor8[_98].field_512):
                if block.number > uint256(stor8[_98].field_256) + uint8(stor1.length.field_160):
                    if block.hash(uint256(stor8[_98].field_256) + uint8(stor1.length.field_160)):
                        require _98 < stor8.length
                        uint8(stor8[_98].field_512) = uint8(sha3(stor8[_98].field_0, block.hash(uint256(stor8[_98].field_256) + uint8(stor1.length.field_160))) % 37)
                        mem[(32 * arg1.length) + 512] = 0
                        mem[(32 * arg1.length) + 544] = 0
                        mem[(32 * arg1.length) + 576] = 0
                        mem[(32 * arg1.length) + 608] = 0
                        mem[(32 * arg1.length) + 640] = 0
                        mem[(32 * arg1.length) + 672] = 0
                        require uint64(_98) < stor8.length
                        mem[0] = 8
                        mem[64] = (32 * arg1.length) + 896
                        mem[(32 * arg1.length) + 704] = stor8[uint64(_98)].field_0
                        mem[(32 * arg1.length) + 736] = uint256(stor8[uint64(_98)].field_256)
                        mem[(32 * arg1.length) + 768] = uint8(stor8[uint64(_98)].field_512)
                        mem[(32 * arg1.length) + 800] = uint256(stor8[uint64(_98)].field_768)
                        mem[(32 * arg1.length) + 832] = uint256(stor8[uint64(_98)].field_1024)
                        mem[(32 * arg1.length) + 864] = uint256(stor8[uint64(_98)].field_1280)
                        s = 0
                        idx = 0
                        t = 0
                        u = 0
                        v = 0
                        while uint8(idx) < 157:
                            if not mem[(32 * arg1.length) + 800] or not 2^idx:
                                s = s
                                idx = idx + 1
                                t = t
                                u = u
                                v = v
                                continue 
                            _201 = mem[(32 * arg1.length) + 768]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = uint16((256 * uint8(idx) + 1) + uint8(_201) + 1)
                            require ext_code.size(stor3.length.field_72)
                            call stor3.length.field_72.getCoeff(uint16 rg1) with:
                                 gas gas_remaining - 50 wei
                                args ((256 * uint8(idx) + 1) + uint8(_201) + 1 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            if uint8(u + 1) <= 32:
                                require uint8(-u + 31) < 32
                                mem[0] = uint8(u + 1)
                                mem[32] = 7
                                if stor7[u + 1 << 248]:
                                    require 1 >= stor7[u + 1 << 248]
                                else:
                                    require 1 >= uint8(stor6.field_176)
                            else:
                                require uint8(u + 1) <= 64
                                require uint8(-u + 63) < 32
                                mem[0] = uint8(u - 31)
                                mem[32] = 7
                                if stor7[u - 31 << 248]:
                                    require 1 >= stor7[u - 31 << 248]
                                else:
                                    require 1 >= uint8(stor6.field_176)
                            require Mask(248, 0, stor2.length.field_8) <= stor2.length
                            if ext_call.return_data[0] <= 0:
                                if uint8(t) != 1:
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t - 1
                                    u = u + 1
                                    v = (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                    continue 
                                if (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                    call mem[(32 * arg1.length) + 332 len 20] with:
                                       value (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if uint8(t) != 1:
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t - 1
                                    u = u + 1
                                    v = Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                    continue 
                                if Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                    call mem[(32 * arg1.length) + 332 len 20] with:
                                       value Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            require _98 < stor8.length
                            mem[0] = 8
                            mem[mem[64]] = mem[(32 * arg1.length) + 332 len 20]
                            mem[mem[64] + 32] = uint8(stor8[_98].field_512)
                            mem[mem[64] + 64] = _98
                            emit EndGame(mem[mem[64]], uint8(stor8[_98].field_512), _98);
                            var17001 = var17001 + 1
                            continue 
                    else:
                        emit ErrorLog(msg.sender, Array(len=29, data='Cannot generate random number'));
                        require _98 < stor8.length
                        uint8(stor8[_98].field_512) = 200
                        mem[(32 * arg1.length) + 512] = 0
                        mem[(32 * arg1.length) + 544] = 0
                        mem[(32 * arg1.length) + 576] = 0
                        mem[(32 * arg1.length) + 608] = 0
                        mem[(32 * arg1.length) + 640] = 0
                        mem[(32 * arg1.length) + 672] = 0
                        require uint64(_98) < stor8.length
                        mem[0] = 8
                        mem[64] = (32 * arg1.length) + 896
                        mem[(32 * arg1.length) + 704] = stor8[uint64(_98)].field_0
                        mem[(32 * arg1.length) + 736] = uint256(stor8[uint64(_98)].field_256)
                        mem[(32 * arg1.length) + 768] = uint8(stor8[uint64(_98)].field_512)
                        mem[(32 * arg1.length) + 800] = uint256(stor8[uint64(_98)].field_768)
                        mem[(32 * arg1.length) + 832] = uint256(stor8[uint64(_98)].field_1024)
                        mem[(32 * arg1.length) + 864] = uint256(stor8[uint64(_98)].field_1280)
                        s = 0
                        idx = 0
                        t = 0
                        u = 0
                        v = 0
                        while uint8(idx) < 157:
                            if not mem[(32 * arg1.length) + 800] or not 2^idx:
                                s = s
                                idx = idx + 1
                                t = t
                                u = u
                                v = v
                                continue 
                            _203 = mem[(32 * arg1.length) + 768]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 4] = uint16((256 * uint8(idx) + 1) + uint8(_203) + 1)
                            require ext_code.size(stor3.length.field_72)
                            call stor3.length.field_72.getCoeff(uint16 rg1) with:
                                 gas gas_remaining - 50 wei
                                args ((256 * uint8(idx) + 1) + uint8(_203) + 1 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            if uint8(u + 1) <= 32:
                                require uint8(-u + 31) < 32
                                mem[0] = uint8(u + 1)
                                mem[32] = 7
                                if stor7[u + 1 << 248]:
                                    require 1 >= stor7[u + 1 << 248]
                                else:
                                    require 1 >= uint8(stor6.field_176)
                            else:
                                require uint8(u + 1) <= 64
                                require uint8(-u + 63) < 32
                                mem[0] = uint8(u - 31)
                                mem[32] = 7
                                if stor7[u - 31 << 248]:
                                    require 1 >= stor7[u - 31 << 248]
                                else:
                                    require 1 >= uint8(stor6.field_176)
                            require Mask(248, 0, stor2.length.field_8) <= stor2.length
                            if ext_call.return_data[0] <= 0:
                                if uint8(t) != 1:
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    t = t - 1
                                    u = u + 1
                                    v = (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                    continue 
                                if (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                    call mem[(32 * arg1.length) + 332 len 20] with:
                                       value (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if uint8(t) != 1:
                                    s = ext_call.return_data[0] + 1
                                    idx = idx + 1
                                    t = t - 1
                                    u = u + 1
                                    v = Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                    continue 
                                if Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                    call mem[(32 * arg1.length) + 332 len 20] with:
                                       value Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            require _98 < stor8.length
                            mem[0] = 8
                            mem[mem[64]] = mem[(32 * arg1.length) + 332 len 20]
                            mem[mem[64] + 32] = uint8(stor8[_98].field_512)
                            mem[mem[64] + 64] = _98
                            emit EndGame(mem[mem[64]], uint8(stor8[_98].field_512), _98);
                            var17001 = var17001 + 1
                            continue 
                    if v > 0:
                        call mem[(32 * arg1.length) + 332 len 20] with:
                           value v wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    require _98 < stor8.length
                    mem[0] = 8
                    mem[mem[64]] = mem[(32 * arg1.length) + 332 len 20]
                    mem[mem[64] + 32] = uint8(stor8[_98].field_512)
                    mem[mem[64] + 64] = _98
                    emit EndGame(mem[mem[64]], uint8(stor8[_98].field_512), _98);
        var17001 = var17001 + 1
        continue 
    if stor13 == block.number:
    stor13 = block.number
    require var19001 < arg1.length
    require var19001 < arg1.length
    _99 = mem[(32 * var19001) + 128]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 288] = 0
    require _99 < stor8.length
    mem[0] = 8
    mem[64] = (32 * arg1.length) + 512
    mem[(32 * arg1.length) + 320] = stor8[_99].field_0
    mem[(32 * arg1.length) + 352] = uint256(stor8[_99].field_256)
    mem[(32 * arg1.length) + 384] = uint8(stor8[_99].field_512)
    mem[(32 * arg1.length) + 416] = uint256(stor8[_99].field_768)
    mem[(32 * arg1.length) + 448] = uint256(stor8[_99].field_1024)
    mem[(32 * arg1.length) + 480] = uint256(stor8[_99].field_1280)
    if block.number - uint256(stor8[_99].field_256) < 256:
        if 37 == uint8(stor8[_99].field_512):
            if block.number > uint256(stor8[_99].field_256) + uint8(stor1.length.field_160):
                if block.hash(uint256(stor8[_99].field_256) + uint8(stor1.length.field_160)):
                    require _99 < stor8.length
                    uint8(stor8[_99].field_512) = uint8(sha3(stor8[_99].field_0, block.hash(uint256(stor8[_99].field_256) + uint8(stor1.length.field_160))) % 37)
                    mem[(32 * arg1.length) + 512] = 0
                    mem[(32 * arg1.length) + 544] = 0
                    mem[(32 * arg1.length) + 576] = 0
                    mem[(32 * arg1.length) + 608] = 0
                    mem[(32 * arg1.length) + 640] = 0
                    mem[(32 * arg1.length) + 672] = 0
                    require uint64(_99) < stor8.length
                    mem[0] = 8
                    mem[64] = (32 * arg1.length) + 896
                    mem[(32 * arg1.length) + 704] = stor8[uint64(_99)].field_0
                    mem[(32 * arg1.length) + 736] = uint256(stor8[uint64(_99)].field_256)
                    mem[(32 * arg1.length) + 768] = uint8(stor8[uint64(_99)].field_512)
                    mem[(32 * arg1.length) + 800] = uint256(stor8[uint64(_99)].field_768)
                    mem[(32 * arg1.length) + 832] = uint256(stor8[uint64(_99)].field_1024)
                    mem[(32 * arg1.length) + 864] = uint256(stor8[uint64(_99)].field_1280)
                    s = 0
                    idx = 0
                    t = 0
                    u = 0
                    v = 0
                    while uint8(idx) < 157:
                        if not mem[(32 * arg1.length) + 800] or not 2^idx:
                            s = s
                            idx = idx + 1
                            t = t
                            u = u
                            v = v
                            continue 
                        _205 = mem[(32 * arg1.length) + 768]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 4] = uint16((256 * uint8(idx) + 1) + uint8(_205) + 1)
                        require ext_code.size(stor3.length.field_72)
                        call stor3.length.field_72.getCoeff(uint16 rg1) with:
                             gas gas_remaining - 50 wei
                            args ((256 * uint8(idx) + 1) + uint8(_205) + 1 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        if uint8(u + 1) <= 32:
                            require uint8(-u + 31) < 32
                            mem[0] = uint8(u + 1)
                            mem[32] = 7
                            if stor7[u + 1 << 248]:
                                require 1 >= stor7[u + 1 << 248]
                            else:
                                require 1 >= uint8(stor6.field_176)
                        else:
                            require uint8(u + 1) <= 64
                            require uint8(-u + 63) < 32
                            mem[0] = uint8(u - 31)
                            mem[32] = 7
                            if stor7[u - 31 << 248]:
                                require 1 >= stor7[u - 31 << 248]
                            else:
                                require 1 >= uint8(stor6.field_176)
                        require Mask(248, 0, stor2.length.field_8) <= stor2.length
                        if ext_call.return_data[0] <= 0:
                            if uint8(t) != 1:
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t - 1
                                u = u + 1
                                v = (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                continue 
                            if (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                call mem[(32 * arg1.length) + 332 len 20] with:
                                   value (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if uint8(t) != 1:
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t - 1
                                u = u + 1
                                v = Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                continue 
                            if Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                call mem[(32 * arg1.length) + 332 len 20] with:
                                   value Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        require _99 < stor8.length
                        mem[0] = 8
                        mem[mem[64]] = mem[(32 * arg1.length) + 332 len 20]
                        mem[mem[64] + 32] = uint8(stor8[_99].field_512)
                        mem[mem[64] + 64] = _99
                        emit EndGame(mem[mem[64]], uint8(stor8[_99].field_512), _99);
                        var19001 = var19001 + 1
                        continue 
                else:
                    emit ErrorLog(msg.sender, Array(len=29, data='Cannot generate random number'));
                    require _99 < stor8.length
                    uint8(stor8[_99].field_512) = 200
                    mem[(32 * arg1.length) + 512] = 0
                    mem[(32 * arg1.length) + 544] = 0
                    mem[(32 * arg1.length) + 576] = 0
                    mem[(32 * arg1.length) + 608] = 0
                    mem[(32 * arg1.length) + 640] = 0
                    mem[(32 * arg1.length) + 672] = 0
                    require uint64(_99) < stor8.length
                    mem[0] = 8
                    mem[64] = (32 * arg1.length) + 896
                    mem[(32 * arg1.length) + 704] = stor8[uint64(_99)].field_0
                    mem[(32 * arg1.length) + 736] = uint256(stor8[uint64(_99)].field_256)
                    mem[(32 * arg1.length) + 768] = uint8(stor8[uint64(_99)].field_512)
                    mem[(32 * arg1.length) + 800] = uint256(stor8[uint64(_99)].field_768)
                    mem[(32 * arg1.length) + 832] = uint256(stor8[uint64(_99)].field_1024)
                    mem[(32 * arg1.length) + 864] = uint256(stor8[uint64(_99)].field_1280)
                    s = 0
                    idx = 0
                    t = 0
                    u = 0
                    v = 0
                    while uint8(idx) < 157:
                        if not mem[(32 * arg1.length) + 800] or not 2^idx:
                            s = s
                            idx = idx + 1
                            t = t
                            u = u
                            v = v
                            continue 
                        _207 = mem[(32 * arg1.length) + 768]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 4] = uint16((256 * uint8(idx) + 1) + uint8(_207) + 1)
                        require ext_code.size(stor3.length.field_72)
                        call stor3.length.field_72.getCoeff(uint16 rg1) with:
                             gas gas_remaining - 50 wei
                            args ((256 * uint8(idx) + 1) + uint8(_207) + 1 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        require ext_call.success
                        if uint8(u + 1) <= 32:
                            require uint8(-u + 31) < 32
                            mem[0] = uint8(u + 1)
                            mem[32] = 7
                            if stor7[u + 1 << 248]:
                                require 1 >= stor7[u + 1 << 248]
                            else:
                                require 1 >= uint8(stor6.field_176)
                        else:
                            require uint8(u + 1) <= 64
                            require uint8(-u + 63) < 32
                            mem[0] = uint8(u - 31)
                            mem[32] = 7
                            if stor7[u - 31 << 248]:
                                require 1 >= stor7[u - 31 << 248]
                            else:
                                require 1 >= uint8(stor6.field_176)
                        require Mask(248, 0, stor2.length.field_8) <= stor2.length
                        if ext_call.return_data[0] <= 0:
                            if uint8(t) != 1:
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                t = t - 1
                                u = u + 1
                                v = (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                continue 
                            if (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                call mem[(32 * arg1.length) + 332 len 20] with:
                                   value (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if uint8(t) != 1:
                                s = ext_call.return_data[0] + 1
                                idx = idx + 1
                                t = t - 1
                                u = u + 1
                                v = Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v
                                continue 
                            if Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v > 0:
                                call mem[(32 * arg1.length) + 332 len 20] with:
                                   value Mask(248, 0, stor2.length.field_8) + (ext_call.return_data[0] * Mask(248, 0, stor2.length.field_8)) + v wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        require _99 < stor8.length
                        mem[0] = 8
                        mem[mem[64]] = mem[(32 * arg1.length) + 332 len 20]
                        mem[mem[64] + 32] = uint8(stor8[_99].field_512)
                        mem[mem[64] + 64] = _99
                        emit EndGame(mem[mem[64]], uint8(stor8[_99].field_512), _99);
                        var19001 = var19001 + 1
                        continue 
                if v > 0:
                    call mem[(32 * arg1.length) + 332 len 20] with:
                       value v wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require _99 < stor8.length
                mem[0] = 8
                mem[mem[64]] = mem[(32 * arg1.length) + 332 len 20]
                mem[mem[64] + 32] = uint8(stor8[_99].field_512)
                mem[mem[64] + 64] = _99
                emit EndGame(mem[mem[64]], uint8(stor8[_99].field_512), _99);
    var19001 = var19001 + 1
    continue 
}



}
