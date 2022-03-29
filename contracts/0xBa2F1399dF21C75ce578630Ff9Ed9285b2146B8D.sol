contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 10^16
    stor2 = 2 * 10^18
    stor3 = 0
    stor4 = 0
    stor0 = msg.sender
    return code.data[120 len 4634]
}



// =====================  Runtime code  =====================


address owner;
uint256 minBet;
uint256 maxBet;
uint256 totalRollMade;
uint256 totalEthSended;
mapping of uint256 totalRollsByUser;
mapping of struct state;

function getState() {
    require state[address(msg.sender)].field_768 <= 3
    require state[address(msg.sender)].field_0
    require state[address(msg.sender)].field_768 <= 3
    return state[address(msg.sender)].field_768
}

function maxBet() {
    return maxBet
}

function getTotalEthSended() {
    return totalEthSended
}

function getGameChance() {
    require state[address(msg.sender)].field_768 <= 3
    require state[address(msg.sender)].field_0
    return state[address(msg.sender)].field_512
}

function games(address arg1) {
    require state[arg1].field_768 <= 3
    return state[arg1].field_0, state[arg1].field_256, state[arg1].field_512, state[arg1].field_768, state[arg1].field_776
}

function owner() {
    return owner
}

function totalRollsByUser(address arg1) {
    return totalRollsByUser[arg1]
}

function minBet() {
    return minBet
}

function getTotalRollMade() {
    return totalRollMade
}

function getCount() {
    return totalRollsByUser[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function roll(uint256 arg1) payable {
    require state[address(msg.sender)].field_768 <= 3
    if state[address(msg.sender)].field_0:
        require state[address(msg.sender)].field_768 <= 3
        require state[address(msg.sender)].field_768
    require msg.value >= minBet
    require msg.value <= maxBet
    require state[address(msg.sender)].field_768 <= 3
    if state[address(msg.sender)].field_0:
        require state[address(msg.sender)].field_768 <= 3
        require state[address(msg.sender)].field_768
    require arg1
    state[address(msg.sender)].field_0 = msg.sender
    state[address(msg.sender)].field_256 = msg.value
    state[address(msg.sender)].field_512 = arg1
    state[address(msg.sender)].field_768 = 0
    state[address(msg.sender)].field_1024 = 0
    state[address(msg.sender)].field_776 = 3
    totalRollsByUser[address(msg.sender)]++
    if 9900 * msg.value / arg1 > eth.balance(this.address):
        state[address(msg.sender)].field_768 = 3
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        totalRollMade++
        emit logAdr(msg.sender);
        emit log256((9900 * msg.value / arg1));
        emit log256(((9900 * msg.value / arg1) - msg.value));
        emit log256(msg.value);
        emit log256(arg1);
        if sha3(block.hash(block.number), msg.sender, block.timestamp) % 10000 > arg1:
            emit log8(0);
            state[address(msg.sender)].field_768 = 2
        else:
            emit log8(1);
            state[address(msg.sender)].field_768 = 1
            call msg.sender with:
               value 9900 * msg.value / arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit logStr(Array(len=18, data='Money is not send.'));
            else:
                totalEthSended += 9900 * msg.value / arg1
    require state[address(msg.sender)].field_768 <= 3
    emit logState(Array(len=6, data='state:'), state[address(msg.sender)].field_768);
}



}
