contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    uint8(stor0.field_160) = 1
    stor1 = 1
    stor5 = 1
    stor6 = 10
    require not msg.value
    address(stor0.field_0) = msg.sender
    require address(code.data[5809 len 32])
    stor3 = address(code.data[5809 len 32])
    require address(stor0.field_0) == msg.sender
    require ext_code.size(address(code.data[5841 len 32]))
    call address(code.data[5841 len 32]).0x25698d89 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor2 = address(code.data[5841 len 32])
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = 4 * stor4.length + 1
        while sha3(4) + (4 * stor4.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + stor[idx + sha3(mem[0]) + 1] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + stor[idx + sha3(mem[0]) + 2] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 3] = 0
            idx = idx + 4
            continue 
    stor4[stor4.length].field_0 = 0
    stor4[stor4.length].field_256 = 0
    idx = 0
    while stor4[stor4.length].field_256 > idx:
        address(stor[idx + sha3((4 * stor4.length) + ('name', 'stor4', 4) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    stor4[stor4.length].field_512 = 0
    idx = 0
    while stor4[stor4.length].field_512 > idx:
        stor[idx + sha3((4 * stor4.length) + ('name', 'stor4', 4) + 2)].field_0 = 0
        idx = idx + 1
        continue 
    stor4[stor4.length].field_768 = block.number + stor6
    return code.data[1046 len 4763]
}



// =====================  Runtime code  =====================


#
#  - callBackVariations()
#
uint8 stor0; offset 160
address owner;
uint256 stor1;
address lotteryAddress;
address dogCoreAddress;
uint256 variationProbably;
uint256 variationCycle;

function isVariation() {
    return bool(stor0)
}

function owner() {
    return owner
}

function variationProbably() {
    return variationProbably
}

function variationCycle() {
    return variationCycle
}

function lottery() {
    return lotteryAddress
}

function dogCore() {
    return dogCoreAddress
}

function cVariations(uint256 arg1) {
    require arg1 < cVariations.length
    return cVariations[arg1].field_0, cVariations[arg1].field_768
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setVariationProbably(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= 100
    variationProbably = arg1
}

function setVariationCycle(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= 48 * 24 * 3600
    variationCycle = arg1
}

function setLotteryAddress(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x25698d89 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    lotteryAddress = arg1
}

function createVariation(uint256 arg1, uint256 arg2) {
    if dogCoreAddress != msg.sender:
        require owner == msg.sender
    stor1 = arg1 * stor1
    stor1 = sha3(block.timestamp, stor1 * block.difficulty) * block.number
    if arg2 >= 20000:
        require arg2 * variationProbably
        if 1 == sha3(block.timestamp, stor1 * block.difficulty) % arg2 * variationProbably:
            return 1
    else:
        require 20000 * variationProbably
        if 1 == sha3(block.timestamp, stor1 * block.difficulty) % 20000 * variationProbably:
            return 1
    return 0
}

function registerVariation(uint256 arg1, address arg2) {
    if dogCoreAddress != msg.sender:
        require owner == msg.sender
    require arg2
    require cVariations.length - 1 < cVariations.length
    cVariations[cVariations.length - 1].field_512++
    if not cVariations[cVariations.length - 1].field_512 <= cVariations[cVariations.length - 1].field_512 + 1:
        idx = cVariations[cVariations.length - 1].field_512 + 1
        while cVariations[cVariations.length - 1].field_512 > idx:
            stor[idx + sha3((4 * cVariations.length - 1) + ('name', 'cVariations', 4) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor[sha3((4 * cVariations.length - 1) + ('name', 'cVariations', 4) + 2) + cVariations[cVariations.length - 1].field_512].field_0 = arg1
    require cVariations.length - 1 < cVariations.length
    cVariations[cVariations.length - 1].field_256++
    if not cVariations[cVariations.length - 1].field_256 <= cVariations[cVariations.length - 1].field_256 + 1:
        idx = cVariations[cVariations.length - 1].field_256 + 1
        while cVariations[cVariations.length - 1].field_256 > idx:
            stor[idx + sha3((4 * cVariations.length - 1) + ('name', 'cVariations', 4) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor[sha3((4 * cVariations.length - 1) + ('name', 'cVariations', 4) + 1) + cVariations[cVariations.length - 1].field_256].field_0 = arg2
}



}
