contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    require not msg.value
    stor4 = msg.sender
    return code.data[70 len 461]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function EndLottery() {
    if stor4 == msg.sender:
        require stor3
        idx = 0
        s = 0
        while idx < stor2:
            mem[0] = stor1[idx]
            mem[32] = 0
            if stor0[stor1[idx]] + s < (block.hash(block.number - 1) % stor3) + 1:
                idx = idx + 1
                s = stor0[stor1[idx]] + s
                continue 
            selfdestruct(stor1[idx])
}

function _fallback() payable {
    revert
}

function Bet() payable {
    if msg.value > 0:
        if not stor0[address(msg.sender)]:
            stor1[stor2] = msg.sender
            stor2++
        stor0[address(msg.sender)] += msg.value
        stor3 += msg.value
}



}
