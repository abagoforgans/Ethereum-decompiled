contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint256 stor5;
uint8 stor6;
mapping of uint256 released;
mapping of uint8 stor8;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
}

function revocable() {
    return bool(stor6)
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[address(arg1)]
}

function start() {
    return start
}

function revoked(address arg1) {
    return bool(stor8[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
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

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
        if block.timestamp >= cliff:
            if duration:
                require stor5 * duration / duration == stor5
                require (stor5 * duration) + start >= start
                if block.timestamp >= (stor5 * duration) + start:
                    return (released[address(arg1)] + ext_call.return_data[0])
                else:
                    if not stor8[address(arg1)]:
                        if duration:
                            require stor5 * duration / duration == stor5
                            require start <= block.timestamp
                            if released[address(arg1)] + ext_call.return_data[0]:
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                require stor5 * duration > 0
                                require stor5 * duration
                                return ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration)
                            else:
                                require stor5 * duration > 0
                                require stor5 * duration
                                return (0 / stor5 * duration)
                        else:
                            require start <= block.timestamp
                            require released[address(arg1)] + ext_call.return_data[0]
                            require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                            revert
                    else:
                        return (released[address(arg1)] + ext_call.return_data[0])
            else:
                require start >= start
                if block.timestamp >= start:
                    return (released[address(arg1)] + ext_call.return_data[0])
                else:
                    if not stor8[address(arg1)]:
                        if duration:
                            require stor5 * duration / duration == stor5
                            require start <= block.timestamp
                            if released[address(arg1)] + ext_call.return_data[0]:
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                require stor5 * duration > 0
                                require stor5 * duration
                                return ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration)
                            else:
                                require stor5 * duration > 0
                                require stor5 * duration
                                return (0 / stor5 * duration)
                        else:
                            require start <= block.timestamp
                            require released[address(arg1)] + ext_call.return_data[0]
                            require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                            revert
                    else:
                        return (released[address(arg1)] + ext_call.return_data[0])
        else:
            return 0
}

function releasableAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
        if block.timestamp >= cliff:
            if duration:
                require stor5 * duration / duration == stor5
                require (stor5 * duration) + start >= start
                if block.timestamp >= (stor5 * duration) + start:
                    require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                    return ext_call.return_data[0]
                else:
                    if not stor8[address(arg1)]:
                        if duration:
                            require stor5 * duration / duration == stor5
                            require start <= block.timestamp
                            if released[address(arg1)] + ext_call.return_data[0]:
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                return (((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)])
                            else:
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= 0 / stor5 * duration
                                return ((0 / stor5 * duration) - released[address(arg1)])
                        else:
                            require start <= block.timestamp
                            require released[address(arg1)] + ext_call.return_data[0]
                            require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                            revert
                    else:
                        require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                        return ext_call.return_data[0]
            else:
                require start >= start
                if block.timestamp >= start:
                    require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                    return ext_call.return_data[0]
                else:
                    if not stor8[address(arg1)]:
                        if duration:
                            require stor5 * duration / duration == stor5
                            require start <= block.timestamp
                            if released[address(arg1)] + ext_call.return_data[0]:
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                return (((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)])
                            else:
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= 0 / stor5 * duration
                                return ((0 / stor5 * duration) - released[address(arg1)])
                        else:
                            require start <= block.timestamp
                            require released[address(arg1)] + ext_call.return_data[0]
                            require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                            revert
                    else:
                        require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                        return ext_call.return_data[0]
        else:
            require released[address(arg1)] <= 0
            return -released[address(arg1)]
}

