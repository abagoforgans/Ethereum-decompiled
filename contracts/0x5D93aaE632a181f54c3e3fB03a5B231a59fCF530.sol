contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;
array of address stor5;
array of uint256 stor6;

function _fallback() {
    mem[96 len -1691] = code.data[2334 len -1691]
    mem[64] = -1595
    stor1 = mem[172 len 20]
    stor2 = mem[204 len 20]
    stor3 = mem[236 len 20]
    stor4 = mem[268 len 20]
    stor5.length = mem[mem[288] + 96]
    if not mem[mem[288] + 96]:
        idx = 0
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[288] + 128
        while mem[288] + (32 * mem[mem[288] + 96]) + 128 > idx:
            stor5[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[288] + 96]) + 31) >> 5
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor6.length = 3
    s = 0
    idx = 128
    while 224 > idx:
        stor6[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor6.length > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < stor6.length
    uint256(stor6.field_0) = 55000000 * 10^18
    require 1 < stor6.length
    uint256(stor6.field_256) = 65000000 * 10^18
    require 2 < stor6.length
    uint256(stor6.field_512) = 75000000 * 10^18
    return code.data[643 len 1691]
}



// =====================  Runtime code  =====================


const sub_28fb889d(?) = 3

const sub_37994925(?) = 5000000 * 10^18

const ADVISER_STAKE = 1250000 * 10^18

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

function _fallback() payable {
    revert
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
    call sub_69a3a0d0Address.0xbef97c87 with:
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
