contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
array of address stor3;
mapping of uint256 stor257;
address stor261;
address stor262;
address stor263;
address stor264;
array of address stor265;
uint256 stor266;
array of uint256 stor268;

function _fallback() payable {
    stor266 = 10^17
    require not msg.value
    mem[96 len -8553] = code.data[9502 len -8553]
    mem[64] = -8457
    stor2 = msg.sender
    stor257[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor3[idx] = mem[mem[96] + (32 * idx) + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
        mem[32] = 257
        stor257[mem[mem[96] + (32 * idx) + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    require mem[128] <= 256
    stor261 = mem[172 len 20]
    stor262 = mem[204 len 20]
    stor263 = mem[236 len 20]
    stor264 = mem[268 len 20]
    stor265.length = mem[mem[288] + 96]
    if not mem[mem[288] + 96]:
        idx = 0
        while stor265.length > idx:
            stor265[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[288] + 128
        while mem[288] + (32 * mem[mem[288] + 96]) + 128 > idx:
            stor265[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[288] + 96]) + 31) >> 5
        while stor265.length > idx:
            stor265[idx] = 0
            idx = idx + 1
            continue 
    stor268.length = 3
    s = 0
    idx = 128
    while 224 > idx:
        stor268[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor268.length > idx:
        stor268[idx].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < stor268.length
    uint256(stor268.field_0) = 55000000 * 10^18
    require 1 < stor268.length
    uint256(stor268.field_256) = 65000000 * 10^18
    require 2 < stor268.length
    uint256(stor268.field_512) = 75000000 * 10^18
    return code.data[949 len 8553]
}



// =====================  Runtime code  =====================


#
#  - sub_7792cdef(?)
#
const sub_28fb889d(?) = 3

const sub_37994925(?) = 5000000 * 10^18

const VESTING_PERIOD = (12096 * 24 * 3600)

const ADVISER_STAKE = 1250000 * 10^18

const VESTING_CLIFF = (4032 * 24 * 3600)

const FOUNDER2_STAKE = 10000000 * 10^18

const CONTRIB_PERIOD2_STAKE = 65000000 * 10^18

const CONTRIB_PERIOD3_STAKE = 75000000 * 10^18

const CONTRIB_PERIOD1_STAKE = 55000000 * 10^18

const FOUNDER1_STAKE = 35000000 * 10^18


uint256 required;
array of address owner;
mapping of uint256 stor257;
mapping of struct stor258;
array of uint256 stor259;
uint8 stopped;
address sub_69a3a0d0Address; offset 8
address walletAddress;
address founder1Address;
address founder2Address;
address earlySponsorAddress;
array of address advisers;
uint256 minContribAmount;
array of uint256 sub_a61c666b;

function advisers(uint256 arg1) {
    require arg1 < advisers.length
    return address(advisers[arg1])
}

function founder1() {
    return founder1Address
}

function wallet() {
    return walletAddress
}

function minContribAmount() {
    return minContribAmount
}

function sub_69a3a0d0(?) {
    return sub_69a3a0d0Address
}

function stopped() {
    return bool(stopped)
}

function founder2() {
    return founder2Address
}

function earlySponsor() {
    return earlySponsorAddress
}

function sub_a61c666b(?) {
    require arg1 < sub_a61c666b.length
    return sub_a61c666b[arg1]
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function sub_d25abd36(?) {
    require arg1 < sub_f8ad5e69.length
    return stor[(9 * arg1) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg2)].field_0, 
           bool(uint8(stor[(9 * arg1) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg2)].field_256)),
           stor[(9 * arg1) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg2)].field_512
}

function required() {
    return required
}

function sub_f8ad5e69(?) {
    require arg1 < sub_f8ad5e69.length
    return sub_f8ad5e69[arg1].field_0, 
           sub_f8ad5e69[arg1].field_256,
           sub_f8ad5e69[arg1].field_512,
           sub_f8ad5e69[arg1].field_768,
           sub_f8ad5e69[arg1].field_1024,
           bool(uint8(sub_f8ad5e69[arg1].field_1280)),
           bool(uint8(sub_f8ad5e69[arg1].field_1288)),
           bool(uint8(sub_f8ad5e69[arg1].field_1296)),
           sub_f8ad5e69[arg1].field_1536
}

function kill(address arg1) {
    require stor257[address(msg.sender)]
    if not stor258[call.data[0 len calldata.size]].field_0:
        stor258[call.data[0 len calldata.size]].field_0 = required
        stor258[call.data[0 len calldata.size]].field_256 = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        stor258[call.data[0 len calldata.size]].field_512 = stor259.length
        require stor259.length < stor259.length
        stor259[stor259.length] = sha3(call.data[0 len calldata.size])
    if stor258[call.data[0 len calldata.size]].field_256 and 2^stor257[address(msg.sender)] != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor258[call.data[0 len calldata.size]].field_0 > 1:
        stor258[call.data[0 len calldata.size]].field_0--
        stor258[call.data[0 len calldata.size]].field_256 = 2^stor257[address(msg.sender)] or stor258[call.data[0 len calldata.size]].field_256
    require stor258[call.data[0 len calldata.size]].field_512 < stor259.length
    stor259[stor258[call.data[0 len calldata.size]].field_512] = 0
    stor258[call.data[0 len calldata.size]].field_0 = 0
    stor258[call.data[0 len calldata.size]].field_256 = 0
    stor258[call.data[0 len calldata.size]].field_512 = 0
    selfdestruct(arg1)
}

function isOwner(address arg1) {
    return (stor257[address(arg1)] > 0)
}

function emergencyStop() {
    require stor257[address(msg.sender)] > 0
    stopped = 1
    emit onEmergencyChanged(1);
}

function release() {
    require stor257[address(msg.sender)] > 0
    require stopped
    stopped = 0
    emit onEmergencyChanged(0);
}

function setMinContribAmount(uint256 arg1) {
    require stor257[address(msg.sender)] > 0
    require arg1 > 0
    minContribAmount = arg1
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor257[address(arg2)]:
        return stor258[arg1].field_256 and 2^stor257[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor257[address(msg.sender)]:
        if 2^stor257[address(msg.sender)] and stor258[arg1].field_256 > 0:
            stor258[arg1].field_0++
            stor258[arg1].field_256 -= 2^stor257[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function sub_f2f78e6d(?) {
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 267
        if uint8(sub_f8ad5e69[idx].field_1296):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_768 > block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_1024 < block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        return idx
    return 3
}

function sub_520b38f3(?) {
    require stor257[address(msg.sender)] > 0
    require arg1
    sub_69a3a0d0Address = arg1
    require ext_code.size(sub_69a3a0d0Address)
    call sub_69a3a0d0Address.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
    require 1250000 * 10^18 * advisers.length / 1250000 * 10^18 == advisers.length
    require (1250000 * 10^18 * advisers.length) + 50000000 * 10^18 >= 50000000 * 10^18
    require ext_code.size(sub_69a3a0d0Address)
    call sub_69a3a0d0Address.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), (1250000 * 10^18 * advisers.length) + 245000000 * 10^18
    require ext_call.success
}

function sub_5a501815(?) {
    require stor257[address(msg.sender)] > 0
    require sub_f8ad5e69.length > 0
    require ext_code.size(sub_69a3a0d0Address)
    call sub_69a3a0d0Address.transfersEnabled() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require 0 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_1792):
        idx = 800
        s = 0
        while (32 * uint256(sub_f8ad5e69.field_1792)) + 768 > idx:
            mem[idx + 32] = address(sub_f8ad5e69[s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    require uint256(sub_f8ad5e69.field_1024) < block.timestamp
    require ext_code.size(sub_69a3a0d0Address)
    call sub_69a3a0d0Address.enableTransfers(bool rg1) with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
}

function sub_1b356291(?) {
    if arg1 >= sub_f8ad5e69.length:
        return 0
    if sub_f8ad5e69[arg1].field_1792:
        idx = 1152
        s = 0
        while (32 * sub_f8ad5e69[arg1].field_1792) + 1120 > idx:
            mem[idx + 32] = address(stor[s + sha3((9 * arg1) + ('name', 'sub_f8ad5e69', 267) + 7)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    require arg1 < sub_a61c666b.length
    return bool(uint8(sub_f8ad5e69[arg1].field_1280)), 
           bool(uint8(sub_f8ad5e69[arg1].field_1288)), bool(uint8(sub_f8ad5e69[arg1].field_1296)) >> 256,
           sub_f8ad5e69[arg1].field_0,
           sub_f8ad5e69[arg1].field_256,
           sub_f8ad5e69[arg1].field_512,
           sub_f8ad5e69[arg1].field_768,
           sub_f8ad5e69[arg1].field_1024,
           sub_f8ad5e69[arg1].field_1536,
           sub_f8ad5e69[arg1].field_1792,
           sub_a61c666b[arg1]
}

function getConfiguration() {
    idx = 0
    while idx < advisers.length:
        mem[0] = 265
        require idx < advisers.length
        mem[(32 * idx) + 192] = address(advisers[idx])
        idx = idx + 1
        continue 
    require ext_code.size(sub_69a3a0d0Address)
    call sub_69a3a0d0Address.transfersEnabled() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[(32 * advisers.length) + 192] = bool(stopped)
    mem[(32 * advisers.length) + 224] = required
    if Mask(251, 0, advisers.length):
        mem[(32 * advisers.length) + 480] = mem[192]
        mem[(32 * advisers.length) + 512 len floor32((32 * advisers.length) - 1)] = mem[224 len (32 * advisers.length) + 32], walletAddress, founder1Address, founder2Address, earlySponsorAddress, Array(len=mem[192], data=mem[(32 * advisers.length) + 512 len floor32((32 * advisers.length) - 1) + -(32 * advisers.length) - 288]), bool(ext_call.return_data[0]), advisers.length
    return bool(stopped), 
           required,
           walletAddress,
           founder1Address,
           founder2Address,
           earlySponsorAddress,
           Array(len=advisers.length, data=mem[(32 * advisers.length) + 480 len 32 * advisers.length]),
           bool(ext_call.return_data[0])
}

function sub_ee409f54(?) {
    require stor257[address(msg.sender)]
    if not stor258[call.data[0 len calldata.size]].field_0:
        stor258[call.data[0 len calldata.size]].field_0 = required
        stor258[call.data[0 len calldata.size]].field_256 = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        stor258[call.data[0 len calldata.size]].field_512 = stor259.length
        require stor259.length < stor259.length
        stor259[stor259.length] = sha3(call.data[0 len calldata.size])
    if 0 == stor258[call.data[0 len calldata.size]].field_256 and 2^stor257[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor258[call.data[0 len calldata.size]].field_0 > 1:
            stor258[call.data[0 len calldata.size]].field_0--
            stor258[call.data[0 len calldata.size]].field_256 = 2^stor257[address(msg.sender)] or stor258[call.data[0 len calldata.size]].field_256
        else:
            require stor258[call.data[0 len calldata.size]].field_512 < stor259.length
            stor259[stor258[call.data[0 len calldata.size]].field_512] = 0
            stor258[call.data[0 len calldata.size]].field_0 = 0
            stor258[call.data[0 len calldata.size]].field_256 = 0
            stor258[call.data[0 len calldata.size]].field_512 = 0
            require arg1 < sub_f8ad5e69.length
            require sub_f8ad5e69[arg1].field_768 > block.timestamp
            require arg1 < sub_f8ad5e69.length
            uint8(sub_f8ad5e69[arg1].field_1280) = 1
}

function contributeWithAddress(address arg1) payable {
    require not stopped
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 267
        if uint8(sub_f8ad5e69[idx].field_1296):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_768 > block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_1024 < block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        require idx < sub_f8ad5e69.length
        require msg.value >= minContribAmount
        require idx < sub_f8ad5e69.length
        require idx < sub_f8ad5e69.length
        if not stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg1)].field_0:
            sub_f8ad5e69[idx].field_1792++
            if not sub_f8ad5e69[idx].field_1792 <= sub_f8ad5e69[idx].field_1792 + 1:
                s = sub_f8ad5e69[idx].field_1792 + sha3((9 * idx) + sha3(267) + 7) + 1
                while sha3((9 * idx) + sha3(267) + 7) + sub_f8ad5e69[idx].field_1792 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor[sub_f8ad5e69[idx].field_1792 + sha3((9 * idx) + ('name', 'sub_f8ad5e69', 267) + 7)].field_0) = arg1
        require msg.value + stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg1)].field_0 >= stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg1)].field_0
        require idx < sub_f8ad5e69.length
        stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg1)].field_0 += msg.value
        require msg.value + sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_1536
        require idx < sub_f8ad5e69.length
        sub_f8ad5e69[idx].field_1536 += msg.value
        require idx < sub_f8ad5e69.length
        if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_0:
            if sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_512:
                require idx < sub_f8ad5e69.length
                if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_512:
                    require idx < sub_f8ad5e69.length
                    Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                    sub_f8ad5e69[idx].field_1024 = block.timestamp
                    emit 0x619ffc4b: sub_f8ad5e69[idx].field_1024, idx
        else:
            require idx < sub_f8ad5e69.length
            if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_0:
                Mask(248, 0, sub_f8ad5e69[idx].field_1288) = 1
                require block.timestamp + sub_f8ad5e69[idx].field_256 >= sub_f8ad5e69[idx].field_256
                require idx < sub_f8ad5e69.length
                sub_f8ad5e69[idx].field_1024 = block.timestamp + sub_f8ad5e69[idx].field_256
                emit 0xc8ff8485: sub_f8ad5e69[idx].field_1024, idx
            else:
                if sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_512:
                    require idx < sub_f8ad5e69.length
                    if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_512:
                        require idx < sub_f8ad5e69.length
                        Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                        sub_f8ad5e69[idx].field_1024 = block.timestamp
                        emit 0x619ffc4b: sub_f8ad5e69[idx].field_1024, idx
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_f8ad5e69.length
        emit 0x5fa0aae8: sub_f8ad5e69[idx].field_1536, msg.value, sub_f8ad5e69[idx].field_1792, idx, arg1
    require 3 < sub_f8ad5e69.length
    require msg.value >= minContribAmount
    require 3 < sub_f8ad5e69.length
    require 3 < sub_f8ad5e69.length
    if not sub_f8ad5e69[35][address(arg1)].field_0:
        uint256(sub_f8ad5e69.field_8704)++
        if not uint256(sub_f8ad5e69.field_8704) <= uint256(sub_f8ad5e69.field_8704) + 1:
            idx = uint256(sub_f8ad5e69.field_8704) + 1
            while uint256(sub_f8ad5e69.field_8704) > idx:
                sub_f8ad5e69[idx + 34].field_0 = 0
                idx = idx + 1
                continue 
        address(stor[uint256(sub_f8ad5e69.field_8704) + ('array', 34, ('name', 'sub_f8ad5e69', 267))].field_0) = arg1
    require msg.value + sub_f8ad5e69[35][address(arg1)].field_0 >= sub_f8ad5e69[35][address(arg1)].field_0
    require 3 < sub_f8ad5e69.length
    sub_f8ad5e69[35][address(arg1)].field_0 += msg.value
    require msg.value + uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_8448)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69.field_8448) += msg.value
    require 3 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
        if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
            require 3 < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                Mask(240, 0, sub_f8ad5e69.field_8208) = 1
                uint256(sub_f8ad5e69.field_7936) = block.timestamp
                emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                emit 0x3: uint256(sub_f8ad5e69.field_7936)
    else:
        require 3 < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
            Mask(248, 0, sub_f8ad5e69.field_8200) = 1
            require block.timestamp + uint256(sub_f8ad5e69.field_7168) >= uint256(sub_f8ad5e69.field_7168)
            require 3 < sub_f8ad5e69.length
            uint256(sub_f8ad5e69.field_7936) = block.timestamp + uint256(sub_f8ad5e69.field_7168)
            emit 0xc8ff8485: uint256(sub_f8ad5e69.field_7936)
            emit 0x3: uint256(sub_f8ad5e69.field_7936)
        else:
            if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                    require 3 < sub_f8ad5e69.length
                    Mask(240, 0, sub_f8ad5e69.field_8208) = 1
                    uint256(sub_f8ad5e69.field_7936) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                    emit 0x3: uint256(sub_f8ad5e69.field_7936)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < sub_f8ad5e69.length
    emit 0x5fa0aae8: uint256(sub_f8ad5e69.field_8448), msg.value, uint256(sub_f8ad5e69.field_8704), 3, arg1
}

