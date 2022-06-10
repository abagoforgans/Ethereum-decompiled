contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() {
    stor0 = msg.sender
    require code.data[2431 len 20]
    require code.data[2483 len 32] <= code.data[2515 len 32]
    stor1 = code.data[2431 len 20]
    stor5 = uint8(bool(code.data[2547 len 32]))
    stor4 = code.data[2515 len 32]
    require code.data[2483 len 32] + code.data[2451 len 32] >= code.data[2451 len 32]
    stor2 = code.data[2483 len 32] + code.data[2451 len 32]
    stor3 = code.data[2451 len 32]
    return code.data[258 len 2161]
}



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

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require duration + start >= start
    if block.timestamp >= duration + start:
        return (released[address(arg1)] + ext_call.return_data[0])
    if stor7[address(arg1)]:
        return (released[address(arg1)] + ext_call.return_data[0])
    require start <= block.timestamp
    if not released[address(arg1)] + ext_call.return_data[0]:
        if duration:
            return ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration)
    else:
        if released[address(arg1)] + ext_call.return_data[0]:
            if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start:
                if duration:
                    return ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration)
    revert
}

function releasableAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
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
                if stor7[address(arg1)]:
                    if released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not released[address(arg1)] + ext_call.return_data[0]:
                            if duration:
                                if released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration:
                                    return (((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)])
                        else:
                            if released[address(arg1)] + ext_call.return_data[0]:
                                if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start:
                                    if duration:
                                        if released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration:
                                            return (((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)])
    revert
}

function revoke(address arg1) {
    require owner == msg.sender
    require stor5
    require not stor7[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] <= ext_call.return_data[0]
        stor7[address(arg1)] = 1
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0] + released[address(arg1)]
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
            require ext_call.return_data[0] <= ext_call.return_data[0]
            stor7[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, 0
        else:
            if stor7[address(arg1)]:
                require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                require ext_call.return_data[0] <= ext_call.return_data[0]
                stor7[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args owner, 0
            else:
                require start <= block.timestamp
                if released[address(arg1)] + ext_call.return_data[0]:
                    require released[address(arg1)] + ext_call.return_data[0]
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                require duration
                require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] <= ext_call.return_data[0]
                stor7[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args owner, ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) + released[address(arg1)]
    require ext_call.success
    require ext_call.return_data[0]
    emit Revoked()
}

function release(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] > 0
        require 0 >= released[address(arg1)]
        released[address(arg1)] = 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, -released[address(arg1)]
        require ext_call.success
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
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            emit Released(ext_call.return_data[0]);
        else:
            if stor7[address(arg1)]:
                require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0] + released[address(arg1)] >= released[address(arg1)]
                released[address(arg1)] += ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                emit Released(ext_call.return_data[0]);
            else:
                require start <= block.timestamp
                if released[address(arg1)] + ext_call.return_data[0]:
                    require released[address(arg1)] + ext_call.return_data[0]
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                require duration
                require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                require ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] > 0
                require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration >= released[address(arg1)]
                released[address(arg1)] = (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]
                require ext_call.success
                require ext_call.return_data[0]
                emit Released((((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]));
}



}
