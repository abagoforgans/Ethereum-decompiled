contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    return code.data[57 len 469]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert 
}

function split(address arg1, address arg2) payable {
    call stor0.0x16c72721 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        call arg1 with:
           value msg.value wei
             gas 0 wei
        if not ext_call.success:
            call stor0.0x16c72721 with:
                 gas gas_remaining - 25050 wei
            revert 
        emit e(arg1);
    else:
        call stor0.0x16c72721 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        require not ext_call.return_data[0]
        call arg2 with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        emit e(arg2);
    return 1
}



}
