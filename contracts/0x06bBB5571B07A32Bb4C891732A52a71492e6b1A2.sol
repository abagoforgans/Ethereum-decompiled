contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() {
    stor2 = code.data[615 len 20]
    return code.data[127 len 476]
}



// =====================  Runtime code  =====================


address stor2;

function _fallback() payable {
    revert
}

function sub_44f75550(?) {
    require ext_code.size(0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a)
    call 0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, stor2, arg1
    require ext_call.success
}



}