function revoke(address arg1) {
    require msg.sender == owner
    require stor6
    require not stor8[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
            if block.timestamp >= cliff:
                if duration:
                    require stor5 * duration / duration == stor5
                    require (stor5 * duration) + start >= start
                    if block.timestamp >= (stor5 * duration) + start:
                        require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        stor8[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit Revoked()
                    else:
                        if not stor8[address(arg1)]:
                            if duration:
                                require stor5 * duration / duration == stor5
                                require start <= block.timestamp
                                if released[address(arg1)] + ext_call.return_data[0]:
                                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                    require stor5 * duration > 0
                                    require stor5 * duration
                                    require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                    require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)] <= ext_call.return_data[0]
                                    stor8[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) + released[address(arg1)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Revoked()
                                else:
                                    require stor5 * duration > 0
                                    require stor5 * duration
                                    require released[address(arg1)] <= 0 / stor5 * duration
                                    require (0 / stor5 * duration) - released[address(arg1)] <= ext_call.return_data[0]
                                    stor8[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor5 * duration) + released[address(arg1)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Revoked()
                            else:
                                require start <= block.timestamp
                                require released[address(arg1)] + ext_call.return_data[0]
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                                revert
                        else:
                            require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            stor8[address(arg1)] = 1
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Revoked()
                else:
                    require start >= start
                    if block.timestamp >= start:
                        require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                        require ext_call.return_data[0] <= ext_call.return_data[0]
                        stor8[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit Revoked()
                    else:
                        if not stor8[address(arg1)]:
                            if duration:
                                require stor5 * duration / duration == stor5
                                require start <= block.timestamp
                                if released[address(arg1)] + ext_call.return_data[0]:
                                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                    require stor5 * duration > 0
                                    require stor5 * duration
                                    require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                    require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)] <= ext_call.return_data[0]
                                    stor8[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) + released[address(arg1)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Revoked()
                                else:
                                    require stor5 * duration > 0
                                    require stor5 * duration
                                    require released[address(arg1)] <= 0 / stor5 * duration
                                    require (0 / stor5 * duration) - released[address(arg1)] <= ext_call.return_data[0]
                                    stor8[address(arg1)] = 1
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, ext_call.return_data[0] - (0 / stor5 * duration) + released[address(arg1)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit Revoked()
                            else:
                                require start <= block.timestamp
                                require released[address(arg1)] + ext_call.return_data[0]
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                                revert
                        else:
                            require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                            require ext_call.return_data[0] <= ext_call.return_data[0]
                            stor8[address(arg1)] = 1
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit Revoked()
            else:
                require released[address(arg1)] <= 0
                require -released[address(arg1)] <= ext_call.return_data[0]
                stor8[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0] + released[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Revoked()
}

function release(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
        if block.timestamp >= cliff:
            if duration:
                require stor5 * duration / duration == stor5
                require (stor5 * duration) + start >= start
                if block.timestamp >= (stor5 * duration) + start:
                    require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                    released[address(arg1)] += ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(ext_call.return_data[0]);
                else:
                    if not stor8[address(arg1)]:
                        if duration:
                            require stor5 * duration / duration == stor5
                            require start <= block.timestamp
                            if released[address(arg1)] + ext_call.return_data[0]:
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)] > 0
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration >= released[address(arg1)]
                                released[address(arg1)] = (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)]));
                            else:
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= 0 / stor5 * duration
                                require (0 / stor5 * duration) - released[address(arg1)] > 0
                                require 0 / stor5 * duration >= released[address(arg1)]
                                released[address(arg1)] = 0 / stor5 * duration
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, (0 / stor5 * duration) - released[address(arg1)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(((0 / stor5 * duration) - released[address(arg1)]));
                        else:
                            require start <= block.timestamp
                            require released[address(arg1)] + ext_call.return_data[0]
                            require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                            revert
                    else:
                        require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                        released[address(arg1)] += ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit Released(ext_call.return_data[0]);
            else:
                require start >= start
                if block.timestamp >= start:
                    require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                    released[address(arg1)] += ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit Released(ext_call.return_data[0]);
                else:
                    if not stor8[address(arg1)]:
                        if duration:
                            require stor5 * duration / duration == stor5
                            require start <= block.timestamp
                            if released[address(arg1)] + ext_call.return_data[0]:
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)] > 0
                                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration >= released[address(arg1)]
                                released[address(arg1)] = (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released((((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / stor5 * duration) - released[address(arg1)]));
                            else:
                                require stor5 * duration > 0
                                require stor5 * duration
                                require released[address(arg1)] <= 0 / stor5 * duration
                                require (0 / stor5 * duration) - released[address(arg1)] > 0
                                require 0 / stor5 * duration >= released[address(arg1)]
                                released[address(arg1)] = 0 / stor5 * duration
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args beneficiaryAddress, (0 / stor5 * duration) - released[address(arg1)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit Released(((0 / stor5 * duration) - released[address(arg1)]));
                        else:
                            require start <= block.timestamp
                            require released[address(arg1)] + ext_call.return_data[0]
                            require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start
                            revert
                    else:
                        require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                        released[address(arg1)] += ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args beneficiaryAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit Released(ext_call.return_data[0]);
        else:
            require released[address(arg1)] <= 0
            require -released[address(arg1)] > 0
            require 0 >= released[address(arg1)]
            released[address(arg1)] = 0
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, -released[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Released(-released[address(arg1)]);
}



}
