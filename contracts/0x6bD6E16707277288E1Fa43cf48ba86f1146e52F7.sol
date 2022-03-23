contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 867]
}



// =====================  Runtime code  =====================


address stor0;

function Kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function double(int256 arg1) payable {
    return (2 * arg1)
}

function Withdraw(uint256 arg1) payable {
    call stor0 with:
       value arg1 wei
         gas 0 wei
}

function SendEmail(string arg1, string arg2) payable {
    emit EmailSent(msg.sender, msg.value, Array(len=arg1.length, data=arg1[all]), arg1.length + 160);
}



}
