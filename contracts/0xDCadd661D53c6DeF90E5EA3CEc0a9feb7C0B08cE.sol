contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 1825]
}



// =====================  Runtime code  =====================


address curatorAddress;
address devAddress;
address tokenAddress;

function dev() {
    return devAddress
}

function tokenAddress() {
    return tokenAddress
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

function setTokenContract(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    tokenAddress = arg1
    return 0
}

function setDestructionCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}

function destroy(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    if curatorAddress != msg.sender:
        return 1
    mem[ceil32(arg2.length) + 128] = 0xbda70d9200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = msg.sender
    mem[ceil32(arg2.length) + 164] = arg1
    mem[ceil32(arg2.length) + 196] = 96
    mem[ceil32(arg2.length) + 228] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 260] = mem[128]
        mem[ceil32(arg2.length) + 292 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xbda70d92 with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 260 len arg2.length])
    require ext_call.success
    return ext_call.return_data[0]
}



}
