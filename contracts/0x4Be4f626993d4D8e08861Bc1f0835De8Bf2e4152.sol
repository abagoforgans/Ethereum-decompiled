contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[613 len 20]
    return code.data[126 len 475]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_44f75550(?) {
    require ext_code.size(0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a)
    call 0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, stor0, arg1
    require ext_call.success
}



}
