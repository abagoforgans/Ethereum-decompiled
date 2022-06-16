contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address vesterAddress;
mapping of struct grants;
uint256 totalVesting;

function totalVesting() {
    return totalVesting
}

function owner() {
    return owner
}

function grants(address arg1) {
    return grants[arg1].field_0, 
           grants[arg1].field_256,
           grants[arg1].field_512,
           grants[arg1].field_768,
           grants[arg1].field_1024,
           grants[arg1].field_1280,
           bool(grants[arg1].field_1536)
}

function vester() {
    return vesterAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferVester(address arg1) {
    require owner == msg.sender
    require arg1
    emit VesterTransferred(vesterAddress, arg1);
    vesterAddress = arg1
    return 1
}

function grant(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7) {
    require vesterAddress == msg.sender
    require arg1
    require arg1 != this.address
    require arg2 > 0
    require not grants[address(arg1)].field_0
    require arg3 <= arg4
    require arg4 <= arg5
    require arg6 > 0
    require arg3 <= arg5
    require arg6 <= arg5 - arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + totalVesting >= totalVesting
    require arg2 + totalVesting <= ext_call.return_data[0]
    grants[address(arg1)].field_0 = arg2
    grants[address(arg1)].field_256 = arg3
    grants[address(arg1)].field_512 = arg4
    grants[address(arg1)].field_768 = arg5
    grants[address(arg1)].field_1024 = arg6
    grants[address(arg1)].field_1280 = 0
    grants[address(arg1)].field_1536 = uint8(arg7)
    require arg2 + totalVesting >= totalVesting
    totalVesting += arg2
    emit NewGrant(arg2, msg.sender, arg1);
}

function vestedTokens(address arg1, uint256 arg2) {
    if not grants[address(arg1)].field_0:
        return 0
    if arg2 < grants[address(arg1)].field_512:
        return 0
    if arg2 >= grants[address(arg1)].field_768:
        return grants[address(arg1)].field_0
    require grants[address(arg1)].field_256 <= arg2
    require grants[address(arg1)].field_1024
    require grants[address(arg1)].field_256 <= grants[address(arg1)].field_768
    if not arg2 - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024:
        if not grants[address(arg1)].field_0:
            if grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                return (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
        else:
            if not 0 / grants[address(arg1)].field_0:
                if grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                    return (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
    else:
        if grants[address(arg1)].field_1024 * arg2 - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 / arg2 - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 == grants[address(arg1)].field_1024:
            if not grants[address(arg1)].field_0:
                if grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                    return (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
            else:
                if grants[address(arg1)].field_1024 * arg2 - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_0 == grants[address(arg1)].field_1024 * arg2 - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024:
                    if grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                        return (grants[address(arg1)].field_1024 * arg2 - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
    revert
}

function unlockVestedTokens(address arg1) {
    require grants[address(arg1)].field_1280 <= grants[address(arg1)].field_0
    require grants[address(arg1)].field_0 - grants[address(arg1)].field_1280 > 0
    if block.timestamp >= grants[address(arg1)].field_512:
        if block.timestamp >= grants[address(arg1)].field_768:
            if grants[address(arg1)].field_0:
                require grants[address(arg1)].field_1280 <= grants[address(arg1)].field_0
                if grants[address(arg1)].field_0 - grants[address(arg1)].field_1280:
                    require grants[address(arg1)].field_0 >= grants[address(arg1)].field_1280
                    grants[address(arg1)].field_1280 = grants[address(arg1)].field_0
                    require grants[address(arg1)].field_0 - grants[address(arg1)].field_1280 <= totalVesting
                    totalVesting = totalVesting - grants[address(arg1)].field_0 + grants[address(arg1)].field_1280
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), grants[address(arg1)].field_0 - grants[address(arg1)].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokensUnlocked((grants[address(arg1)].field_0 - grants[address(arg1)].field_1280), arg1);
        else:
            require grants[address(arg1)].field_256 <= block.timestamp
            require grants[address(arg1)].field_1024
            require grants[address(arg1)].field_256 <= grants[address(arg1)].field_768
            if not block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024:
                if grants[address(arg1)].field_0:
                    require not 0 / grants[address(arg1)].field_0
                require grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                if 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                    require grants[address(arg1)].field_1280 <= 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                    if (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280:
                        require 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256 >= grants[address(arg1)].field_1280
                        grants[address(arg1)].field_1280 = 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                        require (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280 <= totalVesting
                        totalVesting = totalVesting - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) + grants[address(arg1)].field_1280
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokensUnlocked(((0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280), arg1);
            else:
                require grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 / block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 == grants[address(arg1)].field_1024
                if not grants[address(arg1)].field_0:
                    require grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                    if 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                        require grants[address(arg1)].field_1280 <= 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                        if (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280:
                            require 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256 >= grants[address(arg1)].field_1280
                            grants[address(arg1)].field_1280 = 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                            require (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280 <= totalVesting
                            totalVesting = totalVesting - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) + grants[address(arg1)].field_1280
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokensUnlocked(((0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280), arg1);
                else:
                    require grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_0 == grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024
                    require grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                    if grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                        require grants[address(arg1)].field_1280 <= grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                        if (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280:
                            require grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256 >= grants[address(arg1)].field_1280
                            grants[address(arg1)].field_1280 = grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                            require (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280 <= totalVesting
                            totalVesting = totalVesting - (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) + grants[address(arg1)].field_1280
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokensUnlocked(((grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280), arg1);
}

function revoke(address arg1) {
    require vesterAddress == msg.sender
    require grants[address(arg1)].field_1536
    if block.timestamp < grants[address(arg1)].field_512:
        require 0 <= grants[address(arg1)].field_0
        require grants[address(arg1)].field_1280 <= 0
        grants[address(arg1)].field_0 = 0
        grants[address(arg1)].field_256 = 0
        grants[address(arg1)].field_512 = 0
        grants[address(arg1)].field_768 = 0
        grants[address(arg1)].field_1024 = 0
        grants[address(arg1)].field_1280 = 0
        grants[address(arg1)].field_1536 = 0
        require -grants[address(arg1)].field_1280 <= totalVesting
        totalVesting += grants[address(arg1)].field_1280
        require grants[address(arg1)].field_0 <= totalVesting + grants[address(arg1)].field_1280
        totalVesting = totalVesting + grants[address(arg1)].field_1280 - grants[address(arg1)].field_0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), -grants[address(arg1)].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args vesterAddress, grants[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit GrantRevoked(grants[address(arg1)].field_0, arg1);
    else:
        if block.timestamp >= grants[address(arg1)].field_768:
            require grants[address(arg1)].field_0 <= grants[address(arg1)].field_0
            require grants[address(arg1)].field_1280 <= grants[address(arg1)].field_0
            grants[address(arg1)].field_0 = 0
            grants[address(arg1)].field_256 = 0
            grants[address(arg1)].field_512 = 0
            grants[address(arg1)].field_768 = 0
            grants[address(arg1)].field_1024 = 0
            grants[address(arg1)].field_1280 = 0
            grants[address(arg1)].field_1536 = 0
            require grants[address(arg1)].field_0 - grants[address(arg1)].field_1280 <= totalVesting
            totalVesting = totalVesting - grants[address(arg1)].field_0 + grants[address(arg1)].field_1280
            require grants[address(arg1)].field_0 <= totalVesting + grants[address(arg1)].field_1280
            totalVesting = totalVesting + grants[address(arg1)].field_1280 - grants[address(arg1)].field_0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), grants[address(arg1)].field_0 - grants[address(arg1)].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vesterAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit GrantRevoked(0, arg1);
        else:
            require grants[address(arg1)].field_256 <= block.timestamp
            require grants[address(arg1)].field_1024
            require grants[address(arg1)].field_256 <= grants[address(arg1)].field_768
            if not block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024:
                if grants[address(arg1)].field_0:
                    require not 0 / grants[address(arg1)].field_0
                require grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                require 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256 <= grants[address(arg1)].field_0
                require grants[address(arg1)].field_1280 <= 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                grants[address(arg1)].field_0 = 0
                grants[address(arg1)].field_256 = 0
                grants[address(arg1)].field_512 = 0
                grants[address(arg1)].field_768 = 0
                grants[address(arg1)].field_1024 = 0
                grants[address(arg1)].field_1280 = 0
                grants[address(arg1)].field_1536 = 0
                require (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280 <= totalVesting
                totalVesting = totalVesting - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) + grants[address(arg1)].field_1280
                require grants[address(arg1)].field_0 <= totalVesting + grants[address(arg1)].field_1280
                totalVesting = totalVesting + grants[address(arg1)].field_1280 - grants[address(arg1)].field_0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args vesterAddress, grants[address(arg1)].field_0 - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit GrantRevoked((grants[address(arg1)].field_0 - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)), arg1);
            else:
                require grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 / block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 == grants[address(arg1)].field_1024
                if not grants[address(arg1)].field_0:
                    require grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                    require 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256 <= grants[address(arg1)].field_0
                    require grants[address(arg1)].field_1280 <= 0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                    grants[address(arg1)].field_0 = 0
                    grants[address(arg1)].field_256 = 0
                    grants[address(arg1)].field_512 = 0
                    grants[address(arg1)].field_768 = 0
                    grants[address(arg1)].field_1024 = 0
                    grants[address(arg1)].field_1280 = 0
                    grants[address(arg1)].field_1536 = 0
                    require (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280 <= totalVesting
                    totalVesting = totalVesting - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) + grants[address(arg1)].field_1280
                    require grants[address(arg1)].field_0 <= totalVesting + grants[address(arg1)].field_1280
                    totalVesting = totalVesting + grants[address(arg1)].field_1280 - grants[address(arg1)].field_0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args vesterAddress, grants[address(arg1)].field_0 - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit GrantRevoked((grants[address(arg1)].field_0 - (0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)), arg1);
                else:
                    require grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_0 == grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024
                    require grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                    require grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256 <= grants[address(arg1)].field_0
                    require grants[address(arg1)].field_1280 <= grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256
                    grants[address(arg1)].field_0 = 0
                    grants[address(arg1)].field_256 = 0
                    grants[address(arg1)].field_512 = 0
                    grants[address(arg1)].field_768 = 0
                    grants[address(arg1)].field_1024 = 0
                    grants[address(arg1)].field_1280 = 0
                    grants[address(arg1)].field_1536 = 0
                    require (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280 <= totalVesting
                    totalVesting = totalVesting - (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) + grants[address(arg1)].field_1280
                    require grants[address(arg1)].field_0 <= totalVesting + grants[address(arg1)].field_1280
                    totalVesting = totalVesting + grants[address(arg1)].field_1280 - grants[address(arg1)].field_0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256) - grants[address(arg1)].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args vesterAddress, grants[address(arg1)].field_0 - (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit GrantRevoked((grants[address(arg1)].field_0 - (grants[address(arg1)].field_1024 * block.timestamp - grants[address(arg1)].field_256 / grants[address(arg1)].field_1024 * grants[address(arg1)].field_0 / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)), arg1);
}



}
