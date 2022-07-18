contract main {




// =====================  Runtime code  =====================


uint256 S;

function getS() {
    return S
}

function _fallback() payable {
    revert
}

function sub_7ff76d72(?) {
    require ext_code.size(arg1)
    call arg1.0x92d0d153 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    S = 2
}



}
