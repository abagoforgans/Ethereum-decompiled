contract main {




// =====================  Runtime code  =====================


uint8 version;
uint256 totalIncome;
uint8 stor2;
address owner; offset 8

function totalIncome() {
    return totalIncome
}

function version() {
    return version
}

function owner() {
    return owner
}

function sub_e517bbbc(?) {
    return bool(stor2)
}

function setPayable(bool arg1) {
    require msg.sender == owner
    stor2 = uint8(arg1)
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require owner
    owner = arg1
}

function _fallback() payable {
    require 1 == bool(stor2)
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Payment(msg.value, msg.sender);
    totalIncome += msg.value
}

function claimTokens(address arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ClaimedTokens(ext_call.return_data[0], arg1, msg.sender);
}



}
