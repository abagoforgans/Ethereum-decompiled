contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor5;
mapping of uint256 released;
mapping of uint8 stor7;

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
    return bool(stor5)
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
    return bool(stor7[arg1])
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

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require start + duration >= start
    if block.timestamp >= start + duration:
        return (ext_call.return_data[0] + released[address(arg1)])
    if stor7[address(arg1)]:
        return (ext_call.return_data[0] + released[address(arg1)])
    require start <= block.timestamp
    if not ext_call.return_data[0] + released[address(arg1)]:
        if duration:
            return (0 / duration)
    else:
        if ext_call.return_data[0] + released[address(arg1)]:
            if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start:
                if duration:
                    return ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration)
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
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        if released[address(arg1)] <= 0:
            return -released[address(arg1)]
    else:
        if start + duration >= start:
            if block.timestamp >= start + duration:
                if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                    return ext_call.return_data[0]
            else:
                if stor7[address(arg1)]:
                    if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not ext_call.return_data[0] + released[address(arg1)]:
                            if duration:
                                if released[address(arg1)] <= 0 / duration:
                                    return ((0 / duration) - released[address(arg1)])
                        else:
                            if ext_call.return_data[0] + released[address(arg1)]:
                                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start:
                                    if duration:
                                        if released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration:
                                            return (((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)])
    revert
}

function revoke(address arg1) {
    require msg.sender == owner
    require stor5
    require not stor7[address(arg1)]
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
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] <= ext_call.return_data[0]
        stor7[address(arg1)] = 1
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] + released[address(arg1)]
    else:
        require start + duration >= start
        if block.timestamp >= start + duration:
            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
            require ext_call.return_data[0] <= ext_call.return_data[0]
            stor7[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
        else:
            if stor7[address(arg1)]:
                require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
                require ext_call.return_data[0] <= ext_call.return_data[0]
                stor7[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, 0
            else:
                require start <= block.timestamp
                if not ext_call.return_data[0] + released[address(arg1)]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require (0 / duration) - released[address(arg1)] <= ext_call.return_data[0]
                    stor7[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]
                else:
                    require ext_call.return_data[0] + released[address(arg1)]
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                    require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] <= ext_call.return_data[0]
                    stor7[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)]
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
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
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
        require start + duration >= start
        if block.timestamp >= start + duration:
            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
            require ext_call.return_data[0] > 0
            require released[address(arg1)] + ext_call.return_data[0] >= released[address(arg1)]
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
            if stor7[address(arg1)]:
                require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
                require ext_call.return_data[0] > 0
                require released[address(arg1)] + ext_call.return_data[0] >= released[address(arg1)]
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
                if not ext_call.return_data[0] + released[address(arg1)]:
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
                    require ext_call.return_data[0] + released[address(arg1)]
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                    require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] > 0
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration >= released[address(arg1)]
                    released[address(arg1)] = (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released((((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]));
}



}
