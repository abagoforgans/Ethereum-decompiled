contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
address stor2;
address beneficiaryAddress;
uint256 releaseTime;

function name() {
    return name[0 len name.length]
}

function beneficiary() {
    return beneficiaryAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function releaseTime() {
    return releaseTime
}

function _fallback() payable {
    revert
}

function lockedBalance() {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function release() {
    require block.timestamp >= releaseTime
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
