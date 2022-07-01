contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;

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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b29425a9(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.sender == owner
    mem[1735 len arg4.length] = arg4[all]
    mem[arg4.length + 1735] = 0
    create contract with 0 wei
                    code: code.data[1516 len 1479], tokenAddress, address(arg1), arg2, 128, arg4.length, arg4[all], mem[arg4.length + 1735 len ceil32(arg4.length) - arg4.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfd08eef4: arg2, arg3, address(create.new_address), arg1
    if arg3:
        require ext_code.size(tokenAddress)
        mem[196 len 64] = unknown_0xa9059cbb(?????), address(create.new_address) << 64, 0, Mask(224, 32, arg3) >> 32
        call tokenAddress with:
           funct code.data[1616 len 4]
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, code.data[1680 len 4]
        if not return_data.size:
            require ext_call.success
            require unknown_0xa9059cbb(?????), address(create.new_address) << 64
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size:
                require return_data.size >= 32
                require mem[228]
}



}
