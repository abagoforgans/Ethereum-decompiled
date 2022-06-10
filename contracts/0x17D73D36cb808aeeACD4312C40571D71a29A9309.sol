contract main {




// =====================  Runtime code  =====================


address owner;
address ownerCandidate;
address beneficiaryAddress;
uint256 start;
uint256 cliff;
uint256 duration;
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

function ownerCandidate() {
    return ownerCandidate
}

function revocable() {
    return bool(stor6)
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function start() {
    return start
}

function revoked(address arg1) {
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    require msg.sender == ownerCandidate
    emit OwnershipTransferred(owner, ownerCandidate);
    owner = ownerCandidate
    ownerCandidate = 0
}

function proposeOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require owner != arg1
    ownerCandidate = arg1
    emit OwnershipProposed(owner, arg1);
}

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require duration + start >= start
    if block.timestamp >= duration + start:
        return (released[address(arg1)] + ext_call.return_data[0])
    if stor8[address(arg1)]:
        return (released[address(arg1)] + ext_call.return_data[0])
    require start <= block.timestamp
    if not released[address(arg1)] + ext_call.return_data[0]:
        if duration:
            return (0 / duration)
    else:
        if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start:
            if duration:
                return ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration)
    revert
}

function releasableAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        if released[address(arg1)] <= 0:
            return -released[address(arg1)]
    else:
        if duration + start >= start:
            if block.timestamp >= duration + start:
                if released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]:
                    return ext_call.return_data[0]
            else:
                if stor8[address(arg1)]:
                    if released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not released[address(arg1)] + ext_call.return_data[0]:
                            if duration:
                                if released[address(arg1)] <= 0 / duration:
                                    return ((0 / duration) - released[address(arg1)])
                        else:
                            if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start:
                                if duration:
                                    if released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration:
                                        return (((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)])
    revert
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
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] <= ext_call.return_data[0]
        stor8[address(arg1)] = 1
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] + released[address(arg1)]
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
            require ext_call.return_data[0] <= ext_call.return_data[0]
            stor8[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
        else:
            if stor8[address(arg1)]:
                require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                require ext_call.return_data[0] <= ext_call.return_data[0]
                stor8[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, 0
            else:
                require start <= block.timestamp
                if not released[address(arg1)] + ext_call.return_data[0]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require (0 / duration) - released[address(arg1)] <= ext_call.return_data[0]
                    stor8[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]
                else:
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] <= ext_call.return_data[0]
                    stor8[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) + released[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require return_data.size >= 32
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
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
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit Released(-released[address(arg1)]);
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
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
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit Released(ext_call.return_data[0]);
        else:
            if stor8[address(arg1)]:
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
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Released(ext_call.return_data[0]);
            else:
                require start <= block.timestamp
                if not released[address(arg1)] + ext_call.return_data[0]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require (0 / duration) - released[address(arg1)] > 0
                    require 0 / duration >= released[address(arg1)]
                    released[address(arg1)] = 0 / duration
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, (0 / duration) - released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released(((0 / duration) - released[address(arg1)]));
                else:
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] > 0
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration >= released[address(arg1)]
                    released[address(arg1)] = (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released((((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]));
}



}
