contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[35 len 232]
}



// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
    return 1
}



}
