contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 443]
}



// =====================  Runtime code  =====================


address stor0;
uint256 contentCount;

function contentCount() payable {
    return contentCount
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function flush() payable {
    if stor0 == msg.sender:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function add(string arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        contentCount++
        emit 0xbf79ef30: Array(len=arg1.length, data=arg1[all]), arg2
}



}
