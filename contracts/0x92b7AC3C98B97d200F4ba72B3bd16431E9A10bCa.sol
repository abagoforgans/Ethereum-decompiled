contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
array of address stor3;
mapping of uint256 stor257;
uint256 stor266;

function _fallback() payable {
    stor266 = 10^17
    require not msg.value
    mem[96 len -5511] = code.data[5875 len -5511]
    mem[64] = -5415
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
    return code.data[364 len 5511]
}



// =====================  Runtime code  =====================


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
mapping of struct sub_f8ad5e69;
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
           bool(stor[(9 * arg1) + ('name', 'sub_f8ad5e69', 267) + 8][address(arg2)].field_256),
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
           bool(sub_f8ad5e69[arg1].field_1280),
           bool(sub_f8ad5e69[arg1].field_1288),
           bool(sub_f8ad5e69[arg1].field_1296),
           sub_f8ad5e69[arg1].field_1536
}

function _fallback() payable {
    revert
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
        if sub_f8ad5e69[idx].field_1296:
            s = (9 * idx) + sha3(267)
            idx = idx + 1
            continue 
        if not sub_f8ad5e69[idx].field_1280:
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

function sub_1b356291(?) {
    if arg1 >= sub_f8ad5e69.length:
        return 0
    if sub_f8ad5e69[arg1].field_1792:
        idx = 1152
        s = 0
        while (32 * sub_f8ad5e69[arg1].field_1792) + 1120 > idx:
            mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'sub_f8ad5e69', 267) + 7)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require arg1 < sub_a61c666b.length
    return bool(sub_f8ad5e69[arg1].field_1280), 
           bool(sub_f8ad5e69[arg1].field_1288), bool(sub_f8ad5e69[arg1].field_1296) >> 256,
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
            sub_f8ad5e69[arg1].field_1280 = 1
}



}