function _fallback() payable {
    require not stopped
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 267
        if uint8(sub_f8ad5e69[idx].field_1296):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_768 > block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_1024 < block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        require idx < sub_f8ad5e69.length
        require msg.value >= minContribAmount
        require idx < sub_f8ad5e69.length
        require idx < sub_f8ad5e69.length
        if not stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0:
            sub_f8ad5e69[idx].field_1792++
            if not sub_f8ad5e69[idx].field_1792 <= sub_f8ad5e69[idx].field_1792 + 1:
                s = sub_f8ad5e69[idx].field_1792 + sha3((9 * idx) + sha3(267) + 7) + 1
                while sha3((9 * idx) + sha3(267) + 7) + sub_f8ad5e69[idx].field_1792 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor[sub_f8ad5e69[idx].field_1792 + sha3((9 * idx) + ('name', 'sub_f8ad5e69', 267) + 7)].field_0) = msg.sender
        require msg.value + stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0 >= stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0
        require idx < sub_f8ad5e69.length
        stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0 += msg.value
        require msg.value + sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_1536
        require idx < sub_f8ad5e69.length
        sub_f8ad5e69[idx].field_1536 += msg.value
        require idx < sub_f8ad5e69.length
        if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_0:
            if sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_512:
                require idx < sub_f8ad5e69.length
                if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_512:
                    require idx < sub_f8ad5e69.length
                    Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                    sub_f8ad5e69[idx].field_1024 = block.timestamp
                    emit 0x619ffc4b: sub_f8ad5e69[idx].field_1024, idx
        else:
            require idx < sub_f8ad5e69.length
            if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_0:
                Mask(248, 0, sub_f8ad5e69[idx].field_1288) = 1
                require block.timestamp + sub_f8ad5e69[idx].field_256 >= sub_f8ad5e69[idx].field_256
                require idx < sub_f8ad5e69.length
                sub_f8ad5e69[idx].field_1024 = block.timestamp + sub_f8ad5e69[idx].field_256
                emit 0xc8ff8485: sub_f8ad5e69[idx].field_1024, idx
            else:
                if sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_512:
                    require idx < sub_f8ad5e69.length
                    if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_512:
                        require idx < sub_f8ad5e69.length
                        Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                        sub_f8ad5e69[idx].field_1024 = block.timestamp
                        emit 0x619ffc4b: sub_f8ad5e69[idx].field_1024, idx
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_f8ad5e69.length
        emit 0x5fa0aae8: sub_f8ad5e69[idx].field_1536, msg.value, sub_f8ad5e69[idx].field_1792, idx, msg.sender
    require 3 < sub_f8ad5e69.length
    require msg.value >= minContribAmount
    require 3 < sub_f8ad5e69.length
    require 3 < sub_f8ad5e69.length
    if not sub_f8ad5e69[35][address(msg.sender)].field_0:
        uint256(sub_f8ad5e69.field_8704)++
        if not uint256(sub_f8ad5e69.field_8704) <= uint256(sub_f8ad5e69.field_8704) + 1:
            idx = uint256(sub_f8ad5e69.field_8704) + 1
            while uint256(sub_f8ad5e69.field_8704) > idx:
                sub_f8ad5e69[idx + 34].field_0 = 0
                idx = idx + 1
                continue 
        address(stor[uint256(sub_f8ad5e69.field_8704) + ('array', 34, ('name', 'sub_f8ad5e69', 267))].field_0) = msg.sender
    require msg.value + sub_f8ad5e69[35][address(msg.sender)].field_0 >= sub_f8ad5e69[35][address(msg.sender)].field_0
    require 3 < sub_f8ad5e69.length
    sub_f8ad5e69[35][address(msg.sender)].field_0 += msg.value
    require msg.value + uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_8448)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69.field_8448) += msg.value
    require 3 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
        if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
            require 3 < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                Mask(240, 0, sub_f8ad5e69.field_8208) = 1
                uint256(sub_f8ad5e69.field_7936) = block.timestamp
                emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                emit 0x3: uint256(sub_f8ad5e69.field_7936)
    else:
        require 3 < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
            Mask(248, 0, sub_f8ad5e69.field_8200) = 1
            require block.timestamp + uint256(sub_f8ad5e69.field_7168) >= uint256(sub_f8ad5e69.field_7168)
            require 3 < sub_f8ad5e69.length
            uint256(sub_f8ad5e69.field_7936) = block.timestamp + uint256(sub_f8ad5e69.field_7168)
            emit 0xc8ff8485: uint256(sub_f8ad5e69.field_7936)
            emit 0x3: uint256(sub_f8ad5e69.field_7936)
        else:
            if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                    require 3 < sub_f8ad5e69.length
                    Mask(240, 0, sub_f8ad5e69.field_8208) = 1
                    uint256(sub_f8ad5e69.field_7936) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                    emit 0x3: uint256(sub_f8ad5e69.field_7936)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < sub_f8ad5e69.length
    emit 0x5fa0aae8: uint256(sub_f8ad5e69.field_8448), msg.value, uint256(sub_f8ad5e69.field_8704), 3, msg.sender
}

