contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
address tokenAddress;
uint256 totalUnreleasedTokens;
mapping of struct vestingMap;

function allocateAgents(address arg1) {
    return bool(stor2[arg1])
}

function vestingMap(address arg1) {
    return vestingMap[arg1].field_0, 
           vestingMap[arg1].field_256,
           vestingMap[arg1].field_512,
           vestingMap[arg1].field_768,
           vestingMap[arg1].field_1024,
           vestingMap[arg1].field_1280,
           bool(vestingMap[arg1].field_1536),
           bool(vestingMap[arg1].field_1544)
}

function owner() {
    return owner
}

function TokenAddress() {
    return tokenAddress
}

function newOwner() {
    return newOwner
}

function totalUnreleasedTokens() {
    return totalUnreleasedTokens
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setAllocateAgent(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)] = uint8(arg2)
    emit AllocateAgentChanged(arg2, arg1);
}

function isVestingSet(address arg1) {
    if vestingMap[address(arg1)].field_256:
        return not not vestingMap[address(arg1)].field_256
    return not not vestingMap[address(arg1)].field_768
}

function setVesting(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require stor2[address(msg.sender)]
    require arg2 + arg4 >= arg2
    require arg2 + arg4 > 0
    vestingMap[address(arg1)].field_0 = 424728 * 24 * 3600
    require arg5 + (424728 * 24 * 3600) >= 424728 * 24 * 3600
    vestingMap[address(arg1)].field_1024 = arg5 + (424728 * 24 * 3600)
    require arg3 + (424728 * 24 * 3600) >= 424728 * 24 * 3600
    vestingMap[address(arg1)].field_512 = arg3 + (424728 * 24 * 3600)
    require arg2 + arg4 >= arg2
    require totalUnreleasedTokens + arg2 + arg4 >= totalUnreleasedTokens
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= totalUnreleasedTokens + arg2 + arg4
    vestingMap[address(arg1)].field_256 = arg2
    vestingMap[address(arg1)].field_768 = arg4
    vestingMap[address(arg1)].field_1536 = 0
    vestingMap[address(arg1)].field_1544 = 0
    require totalUnreleasedTokens + arg2 + arg4 >= totalUnreleasedTokens
    totalUnreleasedTokens = totalUnreleasedTokens + arg2 + arg4
    vestingMap[address(arg1)].field_1280 = 0
}

function releaseVestedTokens(address arg1) {
    require vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768 >= vestingMap[address(arg1)].field_256
    require vestingMap[address(arg1)].field_1280 <= vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768
    require vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768 - vestingMap[address(arg1)].field_1280 > 0
    if block.timestamp < vestingMap[address(arg1)].field_512:
        require block.timestamp >= vestingMap[address(arg1)].field_1024
        require not vestingMap[address(arg1)].field_1544
        require vestingMap[address(arg1)].field_768 >= 0
        require vestingMap[address(arg1)].field_1280 + vestingMap[address(arg1)].field_768 >= vestingMap[address(arg1)].field_1280
        vestingMap[address(arg1)].field_1280 += vestingMap[address(arg1)].field_768
        vestingMap[address(arg1)].field_1544 = 1
        require vestingMap[address(arg1)].field_768 > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), vestingMap[address(arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require vestingMap[address(arg1)].field_768 <= totalUnreleasedTokens
        totalUnreleasedTokens -= vestingMap[address(arg1)].field_768
        emit VestedTokensReleased(vestingMap[address(arg1)].field_768, arg1);
    else:
        if vestingMap[address(arg1)].field_1536:
            require block.timestamp >= vestingMap[address(arg1)].field_1024
            require not vestingMap[address(arg1)].field_1544
            require vestingMap[address(arg1)].field_768 >= 0
            require vestingMap[address(arg1)].field_1280 + vestingMap[address(arg1)].field_768 >= vestingMap[address(arg1)].field_1280
            vestingMap[address(arg1)].field_1280 += vestingMap[address(arg1)].field_768
            vestingMap[address(arg1)].field_1544 = 1
            require vestingMap[address(arg1)].field_768 > 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), vestingMap[address(arg1)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require vestingMap[address(arg1)].field_768 <= totalUnreleasedTokens
            totalUnreleasedTokens -= vestingMap[address(arg1)].field_768
            emit VestedTokensReleased(vestingMap[address(arg1)].field_768, arg1);
        else:
            require vestingMap[address(arg1)].field_256 >= 0
            require vestingMap[address(arg1)].field_1280 + vestingMap[address(arg1)].field_256 >= vestingMap[address(arg1)].field_1280
            vestingMap[address(arg1)].field_1280 += vestingMap[address(arg1)].field_256
            vestingMap[address(arg1)].field_1536 = 1
            if block.timestamp < vestingMap[address(arg1)].field_1024:
                require vestingMap[address(arg1)].field_256 > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), vestingMap[address(arg1)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require vestingMap[address(arg1)].field_256 <= totalUnreleasedTokens
                totalUnreleasedTokens -= vestingMap[address(arg1)].field_256
                emit VestedTokensReleased(vestingMap[address(arg1)].field_256, arg1);
            else:
                if vestingMap[address(arg1)].field_1544:
                    require vestingMap[address(arg1)].field_256 > 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), vestingMap[address(arg1)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require vestingMap[address(arg1)].field_256 <= totalUnreleasedTokens
                    totalUnreleasedTokens -= vestingMap[address(arg1)].field_256
                    emit VestedTokensReleased(vestingMap[address(arg1)].field_256, arg1);
                else:
                    require vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768 >= vestingMap[address(arg1)].field_256
                    require vestingMap[address(arg1)].field_1280 + vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768 >= vestingMap[address(arg1)].field_1280
                    vestingMap[address(arg1)].field_1280 = vestingMap[address(arg1)].field_1280 + vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768
                    vestingMap[address(arg1)].field_1544 = 1
                    require vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768 > 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768 <= totalUnreleasedTokens
                    totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(arg1)].field_256 - vestingMap[address(arg1)].field_768
                    emit VestedTokensReleased((vestingMap[address(arg1)].field_256 + vestingMap[address(arg1)].field_768), arg1);
}

