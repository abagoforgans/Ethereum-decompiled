contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor1 = 0x46a1e8814af10ef6f1a8449da0ec72a59b29ea54
    return code.data[89 len 220]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert 
}

function split(address arg1, address arg2) payable {
    call stor0.0x16c72721 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        call stor1 with:
           value msg.value / 100 wei
             gas 0 wei
        call arg2 with:
           value msg.value - (msg.value / 100) wei
             gas gas_remaining - 34050 wei
}



}
