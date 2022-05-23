contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 sub_2f36ee3d;

function sub_2f36ee3d(?) {
    return sub_2f36ee3d
}

function _fallback() payable {
    revert
}

function changeadmin(address arg1) {
    require msg.sender == stor3
    stor3 = arg1
}

function price(uint256 arg1) {
    require msg.sender == stor3
    sub_2f36ee3d = arg1
}

function trade() {
    require ext_code.size(stor0)
    call stor0.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * sub_2f36ee3d / ext_call.return_data[0] == sub_2f36ee3d
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args stor2, msg.sender, ext_call.return_data[0] * sub_2f36ee3d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 0
}



}
