contract main {




// =====================  Runtime code  =====================


address owner;
address WETHAddress;

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function depositETH() payable {
    require msg.value > 0
    require ext_code.size(WETHAddress)
    call WETHAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x76b1f108: WETHAddress, msg.value
    return 1
}

function withdrawETH(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(WETHAddress)
    call WETHAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    emit 0x466234fb: WETHAddress, arg1, arg2
    return 1
}

function withdrawERC20(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        emit 0xcbb2fd1b: 1
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x466234fb: address(arg1), arg2, arg3
    return 0
}

function depositERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        emit 0xcbb2fd1b: 0
    else:
        require ext_code.size(arg1)
        call arg1.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            emit 0xcbb2fd1b: 0
        else:
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0x76b1f108: address(arg1), arg2
    return 0
}

function executeTransaction(address arg1, bytes arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1 with:
           funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1 with:
           funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
           value arg3 wei
             gas gas_remaining wei
            args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[arg2.length + 160 len -(arg2.length % 32) + ceil32(arg2.length)]
    if not ext_call.success:
        mem[ceil32(arg2.length) + 128] = 2
        emit 0xcbb2fd1b: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    else:
        mem[ceil32(arg2.length) + 128] = arg1
        mem[ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg2.length) + 224] = arg2.length
        mem[ceil32(arg2.length) + 192] = arg3
        emit 0xe4d58b25: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len (2 * ceil32(arg2.length)) + -arg2.length + 96]
}



}
