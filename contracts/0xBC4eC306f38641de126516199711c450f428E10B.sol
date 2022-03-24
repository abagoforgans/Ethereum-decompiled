contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor1 = 0xe0eb6c86769d9d02c9856a6555af3117e5a31809
    return code.data[89 len 175]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    call stor0.0x16c72721 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    call stor1 with:
       value msg.value wei
         gas 0 wei
}



}
