contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;
array of address stor5;
array of uint256 stor6;

function _fallback() {
    mem[96 len -1231] = code.data[1874 len -1231]
    mem[64] = -1135
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
    return code.data[643 len 1231]
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
    return advisers[arg1]
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
    return walletAddress, founder1Address, founder2Address, earlySponsorAddress
}



}
