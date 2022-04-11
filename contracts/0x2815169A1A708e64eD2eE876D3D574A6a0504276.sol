contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x419a2d238797bbbce2762695e7aad3382d8cb774
    require not msg.value
    return code.data[66 len 390]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() {
    require ext_code.size(stor0)
    call stor0.0xc2eb3228 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, sha3('Do()')) >> 224
         gas gas_remaining - 25710 wei
}



}
