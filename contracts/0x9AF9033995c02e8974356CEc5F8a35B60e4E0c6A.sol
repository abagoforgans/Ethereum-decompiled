contract main {




// =====================  Runtime code  =====================


address owner;
address liquidatorAddress;
address batAddress;
address daiAddress;
address sub_ccc07959Address;
address wethAddress;
address sub_0cdd44a7Address;

function sub_0cdd44a7(?) payable {
    return sub_0cdd44a7Address
}

function weth() payable {
    return wethAddress
}

function liquidator() payable {
    return liquidatorAddress
}

function owner() payable {
    return owner
}

function sub_ccc07959(?) payable {
    return sub_ccc07959Address
}

function dai() payable {
    return daiAddress
}

function bat() payable {
    return batAddress
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

function sub_34b753fd(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    liquidatorAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_65f8bdb7(?) payable {
    require calldata.size - 4 >= 96
    if arg1 == batAddress:
        require ext_code.size(batAddress)
        call batAddress.0xa9059cbb with:
             gas gas_remaining wei
            args liquidatorAddress, 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
    require ext_code.size(liquidatorAddress)
    call liquidatorAddress.0xe61604cf with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function liquidateBorrow(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg2 == batAddress:
        require ext_code.size(batAddress)
        call batAddress.0xa9059cbb with:
             gas gas_remaining wei
            args liquidatorAddress, 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
    require ext_code.size(liquidatorAddress)
    call liquidatorAddress.0xe61604cf with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function returnToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4641494c45445f4c49515549444154455f5452414e534645525f4f55545f4641494c45,
                            mem[200 len 28]
}

function sub_8d964b7c(?) payable {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args liquidatorAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x444641494c45445f4c49515549444154455f41535345545f414c4c4f57414e43455f4641494c45,
                    mem[203 len 25]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args liquidatorAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x444641494c45445f4c49515549444154455f41535345545f414c4c4f57414e43455f4641494c45,
                    mem[203 len 25]
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args liquidatorAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x444641494c45445f4c49515549444154455f41535345545f414c4c4f57414e43455f4641494c45,
                    mem[203 len 25]
    require ext_code.size(arg4)
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args liquidatorAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x444641494c45445f4c49515549444154455f41535345545f414c4c4f57414e43455f4641494c45,
                    mem[203 len 25]
    require ext_code.size(arg5)
    call arg5.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args liquidatorAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x444641494c45445f4c49515549444154455f41535345545f414c4c4f57414e43455f4641494c45,
                    mem[203 len 25]
}

function returnAllTokens() payable {
    require msg.sender == owner
    require ext_code.size(batAddress)
    staticcall batAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(batAddress)
        call batAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4641494c45445f4c49515549444154455f5452414e534645525f4f55545f4641494c45,
                            mem[200 len 28]
    require msg.sender == owner
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(daiAddress)
        call daiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4641494c45445f4c49515549444154455f5452414e534645525f4f55545f4641494c45,
                            mem[200 len 28]
    require msg.sender == owner
    require ext_code.size(sub_ccc07959Address)
    staticcall sub_ccc07959Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_ccc07959Address)
        call sub_ccc07959Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4641494c45445f4c49515549444154455f5452414e534645525f4f55545f4641494c45,
                            mem[200 len 28]
    require msg.sender == owner
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(wethAddress)
        call wethAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4641494c45445f4c49515549444154455f5452414e534645525f4f55545f4641494c45,
                            mem[200 len 28]
    require msg.sender == owner
    require ext_code.size(sub_0cdd44a7Address)
    staticcall sub_0cdd44a7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_0cdd44a7Address)
        call sub_0cdd44a7Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4641494c45445f4c49515549444154455f5452414e534645525f4f55545f4641494c45,
                            mem[200 len 28]
}



}
