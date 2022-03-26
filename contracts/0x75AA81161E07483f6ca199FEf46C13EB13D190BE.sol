contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;

function _fallback() payable {
    stor4 = 40
    stor5 = 0
    stor6 = 40
    require not msg.value
    stor0 = msg.sender
    stor3 = eth.balance(this.address)
    stor4 = stor6
    stor2 = block.number
    stor1 = msg.sender
    return code.data[168 len 1216]
}



// =====================  Runtime code  =====================


const WINNERTAX_PRECENT = 10

const DELTA = 10^17


address stor0;
address whaleAddress;
uint256 blockheight;
uint256 stake;
uint256 period;
uint8 destroyedWhenRoundOver;
uint256 newPeriod;

function getNewPeriod() {
    return newPeriod
}

function getPeriod() {
    return period
}

function stake() {
    return stake
}

function getDestroyedWhenRoundOver() {
    return bool(destroyedWhenRoundOver)
}

function whale() {
    return whaleAddress
}

function blockheight() {
    return blockheight
}

function _fallback() payable {
    if block.number - period < blockheight:
        require msg.value >= stake + 10^17
        call msg.sender with:
           value stake wei
             gas 2300 * is_zero(value) wei
        stake = eth.balance(this.address)
        period = newPeriod
        blockheight = block.number
        whaleAddress = msg.sender
        emit StakeIncreased(Array(len=15, data='stake increased'), whaleAddress, stake, blockheight);
    call whaleAddress with:
       value stake - (10 * stake / 100) wei
         gas 2300 * is_zero(value) wei
    emit MatthewWon(Array(len=11, data='Matthew won'), whaleAddress, stake - (10 * stake / 100), block.number);
    stake = eth.balance(this.address)
    period = newPeriod
    blockheight = block.number
    whaleAddress = msg.sender
    if not destroyedWhenRoundOver:
    selfdestruct(whaleAddress)
}

function setNewPeriod(uint256 arg1) {
    require stor0 == msg.sender
    newPeriod = arg1
}

function destroyWhenRoundOver() {
    require stor0 == msg.sender
    destroyedWhenRoundOver = 1
}

function getBlocksTillMatthew() {
    if blockheight + period <= block.number:
        return 0
    return (blockheight + period - block.number)
}



}
