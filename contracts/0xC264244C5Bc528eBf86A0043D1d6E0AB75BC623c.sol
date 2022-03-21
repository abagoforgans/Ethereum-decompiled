contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[686 len 32]
    return code.data[42 len 644]
}



// =====================  Runtime code  =====================


uint256 sub_1dd3d2f7;
mapping of uint256 balanceOf;

function sub_1dd3d2f7(?) payable {
    return sub_1dd3d2f7
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, int256 arg2) payable {
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, int256 arg3) payable {
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, int256 arg2, bytes arg3) payable {
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1.receiveApproval(address rg1, int256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        call arg1.receiveApproval(address rg1, int256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 292 len -(arg3.length % 32) + 32]
    require ext_call.success
    return 1
}



}
