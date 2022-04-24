contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor2;
array of struct stor3;
array of uint256 stor4;
address stor5;

function _fallback() {
    mem[96 len -2079] = code.data[3268 len -2079]
    mem[64] = -1983
    stor0 = msg.sender
    require mem[108 len 20]
    require mem[mem[192] + 96] > 0
    stor5 = mem[108 len 20]
    stor4.length = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        idx = 0
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[192] + 128
        while mem[192] + (32 * mem[mem[192] + 96]) + 128 > idx:
            stor4[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[192] + 96]) + 31) >> 5
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    require mem[mem[128] + 96] >= 2
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[64] = -1919
    require 0 < mem[mem[128] + 96]
    mem[-1951] = mem[mem[128] + 140 len 20]
    stor2[stor2.length].field_0 = 3
    stor2[stor2.length].field_8 = mem[-1939 len 20]
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[64] = -1855
    require 1 < mem[mem[128] + 96]
    mem[-1887] = mem[mem[128] + 172 len 20]
    stor2[stor2.length].field_0 = 97
    stor2[stor2.length].field_8 = mem[-1875 len 20]
    require mem[mem[160] + 96] >= 3
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[64] = -1791
    require 0 < mem[mem[160] + 96]
    mem[-1823] = mem[mem[160] + 140 len 20]
    stor3[stor3.length].field_0 = 3
    stor3[stor3.length].field_8 = mem[-1811 len 20]
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[64] = -1727
    require 1 < mem[mem[160] + 96]
    mem[-1759] = mem[mem[160] + 172 len 20]
    stor3[stor3.length].field_0 = 47
    stor3[stor3.length].field_8 = mem[-1747 len 20]
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[64] = -1663
    require 2 < mem[mem[160] + 96]
    mem[-1695] = mem[mem[160] + 204 len 20]
    stor3[stor3.length].field_0 = 50
    stor3[stor3.length].field_8 = mem[-1683 len 20]
    return code.data[1189 len 2079]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of struct preICO;
array of struct iCOPercentage;
array of uint256 distributionThresholds;
address bountyAddress;

function getICOPercentage(uint8 arg1) {
    require arg1 < iCOPercentage.length
    return iCOPercentage[arg1].field_0
}

function distributionThresholds(uint256 arg1) {
    require arg1 < distributionThresholds.length
    return uint256(distributionThresholds[arg1])
}

function getICOLength() {
    return uint8(iCOPercentage.length)
}

function getPreICOLength() {
    return uint8(preICO.length)
}

function getPreICOAddress(uint8 arg1) {
    require arg1 < preICO.length
    return preICO[arg1].field_8
}

function owner() {
    return owner
}

function preIcoAllocation(uint256 arg1) {
    require arg1 < preICO.length
    return preICO[arg1].field_0, preICO[arg1].field_8
}

function getThresholdsLength() {
    return uint8(distributionThresholds.length)
}

function getPreICOPercentage(uint8 arg1) {
    require arg1 < preICO.length
    return preICO[arg1].field_0
}

function bountyAddress() {
    return bountyAddress
}

function newOwner() {
    return newOwner
}

function getThreshold(uint8 arg1) {
    require arg1 < distributionThresholds.length
    return uint256(distributionThresholds[arg1])
}

function icoAllocation(uint256 arg1) {
    require arg1 < iCOPercentage.length
    return iCOPercentage[arg1].field_0, iCOPercentage[arg1].field_8
}

function getICOAddress(uint8 arg1) {
    require arg1 < iCOPercentage.length
    return iCOPercentage[arg1].field_8
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}



}
