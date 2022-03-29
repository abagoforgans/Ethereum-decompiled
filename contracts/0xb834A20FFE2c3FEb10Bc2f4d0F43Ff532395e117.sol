contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 5070]
}



// =====================  Runtime code  =====================


address devAddress;
address curatorAddress;
address tokenAddress;
array of struct proxyList;
mapping of uint8 stor4;
address dedicatedProxyAddress;

function proxyList(uint256 arg1) {
    require arg1 < proxyList.length
    return proxyList[arg1].field_0
}

function dev() {
    return devAddress
}

function tokenAddress() {
    return tokenAddress
}

function dedicatedProxyAddress() {
    return dedicatedProxyAddress
}

function curator() {
    return curatorAddress
}

function killContract() {
    if msg.sender == devAddress:
        selfdestruct(devAddress)
    return 1
}

function _fallback() {
    revert 
}

function isProxyLegit(address arg1) {
    if arg1 != dedicatedProxyAddress:
        return bool(stor4[address(arg1)])
    return 1
}

function setTokenAddress(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    tokenAddress = arg1
    return 0
}

function setProxyManagementCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}

function setDedicatedProxy(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    dedicatedProxyAddress = arg1
    return 0
}

function changeDedicatedProxy(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    dedicatedProxyAddress = arg1
    return 0
}

function raiseTransferEvent(address arg1, address arg2, uint256 arg3) {
    if tokenAddress != msg.sender:
        return 1
    require ext_code.size(dedicatedProxyAddress)
    call dedicatedProxyAddress.0x967a08f7 with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return 0
}

function raiseApprovalEvent(address arg1, address arg2, uint256 arg3) {
    if msg.sender == tokenAddress:
        return 1
    require ext_code.size(dedicatedProxyAddress)
    call dedicatedProxyAddress.raiseApprovalEvent(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return 0
}

function addProxy(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    stor4[address(arg1)] = 1
    proxyList.length++
    if not proxyList.length <= proxyList.length + 1:
        idx = proxyList.length + 1
        while proxyList.length > idx:
            proxyList[idx].field_0 = 0
            idx = idx + 1
            continue 
    proxyList[proxyList.length].field_0 = arg1
    return 0
}

function getApprovedProxies() {
    if proxyList.length:
        mem[160] = address(proxyList.field_0)
        idx = 160
        s = 0
        while (32 * proxyList.length) + 128 > idx:
            mem[idx + 32] = proxyList[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * proxyList.length) + 160] = 32
    mem[(32 * proxyList.length) + 192] = proxyList.length
    if Mask(251, 0, proxyList.length):
        mem[(32 * proxyList.length) + 224] = mem[160]
        mem[(32 * proxyList.length) + 256 len floor32((32 * proxyList.length) - 1)] = mem[192 len floor32((32 * proxyList.length) - 1)]
    return Array(len=proxyList.length, data=mem[(32 * proxyList.length) + 224 len 32 * proxyList.length])
}

function removeProxy(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    if not stor4[address(arg1)]:
        return 55
    idx = 0
    while idx < proxyList.length:
        if arg1 == proxyList[idx].field_0:
            mem[0] = arg1
            mem[32] = 4
            stor4[address(arg1)] = 0
        else:
            require idx < proxyList.length
            mem[0] = 3
            require 0 < proxyList.length - 1
            mem[160] = proxyList[idx].field_0
        idx = idx + 1
        continue 
    proxyList.length--
    if not proxyList.length - 1:
        idx = 0
        while proxyList.length > idx:
            proxyList[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 160
        while (32 * proxyList.length - 1) + 160 > idx:
            proxyList[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * proxyList.length - 1) + 31) >> 5
        while proxyList.length > idx:
            proxyList[idx].field_0 = 0
            idx = idx + 1
            continue 
    return 0
}



}
