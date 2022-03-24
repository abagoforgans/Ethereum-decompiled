contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xf9020565b3b7d5f77eba95456e6d56c3c23b9ab3
    return code.data[57 len 349]
}



// =====================  Runtime code  =====================


address stor0;

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
             gas 0 wei
        if ext_call.success:
            return 1
        call stor0.forked() with:
             gas gas_remaining - 25050 wei
        revert 
    call stor0.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    call arg2 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    return 1
}



}
