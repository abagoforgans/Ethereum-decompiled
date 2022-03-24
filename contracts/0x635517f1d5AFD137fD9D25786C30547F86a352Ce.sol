contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor1 = 0x502f9aa95d45426915bff7b92ef90468b100cc9b
    return code.data[89 len 195]
}



// =====================  Runtime code  =====================


address stor0;
address transferToAddress;

function transferTo() payable {
    return transferToAddress
}

function _fallback() payable {
    call stor0.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    call transferToAddress with:
       value msg.value wei
         gas 0 wei
}



}
