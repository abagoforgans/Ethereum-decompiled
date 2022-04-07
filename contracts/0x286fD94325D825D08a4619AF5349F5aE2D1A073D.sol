contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor6;
address stor7;
address stor8;
array of uint256 stor9;

function _fallback() {
    mem[96 len -9250] = code.data[9922 len -9250]
    mem[64] = -9154
    stor0 = msg.sender
    mem[0] = 1
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    mem[-2313] = mem[140 len 20]
    mem[-2089] = mem[mem[160] + 96]
    _121 = mem[mem[160] + 96]
    if not mem[mem[160] + 96]:
        if not mem[mem[160] + 96] % 32:
            mem[-2153] = mem[mem[160] + 96] + 256
            mem[mem[mem[160] + 96] - 2057] = 3
            mem[_121 - 2025] = 'SWR'
            create contract with 0 wei
                            code: code.data[3081 len 6841], mem[-2313], 0, 0, 224, 0, mem[-2153], 0, mem[-2089 len _121 + 64], 'SWR'
        else:
            mem[floor32(mem[mem[160] + 96]) - 2057] = mem[floor32(mem[mem[160] + 96]) + -(mem[mem[160] + 96] % 32) - 2025 len mem[mem[160] + 96] % 32]
            mem[floor32(_121) - 2025] = 3
            mem[floor32(_121) - 1993] = 'SWR'
            create contract with 0 wei
                            code: code.data[3081 len 6841], mem[-2313], 0, 0, 224, 0, floor32(_121) + 288, 0, mem[-2089 len floor32(_121) + 64], 3, 'SWR'
    else:
        mem[-2057] = mem[mem[160] + 128]
        mem[-2025 len floor32(mem[mem[160] + 96] - 1)] = mem[mem[160] + 160 len floor32(mem[mem[160] + 96] - 1)]
        if not _121 % 32:
            mem[_121 - 2057] = 3
            mem[_121 - 2025] = 'SWR'
            create contract with 0 wei
                            code: code.data[3081 len 6841], mem[-2313], 0, 0, 224, 0, _121 + 256, 0, mem[-2089 len _121 + 32], 3, 'SWR'
        else:
            mem[floor32(_121) - 2057] = mem[floor32(_121) + -(_121 % 32) - 2025 len _121 % 32]
            mem[floor32(_121) - 2025] = 3
            mem[floor32(_121) - 1993] = 'SWR'
            create contract with 0 wei
                            code: code.data[3081 len 6841], mem[-2313], 0, 0, 224, 0, floor32(_121) + 288, 0, mem[-2089 len floor32(_121) + 64], 3, 'SWR'
    require create.new_address
    stor8 = address(create.new_address)
    stor7 = mem[108 len 20]
    stor9[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor6 = mem[192]
    return code.data[672 len 2409]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
uint256 registeredDeals;
uint256 successfulDeals;
mapping of address stor4;
mapping of uint8 stor5;
uint256 commission;
address tokenAddress;
address repTokenAddress;
array of uint256 metadataHash;

function name() {
    return name[0 len name.length]
}

function validFactories(address arg1) {
    return bool(stor5[arg1])
}

function getTokenAddress() {
    return tokenAddress
}

function getConflictResolver() {
    return owner
}

function owner() {
    return owner
}

function registeredDeals() {
    return registeredDeals
}

function metadataHash() {
    return metadataHash[0 len metadataHash.length]
}

function successfulDeals() {
    return successfulDeals
}

function commission() {
    return commission
}

function getRepTokenAddress() {
    return repTokenAddress
}

function _fallback() payable {
    revert
}

function setCommission(uint256 arg1) {
    require owner == msg.sender
    commission = arg1
}

function addFactory(address arg1) {
    require owner == msg.sender
    stor5[address(arg1)] = 1
}

function removeFactory(address arg1) {
    require owner == msg.sender
    stor5[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setMetadataHash(string arg1) {
    require owner == msg.sender
    metadataHash[] = Array(len=arg1.length, data=arg1[all])
}

function registerDeal(address arg1, address arg2) {
    require 1 == bool(stor5[address(msg.sender)])
    require not stor4[address(arg1)]
    stor4[address(arg1)] = arg2
    registeredDeals++
    emit 0x6b6c389a: arg1
}

function mintRep(address arg1, uint256 arg2) {
    require 1 == bool(stor5[address(msg.sender)])
    require ext_code.size(repTokenAddress)
    call repTokenAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit 0xf36c3712: address(arg1), arg2
}



}
