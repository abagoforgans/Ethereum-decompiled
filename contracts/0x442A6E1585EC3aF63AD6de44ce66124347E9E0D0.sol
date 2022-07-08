contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address agentAddress;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function agent() {
    return agentAddress
}

function _fallback() payable {
    emit 0xac0d361d: msg.value, this.address
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'Only New Owner'
    owner = newOwner
    newOwner = 0
    emit OwnershipTransferred(owner, newOwner);
}

function sub_beb2b1ed(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'notNull'
    if agentAddress != msg.sender:
        revert with 0, 'Only Agent'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Not enough coins'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x622200fc: arg2, this.address, arg1
}

function releaseERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'notNull'
    if agentAddress != msg.sender:
        revert with 0, 'Only Agent'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Not enough tokens'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), address(arg2) << 64
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[228]
    emit 0xef1aa62f: arg3, this.address, arg1, arg2
}



}
