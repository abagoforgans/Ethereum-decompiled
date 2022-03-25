contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = block.timestamp
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[70 len 995]
}



// =====================  Runtime code  =====================


address stor0;
uint256 creationTime;

function creationTime() {
    return creationTime
}

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_36a8915b(?) {
    require msg.sender == stor0
    if not arg2.length % 32:
        emit 0x139595ce: Array(len=arg1.length, data=arg1[all]), arg1.length + 128, arg2.length + arg1.length + 160, msg.sender
    else:
        emit 0x139595ce: Array(len=arg1.length, data=arg1[all]), arg1.length + 128, floor32(arg2.length) + arg1.length + 192, msg.sender
}



}