function contribute() payable {
    require not stopped
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 267
        if uint8(sub_f8ad5e69[idx].field_1296):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_768 > block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_1024 < block.timestamp:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        require idx < sub_f8ad5e69.length
        require msg.value >= minContribAmount
        require idx < sub_f8ad5e69.length
        require idx < sub_f8ad5e69.length
        if not stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0:
            sub_f8ad5e69[idx].field_1792++
            if not sub_f8ad5e69[idx].field_1792 <= sub_f8ad5e69[idx].field_1792 + 1:
                s = sub_f8ad5e69[idx].field_1792 + sha3((9 * idx) + sha3(267) + 7) + 1
                while sha3((9 * idx) + sha3(267) + 7) + sub_f8ad5e69[idx].field_1792 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor[sub_f8ad5e69[idx].field_1792 + sha3((9 * idx) + ('name', 'sub_f8ad5e69', 267) + 7)].field_0) = msg.sender
        require msg.value + stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0 >= stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0
        require idx < sub_f8ad5e69.length
        stor[(9 * idx) + ('name', 'sub_f8ad5e69', 267) + 8][address(msg.sender)].field_0 += msg.value
        require msg.value + sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_1536
        require idx < sub_f8ad5e69.length
        sub_f8ad5e69[idx].field_1536 += msg.value
        require idx < sub_f8ad5e69.length
        if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_0:
            if sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_512:
                require idx < sub_f8ad5e69.length
                if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_512:
                    require idx < sub_f8ad5e69.length
                    Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                    sub_f8ad5e69[idx].field_1024 = block.timestamp
                    emit 0x619ffc4b: sub_f8ad5e69[idx].field_1024, idx
        else:
            require idx < sub_f8ad5e69.length
            if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_0:
                Mask(248, 0, sub_f8ad5e69[idx].field_1288) = 1
                require block.timestamp + sub_f8ad5e69[idx].field_256 >= sub_f8ad5e69[idx].field_256
                require idx < sub_f8ad5e69.length
                sub_f8ad5e69[idx].field_1024 = block.timestamp + sub_f8ad5e69[idx].field_256
                emit 0xc8ff8485: sub_f8ad5e69[idx].field_1024, idx
            else:
                if sub_f8ad5e69[idx].field_1536 >= sub_f8ad5e69[idx].field_512:
                    require idx < sub_f8ad5e69.length
                    if sub_f8ad5e69[idx].field_1536 < sub_f8ad5e69[idx].field_512:
                        require idx < sub_f8ad5e69.length
                        Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                        sub_f8ad5e69[idx].field_1024 = block.timestamp
                        emit 0x619ffc4b: sub_f8ad5e69[idx].field_1024, idx
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_f8ad5e69.length
        emit 0x5fa0aae8: sub_f8ad5e69[idx].field_1536, msg.value, sub_f8ad5e69[idx].field_1792, idx, msg.sender
    require 3 < sub_f8ad5e69.length
    require msg.value >= minContribAmount
    require 3 < sub_f8ad5e69.length
    require 3 < sub_f8ad5e69.length
    if not sub_f8ad5e69[35][address(msg.sender)].field_0:
        uint256(sub_f8ad5e69.field_8704)++
        if not uint256(sub_f8ad5e69.field_8704) <= uint256(sub_f8ad5e69.field_8704) + 1:
            idx = uint256(sub_f8ad5e69.field_8704) + 1
            while uint256(sub_f8ad5e69.field_8704) > idx:
                sub_f8ad5e69[idx + 34].field_0 = 0
                idx = idx + 1
                continue 
        address(stor[uint256(sub_f8ad5e69.field_8704) + ('array', 34, ('name', 'sub_f8ad5e69', 267))].field_0) = msg.sender
    require msg.value + sub_f8ad5e69[35][address(msg.sender)].field_0 >= sub_f8ad5e69[35][address(msg.sender)].field_0
    require 3 < sub_f8ad5e69.length
    sub_f8ad5e69[35][address(msg.sender)].field_0 += msg.value
    require msg.value + uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_8448)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69.field_8448) += msg.value
    require 3 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
        if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
            require 3 < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                Mask(240, 0, sub_f8ad5e69.field_8208) = 1
                uint256(sub_f8ad5e69.field_7936) = block.timestamp
                emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                emit 0x3: uint256(sub_f8ad5e69.field_7936)
    else:
        require 3 < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
            Mask(248, 0, sub_f8ad5e69.field_8200) = 1
            require block.timestamp + uint256(sub_f8ad5e69.field_7168) >= uint256(sub_f8ad5e69.field_7168)
            require 3 < sub_f8ad5e69.length
            uint256(sub_f8ad5e69.field_7936) = block.timestamp + uint256(sub_f8ad5e69.field_7168)
            emit 0xc8ff8485: uint256(sub_f8ad5e69.field_7936)
            emit 0x3: uint256(sub_f8ad5e69.field_7936)
        else:
            if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                    require 3 < sub_f8ad5e69.length
                    Mask(240, 0, sub_f8ad5e69.field_8208) = 1
                    uint256(sub_f8ad5e69.field_7936) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                    emit 0x3: uint256(sub_f8ad5e69.field_7936)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < sub_f8ad5e69.length
    emit 0x5fa0aae8: uint256(sub_f8ad5e69.field_8448), msg.value, uint256(sub_f8ad5e69.field_8704), 3, msg.sender
}



}
