contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 1591]




// =====================  Runtime code  =====================


address proxyAddress;

function proxy() {
    return proxyAddress
}

function _fallback() payable {
    revert 
}

function __process(bytes arg1, address arg2) payable {
    revert 
}

function init(address arg1) {
    if proxyAddress:
        return 0
    proxyAddress = arg1
    return 1
}

function __approve(address arg1, uint256 arg2, address arg3) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x7b7054c8 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        return 0
    mem[ceil32(arg3.length) + 128] = 0x6a630ee700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 228] = arg4
    mem[ceil32(arg3.length) + 196] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(proxyAddress)
            call proxyAddress.0x6a630ee7 with:
                 gas gas_remaining - 50 wei
                args 0, 0, arg2, 128, address(arg4), arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            require ext_code.size(proxyAddress)
            call proxyAddress.0x6a630ee7 with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]), address(arg4)
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(proxyAddress)
        call proxyAddress.0x6a630ee7 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length]), address(arg4)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress != msg.sender:
        return 0
    mem[ceil32(arg4.length) + 128] = 0xec698a2800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 260] = arg5
    mem[ceil32(arg4.length) + 228] = 160
    mem[ceil32(arg4.length) + 292] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            require ext_code.size(proxyAddress)
            call proxyAddress.0xec698a28 with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
            require ext_code.size(proxyAddress)
            call proxyAddress.0xec698a28 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
    else:
        mem[ceil32(arg4.length) + 324] = mem[128]
        mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        require ext_code.size(proxyAddress)
        call proxyAddress.0xec698a28 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
