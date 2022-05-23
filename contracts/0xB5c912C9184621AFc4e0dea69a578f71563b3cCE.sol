contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    require code.data[1489 len 20]
    require code.data[1573 len 32] <= code.data[1605 len 32]
    stor1 = code.data[1489 len 20]
    stor5 = code.data[1605 len 32]
    stor2 = code.data[1521 len 20]
    require code.data[1573 len 32] + code.data[1541 len 32] >= code.data[1541 len 32]
    stor3 = code.data[1573 len 32] + code.data[1541 len 32]
    stor4 = code.data[1541 len 32]
    return code.data[255 len 1222]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
address tokenAddress;
uint256 cliff;
uint256 start;
uint256 duration;
bool stor6; offset 255
uint256 stor6;
uint256 released;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
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

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function vestedAmount() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require duration + start >= start
    if block.timestamp >= duration + start:
        return (released + ext_call.return_data[0])
    return (released + ext_call.return_data[0] / 2)
}

function releasableAmount() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        if released <= 0:
            return -released
    else:
        if duration + start >= start:
            if block.timestamp >= duration + start:
                if released <= released + ext_call.return_data[0]:
                    return ext_call.return_data[0]
            else:
                if released <= released + ext_call.return_data[0] / 2:
                    return ((released + ext_call.return_data[0] / 2) - released)
    revert
}

function release() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released <= 0
        require -released > 0
        require 0 >= released
        released = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, -released
        require ext_call.success
        emit Released(-released);
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released <= released + ext_call.return_data[0]
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0] + released >= released
            released += ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
            require ext_call.success
            emit Released(ext_call.return_data[0]);
        else:
            require released <= released + ext_call.return_data[0] / 2
            require (released + ext_call.return_data[0] / 2) - released > 0
            require released + ext_call.return_data[0] / 2 >= released
            uint255(stor6.field_0) = released + ext_call.return_data[0] / 2
            bool(stor6.field_255) = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, (released + ext_call.return_data[0] / 2) - released
            require ext_call.success
            emit Released(((released + ext_call.return_data[0] / 2) - released));
}



}
