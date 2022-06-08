contract main {




// =====================  Runtime code  =====================


address sub_7af148c0Address;

function sub_7af148c0(?) {
    return sub_7af148c0Address
}

function _fallback() payable {
    revert
}

function init(address arg1) {
    if sub_7af148c0Address:
        revert with 0, 'it`s setting'
    sub_7af148c0Address = arg1
}

function withdrawal() {
    require ext_code.size(sub_7af148c0Address)
    call sub_7af148c0Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7af148c0Address)
    call sub_7af148c0Address.0xa9059cbb with:
         gas gas_remaining wei
        args 0xa8481b104c22ff96ba8ba0c65c419f1d0b64e401, 200 * ext_call.return_data[0] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7af148c0Address)
    call sub_7af148c0Address.0xa9059cbb with:
         gas gas_remaining wei
        args 0x6caad1f94fb3566cd2a2809599ddca8d7c0a5ec2, ext_call.return_data[0] - (200 * ext_call.return_data[0] / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
