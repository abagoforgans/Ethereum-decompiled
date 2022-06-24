contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of uint256 sub_858bf5af;

function sub_858bf5af(?) payable {
    require calldata.size - 4 >= 64
    return sub_858bf5af[address(arg1)][Mask(96, 160, arg2)]
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a16a09f2(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6e4e6f7420656e6f756768204f525620746f6b656e7320666f722074686973206f7065726174696f,
                    mem[204 len 24]
    sub_858bf5af[address(msg.sender)][Mask(96, 160, arg1)] += arg2
    emit 0x8c3433c7: arg2, msg.sender, Mask(96, 160, arg1)
}

function sub_bcf12111(?) payable {
    require calldata.size - 4 >= 96
    if sub_858bf5af[address(msg.sender)][Mask(96, 160, arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe4e6f7420656e6f756768204f525620746f6b656e7320696e206465706f73697420666f722074686973206f7065726174696f,
                    mem[215 len 13]
    sub_858bf5af[address(msg.sender)][Mask(96, 160, arg1)] -= arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e50726f626c656d207472616e7366657272696e67207061796d656e7420746f6b656e,
                    mem[199 len 29]
    emit 0x13de9d0e: arg3, msg.sender, Mask(96, 160, arg1), arg2
}



}
