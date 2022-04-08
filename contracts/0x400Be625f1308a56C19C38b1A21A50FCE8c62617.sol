contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xd72ae741037e94020fbb434387bf0e292e2b951b
    stor1 = 0xf8ff4508a12c969029d1f053ebf0f435d393c1bc
    require not msg.value
    return code.data[198 len 1047]
}



// =====================  Runtime code  =====================


address sub_1c62a528Address;
address sub_6c2d55c6Address;

function sub_1c62a528(?) {
    return sub_1c62a528Address
}

function sub_6c2d55c6(?) {
    return sub_6c2d55c6Address
}

function sub_5fc1f825(?) {
    require msg.sender == sub_6c2d55c6Address
    sub_6c2d55c6Address = arg1
}

function sub_b277fc84(?) {
    require msg.sender == sub_1c62a528Address
    sub_1c62a528Address = arg1
}

function _fallback() payable {
    call sub_1c62a528Address with:
       value 85 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sub_6c2d55c6Address with:
       value 15 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
