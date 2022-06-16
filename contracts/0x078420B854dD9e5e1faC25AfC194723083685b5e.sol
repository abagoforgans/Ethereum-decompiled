contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8

function x() {
    return bool(uint8(stor0.field_0))
}

function _fallback() payable {
    revert
}

function vote(bool arg1) payable {
    require calldata.size - 4 >= 32
    uint8(stor0.field_0) = uint8(arg1)
}

function sub_c84e45c7(?) {
    call address(stor0.field_8) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
