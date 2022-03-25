contract main {


// =======================  Init code  ======================


address recipientAddress;

function recipient() payable {
    return recipientAddress
}

function _fallback() payable {
  stop
}

function sub_f7211089(?) payable {
    emit Debug(1);
    call recipientAddress with:
       value 10 wei
         gas 0 wei
    if ext_call.success:
        emit Debug(6);
    emit Debug(2);
}



// =====================  Runtime code  =====================




}
