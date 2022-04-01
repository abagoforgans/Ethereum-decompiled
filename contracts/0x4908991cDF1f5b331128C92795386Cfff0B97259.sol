contract main {


// =======================  Init code  ======================


uint256 stor6;

function _fallback() payable {
    stor6 = 10^17
    require not msg.value
    return code.data[114 len 2909]
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


address sub_69a3a0d0Address;
address walletAddress;
address founder1Address;
address founder2Address;
address earlySponsorAddress;
array of address advisers;
uint256 minContribAmount;
array of struct sub_f8ad5e69;
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

function sub_f2f78e6d(?) {
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 7
        if sub_f8ad5e69[idx].field_1296:
            s = (9 * idx) + sha3(7)
            idx = idx + 1
            continue 
        if not sub_f8ad5e69[idx].field_1280:
            s = (9 * idx) + sha3(7)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_768 > block.timestamp:
            s = (9 * idx) + sha3(7)
            idx = idx + 1
            continue 
        if sub_f8ad5e69[idx].field_1024 < block.timestamp:
            s = (9 * idx) + sha3(7)
            idx = idx + 1
            continue 
        return idx
    return 3
}

function sub_520b38f3(?) {
    require arg1
    sub_69a3a0d0Address = arg1
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
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

function getConfiguration() {
    idx = 0
    while idx < advisers.length:
        mem[0] = 5
        require idx < advisers.length
        mem[(32 * idx) + 192] = address(advisers[idx])
        idx = idx + 1
        continue 
    require ext_code.size(sub_69a3a0d0Address)
    call sub_69a3a0d0Address.transfersEnabled() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[(32 * advisers.length) + 192] = 0
    mem[(32 * advisers.length) + 224] = 1
    if Mask(251, 0, advisers.length):
        mem[(32 * advisers.length) + 480] = mem[192]
        mem[(32 * advisers.length) + 512 len floor32((32 * advisers.length) - 1)] = mem[224 len (32 * advisers.length) + 32], walletAddress, founder1Address, founder2Address, earlySponsorAddress, Array(len=mem[192], data=mem[(32 * advisers.length) + 512 len floor32((32 * advisers.length) - 1) + -(32 * advisers.length) - 288]), bool(ext_call.return_data[0]), advisers.length
    return 0, 
           1,
           walletAddress,
           founder1Address,
           founder2Address,
           earlySponsorAddress,
           256,
           bool(ext_call.return_data[0]),
           advisers.length,
           mem[(32 * advisers.length) + 480 len 32 * advisers.length]
}



}
