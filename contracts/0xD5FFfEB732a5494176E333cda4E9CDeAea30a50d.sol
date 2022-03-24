contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    return code.data[81 len 565]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    emit 0x83fe3dd7 
    emit 0x2 
    revert 
}

function forward(address arg1, bool arg2) payable {
    if not arg1:
        emit 0x83fe3dd7 
        emit 0x1 
        revert 
    call stor0.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if bool(ext_call.return_data[0]) != arg2:
        emit 0x83fe3dd7 
        emit 0x1 
        revert 
    call arg1 with:
       value msg.value wei
         gas 0 wei
    if not ext_call.success:
        emit 0x83fe3dd7 
        emit 0x1 
        revert 
    emit 0x83fe3dd7 
    emit 0x0 
    return 1
}



}
