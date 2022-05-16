contract main {




// =====================  Runtime code  =====================


address stor0;

function selfDestruct() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_3191b6b6(?) {
    if stor0 != msg.sender:
        return 0
    return msg.value
}

function sub_800bfd3a(?) {
    if stor0 != msg.sender:
        return 0
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    return msg.value
}

function sub_833ec720(?) {
    if stor0 != msg.sender:
        return 0
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return msg.value
}



}
