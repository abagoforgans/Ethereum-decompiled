contract main {




// =====================  Runtime code  =====================


address brokerAddress;
mapping of uint8 stor1;

function broker() {
    return brokerAddress
}

function usedHashes(bytes32 arg1) {
    return bool(stor1[arg1])
}

function depositEther() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_f424ccc4(?) {
    require ext_code.size(brokerAddress)
    call brokerAddress.coordinator() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Invalid sender'
    if bool(stor1[arg1]) == 1:
        revert with 0, 'hash already used'
    stor1[arg1] = 1
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x805714f7: arg3, arg1, arg2
}



}
