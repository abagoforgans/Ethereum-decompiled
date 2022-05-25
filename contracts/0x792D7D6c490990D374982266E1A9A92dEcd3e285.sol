contract main {




// =====================  Runtime code  =====================


uint256 startTime;
uint256 endTime;
address stor2;
address agencyAddress;

function endTime() {
    return endTime
}

function agency() {
    return agencyAddress
}

function startTime() {
    return startTime
}

function _fallback() payable {
    revert
}

function owner() {
    require ext_code.size(stor2)
    call stor2.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_e1eb0600(?) {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isValidOwner(address arg1) {
    require ext_code.size(stor2)
    call stor2.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        return 0
    return 1
}

function release() {
    require block.timestamp >= endTime
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args agencyAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
