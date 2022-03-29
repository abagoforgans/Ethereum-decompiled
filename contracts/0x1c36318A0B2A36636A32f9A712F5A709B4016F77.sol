contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 1857]
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

function setCreationCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}

function create(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if curatorAddress != msg.sender:
        return 1
    mem[ceil32(arg3.length) + 128] = 0xc2cd0e0100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = 96
    mem[ceil32(arg3.length) + 228] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 260] = mem[128]
        mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xc2cd0e01 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
    require ext_call.success
    return ext_call.return_data[0]
}



}
