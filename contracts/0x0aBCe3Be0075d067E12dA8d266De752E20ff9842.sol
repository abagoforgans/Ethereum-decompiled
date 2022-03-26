contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 40
    stor4 = 0
    stor5 = 40
    require not msg.value
    stor0 = msg.sender
    stor3 = stor5
    stor2 = block.number
    stor1 = msg.sender
    return code.data[154 len 954]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 period;
uint8 stor4;
uint256 newPeriod;

function getNewPeriod() {
    return newPeriod
}

function getPeriod() {
    return period
}

function getDestroyedWhenRoundOver() {
    return bool(stor4)
}

function _fallback() payable {
    if block.number - period < stor2:
        require msg.value >= eth.balance(this.address) + 10^17
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        period = newPeriod
        stor2 = block.number
        stor1 = msg.sender
        emit StakeIncreased(Array(len=15, data='stake increased'), stor1, eth.balance(this.address), stor2);
    call stor1 with:
       value eth.balance(this.address) - (10 * eth.balance(this.address) / 100) wei
         gas 2300 * is_zero(value) wei
    emit MatthewWon(Array(len=11, data='Matthew won'), stor1, eth.balance(this.address), block.number);
    period = newPeriod
    stor2 = block.number
    stor1 = msg.sender
    if not stor4:
    selfdestruct(stor1)
}

function destroyWhenRoundOver() {
    require stor0 == msg.sender
    stor4 = 1
}

function setNewPeriod(uint256 arg1) {
    require stor0 == msg.sender
    newPeriod = arg1
}

function getBlocksTillMatthew() {
    if stor2 + period <= block.number:
        return 0
    return (stor2 + period - block.number)
}



}
