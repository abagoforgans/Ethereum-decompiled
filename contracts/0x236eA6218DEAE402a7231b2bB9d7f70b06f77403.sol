contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[87 len 3355]
}



// =====================  Runtime code  =====================


address stor0;
address balancerAddress;
mapping of uint8 stor2;

function oracles(address arg1) {
    return bool(stor2[arg1])
}

function balancer() {
    return balancerAddress
}

function _fallback() payable {
    revert
}

function BalancerOracle() {
    stor2[address(msg.sender)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function setBalancer(address arg1) {
    require msg.sender == stor0
    balancerAddress = arg1
}

function addOracle(address arg1) {
    require msg.sender == stor0
    stor2[address(arg1)] = 1
}

function removeOracle(address arg1) {
    require msg.sender == stor0
    stor2[address(arg1)] = 0
}

function balanceSoll(address arg1) {
    require ext_code.size(balancerAddress)
    call balancerAddress.0xceae3424 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceHaben(address arg1) {
    require ext_code.size(balancerAddress)
    call balancerAddress.0xbeb2b55d with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function transferOracleOwnership(address arg1) {
    require msg.sender == stor0
    require ext_code.size(balancerAddress)
    call balancerAddress.0xf2fde38b with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function addTx(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    require bool(stor2[address(msg.sender)]) == 1
    mem[ceil32(arg4.length) + 128] = 0x1bbfb02900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = 128
    mem[ceil32(arg4.length) + 260] = arg4.length
    if not arg4.length:
        require ext_code.size(balancerAddress)
        call balancerAddress.0x1bbfb029 with:
             gas gas_remaining - 50 wei
            args 0, 0, address(arg2), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
    else:
        mem[ceil32(arg4.length) + 292] = mem[128]
        mem[ceil32(arg4.length) + 324 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        require ext_code.size(balancerAddress)
        call balancerAddress.0x1bbfb029 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 292 len arg4.length])
    require ext_call.success
    mem[ceil32(arg4.length) + 128] = arg1
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 192] = arg3
    mem[ceil32(arg4.length) + 224] = 128
    mem[ceil32(arg4.length) + 256] = arg4.length
    if arg4.length:
        mem[ceil32(arg4.length) + 288] = mem[128]
        mem[ceil32(arg4.length) + 320 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
    emit Tx(address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 288 len arg4.length]));
}



}
