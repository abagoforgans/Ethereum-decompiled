contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address sub_2b9a2746Address;
address sub_619f3d6cAddress;
address sub_cea290c2Address;
address sub_0d519ae3Address;
mapping of uint8 userCategory;
uint256 totalAllocated;

function sub_0d519ae3(?) {
    return sub_0d519ae3Address
}

function sub_2b9a2746(?) {
    return sub_2b9a2746Address
}

function totalAllocated() {
    return totalAllocated
}

function sub_619f3d6c(?) {
    return sub_619f3d6cAddress
}

function userCategory(address arg1) {
    require calldata.size - 4 >= 32
    require userCategory[arg1] <= 6
    return userCategory[arg1]
}

function owner() {
    return owner
}

function sub_cea290c2(?) {
    return sub_cea290c2Address
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimUnallocated(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initializeVesting(address arg1, uint256 arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require arg4 <= 6
    if not arg4:
        revert with 0, 'Not eligible for vesting'
    require userCategory[address(arg1)] <= 6
    require arg4 <= 6
    if userCategory[address(arg1)]:
        require userCategory[address(arg1)] <= 6
        if userCategory[address(arg1)] != arg4:
            revert with 0, 'cannot change user category'
    userCategory[address(arg1)] = arg4
    require totalAllocated + arg2 >= totalAllocated
    totalAllocated += arg2
    if arg4 == 1:
        require ext_code.size(sub_0d519ae3Address)
        call sub_0d519ae3Address.0x4460a2ca with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3, arg4
    else:
        if arg4 == 2:
            require ext_code.size(sub_0d519ae3Address)
            call sub_0d519ae3Address.0x4460a2ca with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3, arg4
        else:
            if arg4 == 3:
                require ext_code.size(sub_0d519ae3Address)
                call sub_0d519ae3Address.0x4460a2ca with:
                     gas gas_remaining wei
                    args 0, 0, arg2, arg3, arg4
            else:
                if arg4 == 4:
                    require ext_code.size(sub_619f3d6cAddress)
                    call sub_619f3d6cAddress.initializeVesting(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, arg3
                else:
                    if arg4 == 5:
                        require ext_code.size(sub_2b9a2746Address)
                        call sub_2b9a2746Address.initializeVesting(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, arg3
                    else:
                        if arg4 != 6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'incorrect category, not eligible for vesting'
                        require ext_code.size(sub_cea290c2Address)
                        call sub_cea290c2Address.initializeVesting(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimTokens() {
    require userCategory[address(msg.sender)] <= 6
    if userCategory[address(msg.sender)] == 1:
        require ext_code.size(sub_0d519ae3Address)
        call sub_0d519ae3Address.claimTokens(address arg1) with:
             gas gas_remaining wei
            args msg.sender
    else:
        if userCategory[address(msg.sender)] == 2:
            require ext_code.size(sub_0d519ae3Address)
            call sub_0d519ae3Address.claimTokens(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
        else:
            if userCategory[address(msg.sender)] == 3:
                require ext_code.size(sub_0d519ae3Address)
                call sub_0d519ae3Address.claimTokens(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
            else:
                if userCategory[address(msg.sender)] == 4:
                    require ext_code.size(sub_619f3d6cAddress)
                    call sub_619f3d6cAddress.claimTokens(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                else:
                    if userCategory[address(msg.sender)] == 5:
                        require ext_code.size(sub_2b9a2746Address)
                        call sub_2b9a2746Address.claimTokens(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                    else:
                        if userCategory[address(msg.sender)] != 6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'incorrect category, maybe unknown user'
                        require ext_code.size(sub_cea290c2Address)
                        call sub_cea290c2Address.claimTokens(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= totalAllocated
    totalAllocated -= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient balance in vesting contract'
    require userCategory[address(msg.sender)] <= 6
    emit 0xcbb1181b: msg.sender, ext_call.return_data[0], userCategory[address(msg.sender)]
}



}
