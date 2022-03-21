contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor0 = 0
    stor2 = 0
    return code.data[49 len 664]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function remove() payable {
    if stor3 != msg.sender:
    selfdestruct(stor3)
}

function _fallback() payable {
  stop
}

function closeRequest() payable {
    if stor0:
        if stor2 < stor1 - 1:
            stor2++
    stor0 = 1
}

function getLastNonPublished() payable {
    if stor2 < stor1:
        return stor[code.data[632 len 32] + stor2]
    else:
        return 0
}

function newRequest(uint256 arg1) payable {
    if arg1 <= 0:
        emit InvalidPullRequest(arg1);
    else:
        idx = 0
        while idx < stor1:
            mem[0] = 1
            if stor[code.data[632 len 32] + idx] != arg1:
                idx = idx + 1
                continue 
            emit PullRequestAlreadyClaimed((24 * 3600 * idx) - (24 * 3600 * stor2), stor2 > idx, arg1);
        stor1++
        if not stor1 <= stor1 + 1:
            idx = stor1 + code.data[632 len 32] + 1
            while code.data[632 len 32] + stor1 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor[code.data[632 len 32] + stor1] = arg1
        emit PullRequestClaimed(((24 * 3600 * stor1) - (24 * 3600 * stor2)), arg1);
}



}
