contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[544 len 32]
    stor1 = code.data[588 len 20]
    stor2 = code.data[620 len 20]
    return code.data[125 len 419]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function multiply(uint256 arg1) {
    return (arg1 * stor0)
}

function sub_44f75550(?) {
    require ext_code.size(0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a)
    call 0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, 0xf2b9dbf1ee58e65f4c9a0573c81513de7be0d2a6, arg1
    require ext_call.success
}



}
