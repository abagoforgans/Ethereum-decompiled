contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeWallet(address arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onTokenReceived(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == stor3
    if arg3.length:
        _3 = mem[128]
        require ext_code.size(stor1)
        call stor1.0x7e4a0fe4 with:
             gas gas_remaining wei
            args mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.0x24413f5a with:
             gas gas_remaining wei
            args mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == arg2
        require ext_code.size(stor1)
        call stor1.0x1ab6452c with:
             gas gas_remaining wei
            args address(arg1), mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x524c80c5: address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), _3
    else:
        require ext_code.size(stor1)
        call stor1.0x7e4a0fe4 with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.0x24413f5a with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == arg2
        require ext_code.size(stor1)
        call stor1.0x1ab6452c with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x524c80c5: address(arg1), arg2, 128, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
            emit 0x524c80c5: address(arg1), arg2, 128, 0, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 288 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    return Mask(32, 224, sha3('onTokenReceived(address,uint256,', 'bytes)'))
}



}
