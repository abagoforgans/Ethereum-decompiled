contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
address adminAddress;
address backupAddress;
address stor4;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor8;
mapping of uint256 released;
mapping of uint8 stor10;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
}

function backup() {
    return backupAddress
}

function revocable() {
    return bool(stor8)
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

function admin() {
    return adminAddress
}

function revoked(address arg1) {
    return bool(stor10[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1d77f49b(?) {
    require msg.sender == adminAddress
    require stor4
    require stor4 == arg1
    beneficiaryAddress = stor4
    stor4 = 0
}

function sub_d369611d(?) {
    require msg.sender == beneficiaryAddress
    require arg1
    require backupAddress != arg1
    require beneficiaryAddress != arg1
    backupAddress = arg1
}

function updateBeneficiary(address arg1) {
    require msg.sender == backupAddress
    require arg1
    require beneficiaryAddress != arg1
    require backupAddress != arg1
    stor4 = arg1
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
    if stor10[address(arg1)]:
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
                if stor10[address(arg1)]:
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
    require stor8
    require not stor10[address(arg1)]
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
        stor10[address(arg1)] = 1
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] + released[address(arg1)]
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
            require ext_call.return_data[0] <= ext_call.return_data[0]
            stor10[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
        else:
            if stor10[address(arg1)]:
                require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                require ext_call.return_data[0] <= ext_call.return_data[0]
                stor10[address(arg1)] = 1
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
                    stor10[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]
                else:
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] <= ext_call.return_data[0]
                    stor10[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) + released[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        require 0 >= -released[address(arg1)]
        released[address(arg1)] = 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, -released[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Released(-released[address(arg1)]);
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
            require ext_call.return_data[0] > 0
            require released[address(arg1)] >= 0
            released[address(arg1)] += ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Released(ext_call.return_data[0]);
        else:
            if stor10[address(arg1)]:
                require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                require ext_call.return_data[0] > 0
                require released[address(arg1)] >= 0
                released[address(arg1)] += ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Released(ext_call.return_data[0]);
            else:
                require start <= block.timestamp
                if not released[address(arg1)] + ext_call.return_data[0]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require (0 / duration) - released[address(arg1)] > 0
                    require released[address(arg1)] >= 0
                    released[address(arg1)] = 0 / duration
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, (0 / duration) - released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Released(((0 / duration) - released[address(arg1)]));
                else:
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] > 0
                    require released[address(arg1)] >= 0
                    released[address(arg1)] = (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Released((((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]));
}



}
