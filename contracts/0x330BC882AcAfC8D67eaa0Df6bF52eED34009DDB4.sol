contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    return code.data[81 len 465]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert 
}

function forward(address arg1, bool arg2) payable {
    require arg1
    call stor0.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require bool(ext_call.return_data[0]) == arg2
    call arg1 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    emit Success()
    return 1
}



}
