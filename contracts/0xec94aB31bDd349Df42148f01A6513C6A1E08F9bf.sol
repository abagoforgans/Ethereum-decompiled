contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor5;
address tokenAddress; offset 8
uint256 released;
uint8 revoked;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
}

function revoked() {
    return bool(revoked)
}

function revocable() {
    return bool(stor5)
}

function owner() {
    return owner
}

function released() {
    return released
}

function start() {
    return start
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
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

function vestedAmount() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require start + duration >= start
    if block.timestamp >= start + duration:
        return (ext_call.return_data[0] + released)
    if revoked:
        return (ext_call.return_data[0] + released)
    require start <= block.timestamp
    if not ext_call.return_data[0] + released:
        if duration:
            return (0 / duration)
    else:
        if ext_call.return_data[0] + released:
            if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / ext_call.return_data[0] + released == block.timestamp - start:
                if duration:
                    return ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration)
    revert
}

function releasableAmount() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released >= ext_call.return_data[0]
    if block.timestamp < cliff:
        if released <= 0:
            return -released
    else:
        if start + duration >= start:
            if block.timestamp >= start + duration:
                if released <= ext_call.return_data[0] + released:
                    return ext_call.return_data[0]
            else:
                if revoked:
                    if released <= ext_call.return_data[0] + released:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not ext_call.return_data[0] + released:
                            if duration:
                                if released <= 0 / duration:
                                    return ((0 / duration) - released)
                        else:
                            if ext_call.return_data[0] + released:
                                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / ext_call.return_data[0] + released == block.timestamp - start:
                                    if duration:
                                        if released <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration:
                                            return (((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration) - released)
    revert
}

function revoke() {
    require msg.sender == owner
    require stor5
    require not revoked
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released <= 0
        require -released <= ext_call.return_data[0]
        revoked = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] + released
    else:
        require start + duration >= start
        if block.timestamp >= start + duration:
            require released <= ext_call.return_data[0] + released
            require ext_call.return_data[0] <= ext_call.return_data[0]
            revoked = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
        else:
            if revoked:
                require released <= ext_call.return_data[0] + released
                require ext_call.return_data[0] <= ext_call.return_data[0]
                revoked = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, 0
            else:
                require start <= block.timestamp
                if not ext_call.return_data[0] + released:
                    require duration
                    require released <= 0 / duration
                    require (0 / duration) - released <= ext_call.return_data[0]
                    revoked = 1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - (0 / duration) + released
                else:
                    require ext_call.return_data[0] + released
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / ext_call.return_data[0] + released == block.timestamp - start
                    require duration
                    require released <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration
                    require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration) - released <= ext_call.return_data[0]
                    revoked = 1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration) + released
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Revoked()
}

function release() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released <= 0
        require -released > 0
        require 0 >= released
        released = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, -released
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Released(-released);
    else:
        require start + duration >= start
        if block.timestamp >= start + duration:
            require released <= ext_call.return_data[0] + released
            require ext_call.return_data[0] > 0
            require released + ext_call.return_data[0] >= released
            released += ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Released(ext_call.return_data[0]);
        else:
            if revoked:
                require released <= ext_call.return_data[0] + released
                require ext_call.return_data[0] > 0
                require released + ext_call.return_data[0] >= released
                released += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Released(ext_call.return_data[0]);
            else:
                require start <= block.timestamp
                if not ext_call.return_data[0] + released:
                    require duration
                    require released <= 0 / duration
                    require (0 / duration) - released > 0
                    require 0 / duration >= released
                    released = 0 / duration
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, (0 / duration) - released
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Released(((0 / duration) - released));
                else:
                    require ext_call.return_data[0] + released
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / ext_call.return_data[0] + released == block.timestamp - start
                    require duration
                    require released <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration
                    require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration) - released > 0
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration >= released
                    released = (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration) - released
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Released((((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released) - (start * released) / duration) - released));
}



}
