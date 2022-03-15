contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 850]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    emit AnonymousDeposit(msg.value, msg.sender);
}

function deposit(bytes32 arg1) payable {
    emit Deposit(msg.value, msg.sender, arg1);
}

function transfer(bytes32 arg1, address arg2, uint256 arg3) payable {
    if msg.sender == stor0:
        call arg2 with:
           value arg3 wei
             gas 0 wei
        emit Transfer(arg3, arg1, arg2);
}

function icapTransfer(bytes32 arg1, address arg2, bytes32 arg3, uint256 arg4) payable {
    if msg.sender == stor0:
        call arg2.0xb214faa5 with:
           value arg4 wei
             gas gas_remaining - 34050 wei
            args arg3
        require ext_call.success
        emit IcapTransfer(arg3, arg4, arg1, arg2);
}



}
