contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address beneficiaryAddress;
uint256 released;
uint8 stor5;

function beneficiary() {
    return beneficiaryAddress
}

function revoked() {
    return bool(stor5)
}

function owner() {
    return owner
}

function released() {
    return released
}

function kill() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(owner)
}

function _fallback() {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function releasableAmount() {
    if stor5:
        return 0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released + ext_call.return_data[0] >= released
    require ext_code.size(stor2)
    call stor2.0x67cbb984 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not released + ext_call.return_data[0]:
        if 0 < released:
            return 0
        if released <= 0:
            return -released
    else:
        if released + ext_call.return_data[0]:
            if (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / released + ext_call.return_data[0] == ext_call.return_data[0]:
                if (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100 < released:
                    return 0
                if released <= (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100:
                    return (((released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100) - released)
    revert
}

function release() {
    require not stor5
    if owner != msg.sender:
        require msg.sender == beneficiaryAddress
    require not stor5
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require released + ext_call.return_data[0] >= released
    require ext_code.size(stor2)
    call stor2.0x67cbb984 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not released + ext_call.return_data[0]:
        require 0 >= released
        require released <= 0
        require -released > 0
        require 0 >= released
        released = 0
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, -released
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Released(-released);
    else:
        require released + ext_call.return_data[0]
        require (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / released + ext_call.return_data[0] == ext_call.return_data[0]
        require (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100 >= released
        require released <= (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100
        require ((released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100) - released > 0
        require (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100 >= released
        released = (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ((released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100) - released
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Released((((released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100) - released));
}

function revoke() {
    require msg.sender == owner
    require not stor5
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor5:
        require 0 <= ext_call.return_data[0]
        stor5 = 1
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    else:
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require released + ext_call.return_data[0] >= released
        require ext_code.size(stor2)
        call stor2.0x67cbb984 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not released + ext_call.return_data[0]:
            if 0 < released:
                require 0 <= ext_call.return_data[0]
                stor5 = 1
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
            else:
                require released <= 0
                require -released <= ext_call.return_data[0]
                stor5 = 1
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0] + released
        else:
            require released + ext_call.return_data[0]
            require (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / released + ext_call.return_data[0] == ext_call.return_data[0]
            if (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100 < released:
                require 0 <= ext_call.return_data[0]
                stor5 = 1
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
            else:
                require released <= (released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100
                require ((released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100) - released <= ext_call.return_data[0]
                stor5 = 1
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0] - ((released * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 100) + released
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Revoked()
}



}
