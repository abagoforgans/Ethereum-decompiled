contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 873]




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
  stop
}

function sub_0ceea305(?) payable {
    if arg1 <= block.timestamp:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    stor0[address(msg.sender)][arg1] += msg.value
    emit Locked(arg1, msg.value, msg.sender);
    return 1
}

function sub_ffc16d05(?) payable {
    if block.timestamp < arg1:
        return 0
    if stor0[address(msg.sender)][arg1] <= 0:
        return 0
    call msg.sender with:
       value stor0[address(msg.sender)][arg1] wei
         gas 0 wei
    stor0[address(msg.sender)][arg1] = 0
    emit Withdrew(arg1, stor0[address(msg.sender)][arg1], msg.sender);
    return 1
}



}