function releaseMyVestedTokens() {
    require vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768 >= vestingMap[address(msg.sender)].field_256
    require vestingMap[address(msg.sender)].field_1280 <= vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768
    require vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768 - vestingMap[address(msg.sender)].field_1280 > 0
    if block.timestamp < vestingMap[address(msg.sender)].field_512:
        require block.timestamp >= vestingMap[address(msg.sender)].field_1024
        require not vestingMap[address(msg.sender)].field_1544
        require vestingMap[address(msg.sender)].field_768 >= 0
        require vestingMap[address(msg.sender)].field_1280 + vestingMap[address(msg.sender)].field_768 >= vestingMap[address(msg.sender)].field_1280
        vestingMap[address(msg.sender)].field_1280 += vestingMap[address(msg.sender)].field_768
        vestingMap[address(msg.sender)].field_1544 = 1
        require vestingMap[address(msg.sender)].field_768 > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, vestingMap[address(msg.sender)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require vestingMap[address(msg.sender)].field_768 <= totalUnreleasedTokens
        totalUnreleasedTokens -= vestingMap[address(msg.sender)].field_768
        emit VestedTokensReleased(vestingMap[address(msg.sender)].field_768, msg.sender);
    else:
        if vestingMap[address(msg.sender)].field_1536:
            require block.timestamp >= vestingMap[address(msg.sender)].field_1024
            require not vestingMap[address(msg.sender)].field_1544
            require vestingMap[address(msg.sender)].field_768 >= 0
            require vestingMap[address(msg.sender)].field_1280 + vestingMap[address(msg.sender)].field_768 >= vestingMap[address(msg.sender)].field_1280
            vestingMap[address(msg.sender)].field_1280 += vestingMap[address(msg.sender)].field_768
            vestingMap[address(msg.sender)].field_1544 = 1
            require vestingMap[address(msg.sender)].field_768 > 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, vestingMap[address(msg.sender)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require vestingMap[address(msg.sender)].field_768 <= totalUnreleasedTokens
            totalUnreleasedTokens -= vestingMap[address(msg.sender)].field_768
            emit VestedTokensReleased(vestingMap[address(msg.sender)].field_768, msg.sender);
        else:
            require vestingMap[address(msg.sender)].field_256 >= 0
            require vestingMap[address(msg.sender)].field_1280 + vestingMap[address(msg.sender)].field_256 >= vestingMap[address(msg.sender)].field_1280
            vestingMap[address(msg.sender)].field_1280 += vestingMap[address(msg.sender)].field_256
            vestingMap[address(msg.sender)].field_1536 = 1
            if block.timestamp < vestingMap[address(msg.sender)].field_1024:
                require vestingMap[address(msg.sender)].field_256 > 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, vestingMap[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require vestingMap[address(msg.sender)].field_256 <= totalUnreleasedTokens
                totalUnreleasedTokens -= vestingMap[address(msg.sender)].field_256
                emit VestedTokensReleased(vestingMap[address(msg.sender)].field_256, msg.sender);
            else:
                if vestingMap[address(msg.sender)].field_1544:
                    require vestingMap[address(msg.sender)].field_256 > 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, vestingMap[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require vestingMap[address(msg.sender)].field_256 <= totalUnreleasedTokens
                    totalUnreleasedTokens -= vestingMap[address(msg.sender)].field_256
                    emit VestedTokensReleased(vestingMap[address(msg.sender)].field_256, msg.sender);
                else:
                    require vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768 >= vestingMap[address(msg.sender)].field_256
                    require vestingMap[address(msg.sender)].field_1280 + vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768 >= vestingMap[address(msg.sender)].field_1280
                    vestingMap[address(msg.sender)].field_1280 = vestingMap[address(msg.sender)].field_1280 + vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768
                    vestingMap[address(msg.sender)].field_1544 = 1
                    require vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768 > 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768 <= totalUnreleasedTokens
                    totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(msg.sender)].field_256 - vestingMap[address(msg.sender)].field_768
                    emit VestedTokensReleased((vestingMap[address(msg.sender)].field_256 + vestingMap[address(msg.sender)].field_768), msg.sender);
}



}
