contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
    return 1
}

function delAdmin(address arg1) {
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    return 1
}

function setAdmin(address arg1) {
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    return 1
}

function sub_77b3dfd2(?) {
    require msg.sender == stor0
    if not arg1:
        return 0
    stor2 = arg1
    return 1
}

function sub_4b2859d8(?) {
    require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.subBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_65b391ee(?) {
    require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.addBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
