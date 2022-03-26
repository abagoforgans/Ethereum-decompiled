contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 7841]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) {
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7654 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7686 len arg5.length] = arg5[all]
        if not arg5.length % 32:
            create contract with 0 wei
                            code: code.data[603 len 7238], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, arg3[all], arg5.length, arg5[all]), arg4 << 248, arg3.length + 256
        else:
            mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7686] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7718 len arg5.length % 32]
            create contract with 0 wei
                            code: code.data[603 len 7238], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, arg3[all], arg5.length, arg5[all], mem[ceil32(arg3.length) + ceil32(arg5.length) + arg3.length + arg5.length + 7686 len -(arg5.length % 32) + 32]), arg4 << 248, arg3.length + 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7654] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg3.length % 32) + 7686 len arg3.length % 32]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7718 len arg5.length] = arg5[all]
        if not arg5.length % 32:
            create contract with 0 wei
                            code: code.data[603 len 7238], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, arg3[all], mem[ceil32(arg3.length) + ceil32(arg5.length) + arg3.length + 7654 len -(arg3.length % 32) + 32], arg5.length, arg5[all]), arg4 << 248, floor32(arg3.length) + 288
        else:
            mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7718] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7750 len arg5.length % 32]
            create contract with 0 wei
                            code: code.data[603 len 7238], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, arg3[all], mem[ceil32(arg3.length) + ceil32(arg5.length) + arg3.length + 7654 len -(arg3.length % 32) + 32], arg5.length, arg5[all], mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + arg5.length + 7718 len -(arg5.length % 32) + 32]), arg4 << 248, floor32(arg3.length) + 288
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeController(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
