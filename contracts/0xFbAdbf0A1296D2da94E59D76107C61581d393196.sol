contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 2749]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalVesting;
mapping of uint256 released;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 durations;
mapping of uint256 starts;
mapping of uint256 cliffs;
mapping of uint256 amounts;
mapping of struct refunded;

function amounts(address arg1) {
    return amounts[arg1]
}

function totalVesting() {
    return totalVesting
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function durations(address arg1) {
    return durations[arg1]
}

function starts(address arg1) {
    return starts[arg1]
}

function revocables(address arg1) {
    return bool(stor4[arg1])
}

function refunded(address arg1) {
    return refunded[arg1].field_0
}

function cliffs(address arg1) {
    return cliffs[arg1]
}

function revoked(address arg1) {
    return bool(stor3[arg1])
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

function addVesting(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7) {
    require owner == msg.sender
    require arg2
    require arg6 > 0
    require not starts[address(arg2)]
    require arg4 <= arg5
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg6 + totalVesting >= totalVesting
    require arg6 + totalVesting <= ext_call.return_data[0]
    stor4[address(arg2)] = uint8(arg7)
    durations[address(arg2)] = arg5
    require arg4 + arg3 >= arg3
    cliffs[address(arg2)] = arg4 + arg3
    starts[address(arg2)] = arg3
    amounts[address(arg2)] = arg6
    require arg6 + totalVesting >= totalVesting
    totalVesting += arg6
}

function vestedAmount(address arg1) {
    require refunded[address(arg1)].field_0 <= amounts[address(arg1)]
    if block.timestamp < cliffs[address(arg1)]:
        return 0
    if block.timestamp >= starts[address(arg1)] + durations[address(arg1)]:
        return (amounts[address(arg1)] - refunded[address(arg1)].field_0)
    if stor3[address(arg1)]:
        return (amounts[address(arg1)] - refunded[address(arg1)].field_0)
    if not amounts[address(arg1)] - refunded[address(arg1)].field_0:
        if durations[address(arg1)]:
            return ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)])
    else:
        if amounts[address(arg1)] - refunded[address(arg1)].field_0:
            if (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / amounts[address(arg1)] - refunded[address(arg1)].field_0 == block.timestamp - starts[address(arg1)]:
                if durations[address(arg1)]:
                    return ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)])
    revert
}

function releasableAmount(address arg1) {
    require refunded[address(arg1)].field_0 <= amounts[address(arg1)]
    if block.timestamp < cliffs[address(arg1)]:
        if released[address(arg1)] <= 0:
            return -released[address(arg1)]
    else:
        if block.timestamp >= starts[address(arg1)] + durations[address(arg1)]:
            if released[address(arg1)] <= amounts[address(arg1)] - refunded[address(arg1)].field_0:
                return (amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)])
        else:
            if stor3[address(arg1)]:
                if released[address(arg1)] <= amounts[address(arg1)] - refunded[address(arg1)].field_0:
                    return (amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)])
            else:
                if not amounts[address(arg1)] - refunded[address(arg1)].field_0:
                    if durations[address(arg1)]:
                        if released[address(arg1)] <= (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]:
                            return (((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]) - released[address(arg1)])
                else:
                    if amounts[address(arg1)] - refunded[address(arg1)].field_0:
                        if (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / amounts[address(arg1)] - refunded[address(arg1)].field_0 == block.timestamp - starts[address(arg1)]:
                            if durations[address(arg1)]:
                                if released[address(arg1)] <= (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]:
                                    return (((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]) - released[address(arg1)])
    revert
}

