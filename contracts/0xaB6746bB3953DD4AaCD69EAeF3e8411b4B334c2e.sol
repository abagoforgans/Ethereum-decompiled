contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor7;
address stor8;
address stor9;

function _fallback() {
    stor0 = msg.sender
    require code.data[3756 len 20]
    require code.data[3808 len 32] <= code.data[3840 len 32]
    stor1 = code.data[3756 len 20]
    stor3 = code.data[3776 len 32]
    require code.data[3808 len 32] + code.data[3776 len 32] >= code.data[3776 len 32]
    stor2 = code.data[3808 len 32] + code.data[3776 len 32]
    stor4 = code.data[3840 len 32]
    stor5 = uint8(bool(code.data[3872 len 32]))
    stor7 = code.data[3916 len 20]
    stor8 = code.data[3948 len 20]
    stor9 = code.data[3980 len 20]
    return code.data[372 len 3372]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor5;
uint8 stor5; offset 8
uint256 released;
address tokenAddress;
address returnVestingAddress;
address terraformReserveAddress;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
}

function terraformReserve() {
    return terraformReserveAddress
}

function returnVesting() {
    return returnVestingAddress
}

function revoked() {
    return bool(uint8(stor5.field_8))
}

function revocable() {
    return bool(uint8(stor5.field_0))
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

function changeBeneficiary(address arg1) {
    require beneficiaryAddress == msg.sender
    require arg1
    beneficiaryAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function releaseForeignToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require tokenAddress != arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function lockMana(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, terraformReserveAddress
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(returnVestingAddress)
    call returnVestingAddress.returnAddress(address rg1) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(terraformReserveAddress)
    call terraformReserveAddress.lockMana(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, arg1
    require ext_call.success
    emit LockedMANA(arg1);
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
    if uint8(stor5.field_8):
        return (released + ext_call.return_data[0])
    require start <= block.timestamp
    if not released + ext_call.return_data[0]:
        if duration:
            return ((released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration)
    else:
        if released + ext_call.return_data[0]:
            if (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / released + ext_call.return_data[0] == block.timestamp - start:
                if duration:
                    return ((released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration)
    revert
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
                if uint8(stor5.field_8):
                    if released <= released + ext_call.return_data[0]:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not released + ext_call.return_data[0]:
                            if duration:
                                if released <= (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration:
                                    return (((released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration) - released)
                        else:
                            if released + ext_call.return_data[0]:
                                if (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / released + ext_call.return_data[0] == block.timestamp - start:
                                    if duration:
                                        if released <= (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration:
                                            return (((released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration) - released)
    revert
}

function releaseTo(address arg1) {
    require beneficiaryAddress == msg.sender
    require block.timestamp >= cliff
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released <= 0
        require 0 >= released
        released = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), -released
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released <= released + ext_call.return_data[0]
            require ext_call.return_data[0] + released >= released
            released += ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0]
        else:
            if uint8(stor5.field_8):
                require released <= released + ext_call.return_data[0]
                require ext_call.return_data[0] + released >= released
                released += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0]
            else:
                require start <= block.timestamp
                if released + ext_call.return_data[0]:
                    require released + ext_call.return_data[0]
                    require (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / released + ext_call.return_data[0] == block.timestamp - start
                require duration
                require released <= (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration
                require (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration >= released
                released = (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ((released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration) - released
    require ext_call.success
    require ext_call.return_data[0]
    emit Released(released);
}

function release() {
    require beneficiaryAddress == msg.sender
    require block.timestamp >= cliff
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released <= 0
        require 0 >= released
        released = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, -released
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released <= released + ext_call.return_data[0]
            require ext_call.return_data[0] + released >= released
            released += ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
        else:
            if uint8(stor5.field_8):
                require released <= released + ext_call.return_data[0]
                require ext_call.return_data[0] + released >= released
                released += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ext_call.return_data[0]
            else:
                require start <= block.timestamp
                if released + ext_call.return_data[0]:
                    require released + ext_call.return_data[0]
                    require (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / released + ext_call.return_data[0] == block.timestamp - start
                require duration
                require released <= (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration
                require (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration >= released
                released = (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ((released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration) - released
    require ext_call.success
    require ext_call.return_data[0]
    emit Released(released);
}

function revoke() {
    require owner == msg.sender
    require uint8(stor5.field_0)
    require not uint8(stor5.field_8)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require released + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released <= 0
        require 0 >= released
        released = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, -released
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released <= released + ext_call.return_data[0]
            require ext_call.return_data[0] + released >= released
            released += ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
        else:
            if uint8(stor5.field_8):
                require released <= released + ext_call.return_data[0]
                require ext_call.return_data[0] + released >= released
                released += ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ext_call.return_data[0]
            else:
                require start <= block.timestamp
                if released + ext_call.return_data[0]:
                    require released + ext_call.return_data[0]
                    require (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / released + ext_call.return_data[0] == block.timestamp - start
                require duration
                require released <= (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration
                require (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration >= released
                released = (released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args beneficiaryAddress, ((released * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released * start) - (ext_call.return_data[0] * start) / duration) - released
    require ext_call.success
    require ext_call.return_data[0]
    emit Released(released);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    uint8(stor5.field_8) = 1
    emit Revoked()
}



}
