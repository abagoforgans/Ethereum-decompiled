contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[62 len 238]
}



// =====================  Runtime code  =====================


function deposit() payable {
    emit Deposit(msg.value, msg.sender);
}

function _fallback() payable {
    emit Deposit(msg.value, msg.sender);
}



}