function release(address arg1, address arg2) {
    if arg1 != msg.sender:
        require owner == msg.sender
    require refunded[address(arg1)].field_0 <= amounts[address(arg1)]
    if block.timestamp < cliffs[address(arg1)]:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] > 0
        require 0 >= released[address(arg1)]
        released[address(arg1)] = 0
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), -released[address(arg1)]
        require ext_call.success
        require ext_call.return_data[0]
        emit Released(address(arg1), -released[address(arg1)]);
    else:
        if block.timestamp >= starts[address(arg1)] + durations[address(arg1)]:
            require released[address(arg1)] <= amounts[address(arg1)] - refunded[address(arg1)].field_0
            require amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)] > 0
            require amounts[address(arg1)] - refunded[address(arg1)].field_0 >= released[address(arg1)]
            released[address(arg1)] = amounts[address(arg1)] - refunded[address(arg1)].field_0
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)]
            require ext_call.success
            require ext_call.return_data[0]
            emit Released(address(arg1), amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)]);
        else:
            if stor3[address(arg1)]:
                require released[address(arg1)] <= amounts[address(arg1)] - refunded[address(arg1)].field_0
                require amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)] > 0
                require amounts[address(arg1)] - refunded[address(arg1)].field_0 >= released[address(arg1)]
                released[address(arg1)] = amounts[address(arg1)] - refunded[address(arg1)].field_0
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)]
                require ext_call.success
                require ext_call.return_data[0]
                emit Released(address(arg1), amounts[address(arg1)] - refunded[address(arg1)].field_0 - released[address(arg1)]);
            else:
                if amounts[address(arg1)] - refunded[address(arg1)].field_0:
                    require amounts[address(arg1)] - refunded[address(arg1)].field_0
                    require (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / amounts[address(arg1)] - refunded[address(arg1)].field_0 == block.timestamp - starts[address(arg1)]
                require durations[address(arg1)]
                require released[address(arg1)] <= (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]
                require ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]) - released[address(arg1)] > 0
                require (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)] >= released[address(arg1)]
                released[address(arg1)] = (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]) - released[address(arg1)]
                require ext_call.success
                require ext_call.return_data[0]
                emit Released(address(arg1), ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]) - released[address(arg1)]);
}

function revoke(address arg1, address arg2) {
    require owner == msg.sender
    require stor4[address(arg1)]
    require not stor3[address(arg1)]
    require released[address(arg1)] <= amounts[address(arg1)]
    require refunded[address(arg1)].field_0 <= amounts[address(arg1)]
    if block.timestamp < cliffs[address(arg1)]:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] <= amounts[address(arg1)] - released[address(arg1)]
        stor3[address(arg1)] = 1
        if amounts[address(arg1)]:
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, amounts[address(arg1)]
            require ext_call.success
            require ext_call.return_data[0]
            require amounts[address(arg1)] + refunded[address(arg1)].field_0 >= refunded[address(arg1)].field_0
            refunded[address(arg1)].field_0 += amounts[address(arg1)]
    else:
        if block.timestamp >= starts[address(arg1)] + durations[address(arg1)]:
            require released[address(arg1)] <= amounts[address(arg1)] - refunded[address(arg1)].field_0
            require -refunded[address(arg1)].field_0 <= 0
            stor3[address(arg1)] = 1
            if refunded[address(arg1)].field_0:
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args owner, refunded[address(arg1)].field_0
                require ext_call.success
                require ext_call.return_data[0]
                require 2 * refunded[address(arg1)].field_0 >= refunded[address(arg1)].field_0
                refunded[address(arg1)].field_0 = 0
                refunded[address(arg1)].field_1 = refunded[address(arg1)].field_0
        else:
            if stor3[address(arg1)]:
                require released[address(arg1)] <= amounts[address(arg1)] - refunded[address(arg1)].field_0
                require -refunded[address(arg1)].field_0 <= 0
                stor3[address(arg1)] = 1
                if refunded[address(arg1)].field_0:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args owner, refunded[address(arg1)].field_0
                    require ext_call.success
                    require ext_call.return_data[0]
                    require 2 * refunded[address(arg1)].field_0 >= refunded[address(arg1)].field_0
                    refunded[address(arg1)].field_0 = 0
                    refunded[address(arg1)].field_1 = refunded[address(arg1)].field_0
            else:
                if amounts[address(arg1)] - refunded[address(arg1)].field_0:
                    require amounts[address(arg1)] - refunded[address(arg1)].field_0
                    require (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / amounts[address(arg1)] - refunded[address(arg1)].field_0 == block.timestamp - starts[address(arg1)]
                require durations[address(arg1)]
                require released[address(arg1)] <= (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]
                require (amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)] <= amounts[address(arg1)]
                stor3[address(arg1)] = 1
                if amounts[address(arg1)] - ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]):
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args owner, amounts[address(arg1)] - ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)])
                    require ext_call.success
                    require ext_call.return_data[0]
                    require amounts[address(arg1)] - ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]) + refunded[address(arg1)].field_0 >= refunded[address(arg1)].field_0
                    refunded[address(arg1)].field_0 = amounts[address(arg1)] - ((amounts[address(arg1)] * block.timestamp) - (refunded[address(arg1)].field_0 * block.timestamp) - (amounts[address(arg1)] * starts[address(arg1)]) + (refunded[address(arg1)].field_0 * starts[address(arg1)]) / durations[address(arg1)]) + refunded[address(arg1)].field_0
    emit Revoked(arg1);
}



}
