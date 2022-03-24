contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor1 = 0xde17a240b031a4607a575fe13122d5195b43d6fc
    return code.data[89 len 253]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert 
}

function split(address arg1, address arg2) payable {
    call stor0.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        call arg1 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
    else:
        call stor1 with:
           value msg.value / 100 wei
             gas 0 wei
        call arg2 with:
           value msg.value - (msg.value / 100) wei
             gas gas_remaining - 34050 wei
}



}
