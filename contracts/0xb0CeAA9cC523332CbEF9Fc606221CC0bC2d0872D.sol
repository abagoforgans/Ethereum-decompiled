contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = msg.value
    stor2 = block.number
    stor0 = msg.sender
    return code.data[61 len 680]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stake;
uint256 stor2;

function getStake() {
    return stake
}

function getBlocksTillMattew() {
    if stor2 + 200 <= block.number:
        return 0
    return (stor2 + -block.number + 200)
}

function _fallback() payable {
    if block.number - 200 > stor2:
        call stor0 with:
           value stake wei
             gas 2300 * is_zero(value) wei
        emit MattewWon(Array(len=39, data='Mattew won (mattew, stake, block', 'height)'), stor0, stake, block.number);
        stake = msg.value
        stor2 = block.number
        stor0 = msg.sender
    else:
        require msg.value >= stake + 10^17
        call msg.sender with:
           value stake wei
             gas 2300 * is_zero(value) wei
        stake = msg.value
        stor2 = block.number
        stor0 = msg.sender
        emit StakeIncreased(Array(len=43, data='stake increased (whale, stake, b', 'lockheight)'), stor0, stake, stor2);
}



}
