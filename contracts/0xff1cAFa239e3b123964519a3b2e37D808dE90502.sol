contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    require code.data[1428 len 20]
    stor0 = code.data[1428 len 20]
    return code.data[106 len 1310]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) {
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_c7487658(?) {
    require block.number <= arg5
    require not stor1[arg4]
    mem[128] = address(this.address)
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = '\x19Ethereum Signed Message:\n32'
    if arg6.length != 65:
        require 0 == stor0
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(sha3('deposit'), this.address, msg.sender, arg1, address(arg2), arg4, arg5)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27 << 248, mem[128 len 20], msg.sender, arg1, uint32(arg2)) 
            require erecover.result
            require address(signer) == stor0
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27) != 28:
                require 0 == stor0
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(sha3('deposit'), this.address, msg.sender, arg1, address(arg2), arg4, arg5)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('param', 'arg2'), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27 << 248, mem[128 len 20], msg.sender, arg1, uint32(arg2)) 
                require erecover.result
                require address(signer) == stor0
    stor1[arg4] = 1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).deposit(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg3, arg4
    require ext_call.success
}



}
