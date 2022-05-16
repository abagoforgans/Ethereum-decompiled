contract main {




// =====================  Runtime code  =====================


address stor0;

function selfDestruct() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_3191b6b6(?) {
  stop
}

function _fallback() payable {
    revert
}

function sub_800bfd3a(?) {
    if msg.sender == stor0:
        call arg1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}

function sub_833ec720(?) {
    if msg.sender == stor0:
        call arg1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
