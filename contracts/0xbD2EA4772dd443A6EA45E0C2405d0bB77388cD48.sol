contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 418]
}



// =====================  Runtime code  =====================


address stor0;
uint256 contentCount;

function contentCount() {
    return contentCount
}

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() {
    revert 
}

function add(string arg1, uint256 arg2) {
    require msg.sender == stor0
    contentCount++
    emit LogMessage(Array(len=arg1.length, data=arg1[all]), arg2);
}



}
