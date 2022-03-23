contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = this.address or Mask(96, 160, stor1)
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[54 len 515]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function SendEmail(string arg1, string arg2) payable {
    emit 0xaa3d8946: msg.sender, Array(len=arg1.length, data=arg1[all]), arg1.length + 128
}

function withdraw(uint256 arg1) payable {
    if msg.sender == stor0:
        call this.address with:
           value arg1 wei
             gas 0 wei
}



}
