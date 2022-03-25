contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x93598e23c2b9b4a53aae67e398a423c3065ebbd9
    return code.data[81 len 459]
}



// =====================  Runtime code  =====================


address recipientAddress;

function recipient() {
    return recipientAddress
}

function _fallback() payable {
    revert 
}

function sub_f7211089(?) {
    emit Debug(1);
    call recipientAddress with:
       value 10 wei
         gas 0 wei
    if ext_call.success:
        emit Debug(4);
    emit Debug(2);
}



}
