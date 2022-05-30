contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1)
#
address _owner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
uint256 rate;
uint256 stor6;
uint256 soldTokens;
array of uint256 _startDates;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of uint256 _endDates;
uint256 stor14;
uint256 stor15;
uint256 _getLastDate;
array of uint256 _bonuses;
uint256 stor18;
uint256 stor19;
uint256 stor20;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _getLastDate() {
    return _getLastDate
}

function _startDates(uint256 arg1) {
    require arg1 < 4
    return _startDates[arg1]
}

function soldTokens() {
    return soldTokens
}

function getRate() {
    return rate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return _owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _owner() {
    return _owner
}

function _bonuses(uint256 arg1) {
    require arg1 < 4
    return _bonuses[arg1]
}

function _endDates(uint256 arg1) {
    require arg1 < 4
    return _endDates[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _setRate(uint256 arg1) {
    require msg.sender == _owner
    require arg1 > 0
    rate = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == _owner
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _setLastDate(uint256 arg1) {
    require msg.sender == _owner
    require arg1 > block.timestamp
    require arg1 > stor12
    require arg1 < 2147483647
    _getLastDate = arg1
    return 1
}

function _forwardFunds(uint256 arg1) {
    require msg.sender == _owner
    require eth.balance(this.address) > 0
    require arg1 <= eth.balance(this.address)
    require arg1 > 0
    call _owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn() {
    require msg.sender == _owner
    require block.timestamp > _getLastDate
    require this.address
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    require balanceOf[address(this.address)] <= totalSupply
    totalSupply -= balanceOf[address(this.address)]
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    emit Transfer(balanceOf[address(this.address)], this.address, 0);
}

function currentStage() {
    require block.timestamp >= _startDates.length
    require block.timestamp <= _getLastDate
    if block.timestamp >= _startDates.length:
        if block.timestamp <= _endDates.length:
            return 0
    if block.timestamp >= stor10:
        if block.timestamp <= stor14:
            return 1
    if block.timestamp >= stor11:
        if block.timestamp <= stor15:
            return 2
    if block.timestamp < stor12:
        return 0
    if block.timestamp > _getLastDate:
        return 0
    return 3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function currentBonus() {
    require block.timestamp >= _startDates.length
    require block.timestamp <= _getLastDate
    require block.timestamp >= _startDates.length
    require block.timestamp <= _getLastDate
    if block.timestamp >= _startDates.length:
        if block.timestamp <= _endDates.length:
            return _bonuses.length
    if block.timestamp >= stor10:
        if block.timestamp <= stor14:
            return stor18
    if block.timestamp >= stor11:
        if block.timestamp <= stor15:
            return stor19
    if block.timestamp < stor12:
        return _bonuses.length
    if block.timestamp > _getLastDate:
        return _bonuses.length
    return stor20
}

function sendBatchCS(address[] arg1, uint256[] arg2) {
    require msg.sender == _owner
    require arg1.length == arg2.length
    mem[0] = msg.sender
    mem[32] = 21
    s = 0
    s = 0
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < arg2.length:
        require idx < arg1.length
        require s >= cd[((32 * idx) + arg2 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 21
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        s = address(cd[((32 * idx) + arg1 + 36)])
        s = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        s = s - cd[((32 * idx) + arg2 + 36)]
        continue 
    balanceOf[address(msg.sender)] = stor[sha3(mem[0 len 64])] + (stor[sha3(mem[0 len 64])] * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (stor[sha3(mem[0 len 64])] * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + (s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length)
    return 1
}

function _fallback() payable {
    require block.timestamp >= _startDates.length
    require block.timestamp <= _getLastDate
    require msg.sender
    require msg.value >= stor6
    require balanceOf[address(this.address)] > 0
    require block.timestamp >= _startDates.length
    require block.timestamp <= _getLastDate
    if block.timestamp < _startDates.length:
        if block.timestamp < stor10:
            if block.timestamp < stor11:
                if block.timestamp < stor12:
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                    require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                    soldTokens += msg.value * rate / 10^9
                    require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                    require block.timestamp >= _startDates.length
                    require block.timestamp <= _getLastDate
                    if block.timestamp < _startDates.length:
                        if block.timestamp < stor10:
                            if block.timestamp < stor11:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor15:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= stor14:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                    else:
                        if block.timestamp <= _endDates.length:
                            require soldTokens < 10^6 * 10^decimals
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                        else:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                    require msg.sender
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                    emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                    emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                else:
                    if block.timestamp > _getLastDate:
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                        require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                        soldTokens += msg.value * rate / 10^9
                        require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require block.timestamp >= _startDates.length
                        require block.timestamp <= _getLastDate
                        if block.timestamp < _startDates.length:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= _endDates.length:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        require msg.sender
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                        emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                    else:
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                        require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                        soldTokens += msg.value * rate / 10^9
                        require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                        require block.timestamp >= _startDates.length
                        require block.timestamp <= _getLastDate
                        if block.timestamp < _startDates.length:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= _endDates.length:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                        require msg.sender
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                        emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                        emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
            else:
                if block.timestamp <= stor15:
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= msg.value * rate / 10^9
                    require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                    soldTokens += msg.value * rate / 10^9
                    require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                    require block.timestamp >= _startDates.length
                    require block.timestamp <= _getLastDate
                    if block.timestamp < _startDates.length:
                        if block.timestamp < stor10:
                            if block.timestamp < stor11:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor15:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= stor14:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                    else:
                        if block.timestamp <= _endDates.length:
                            require soldTokens < 10^6 * 10^decimals
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                        else:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                    require msg.sender
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor19 / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                    emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)), this.address, msg.sender);
                    emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100), msg.sender, msg.sender);
                else:
                    if block.timestamp < stor12:
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                        require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                        soldTokens += msg.value * rate / 10^9
                        require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require block.timestamp >= _startDates.length
                        require block.timestamp <= _getLastDate
                        if block.timestamp < _startDates.length:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= _endDates.length:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        require msg.sender
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                        emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                    else:
                        if block.timestamp > _getLastDate:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                        else:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
        else:
            if block.timestamp <= stor14:
                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= msg.value * rate / 10^9
                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                soldTokens += msg.value * rate / 10^9
                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100)
                require block.timestamp >= _startDates.length
                require block.timestamp <= _getLastDate
                if block.timestamp < _startDates.length:
                    if block.timestamp < stor10:
                        if block.timestamp < stor11:
                            if block.timestamp < stor12:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp > _getLastDate:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                else:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= stor15:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                    else:
                        if block.timestamp <= stor14:
                            require soldTokens < 30 * 10^6 * 10^decimals
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp < stor11:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor15:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                else:
                    if block.timestamp <= _endDates.length:
                        require soldTokens < 10^6 * 10^decimals
                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                    else:
                        if block.timestamp < stor10:
                            if block.timestamp < stor11:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor15:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= stor14:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= balanceOf[address(this.address)]
                require msg.sender
                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor18 / 100)
                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100)
                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100)), this.address, msg.sender);
                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100), msg.sender, msg.sender);
            else:
                if block.timestamp < stor11:
                    if block.timestamp < stor12:
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                        require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                        soldTokens += msg.value * rate / 10^9
                        require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require block.timestamp >= _startDates.length
                        require block.timestamp <= _getLastDate
                        if block.timestamp < _startDates.length:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= _endDates.length:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        require msg.sender
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                        emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                    else:
                        if block.timestamp > _getLastDate:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                        else:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
                else:
                    if block.timestamp <= stor15:
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= msg.value * rate / 10^9
                        require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                        soldTokens += msg.value * rate / 10^9
                        require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                        require block.timestamp >= _startDates.length
                        require block.timestamp <= _getLastDate
                        if block.timestamp < _startDates.length:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= _endDates.length:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                        require msg.sender
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor19 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                        emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)), this.address, msg.sender);
                        emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100), msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor12:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                        else:
                            if block.timestamp > _getLastDate:
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                soldTokens += msg.value * rate / 10^9
                                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require block.timestamp >= _startDates.length
                                require block.timestamp <= _getLastDate
                                if block.timestamp < _startDates.length:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= _endDates.length:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                require msg.sender
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                            else:
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                soldTokens += msg.value * rate / 10^9
                                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                require block.timestamp >= _startDates.length
                                require block.timestamp <= _getLastDate
                                if block.timestamp < _startDates.length:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= _endDates.length:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                require msg.sender
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
    else:
        if block.timestamp <= _endDates.length:
            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
            soldTokens += msg.value * rate / 10^9
            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
            require block.timestamp >= _startDates.length
            require block.timestamp <= _getLastDate
            if block.timestamp < _startDates.length:
                if block.timestamp < stor10:
                    if block.timestamp < stor11:
                        if block.timestamp < stor12:
                            require soldTokens < 10^6 * 10^decimals
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                        else:
                            if block.timestamp > _getLastDate:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                    else:
                        if block.timestamp <= stor15:
                            require soldTokens < 30 * 10^6 * 10^decimals
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp < stor12:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp > _getLastDate:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                else:
                    if block.timestamp <= stor14:
                        require soldTokens < 30 * 10^6 * 10^decimals
                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                    else:
                        if block.timestamp < stor11:
                            if block.timestamp < stor12:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp > _getLastDate:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= stor15:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
            else:
                if block.timestamp <= _endDates.length:
                    require soldTokens < 10^6 * 10^decimals
                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                else:
                    if block.timestamp < stor10:
                        if block.timestamp < stor11:
                            if block.timestamp < stor12:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp > _getLastDate:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= stor15:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                    else:
                        if block.timestamp <= stor14:
                            require soldTokens < 30 * 10^6 * 10^decimals
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp < stor11:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor15:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
            require msg.sender
            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
        else:
            if block.timestamp < stor10:
                if block.timestamp < stor11:
                    if block.timestamp < stor12:
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                        require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                        soldTokens += msg.value * rate / 10^9
                        require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require block.timestamp >= _startDates.length
                        require block.timestamp <= _getLastDate
                        if block.timestamp < _startDates.length:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= _endDates.length:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        require msg.sender
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                        emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                        emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                    else:
                        if block.timestamp > _getLastDate:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                        else:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
                else:
                    if block.timestamp <= stor15:
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= msg.value * rate / 10^9
                        require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                        soldTokens += msg.value * rate / 10^9
                        require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                        require block.timestamp >= _startDates.length
                        require block.timestamp <= _getLastDate
                        if block.timestamp < _startDates.length:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= _endDates.length:
                                require soldTokens < 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                        require msg.sender
                        require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor19 / 100)
                        require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                        emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)), this.address, msg.sender);
                        emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100), msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor12:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                        else:
                            if block.timestamp > _getLastDate:
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                soldTokens += msg.value * rate / 10^9
                                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require block.timestamp >= _startDates.length
                                require block.timestamp <= _getLastDate
                                if block.timestamp < _startDates.length:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= _endDates.length:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                require msg.sender
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                            else:
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                soldTokens += msg.value * rate / 10^9
                                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                require block.timestamp >= _startDates.length
                                require block.timestamp <= _getLastDate
                                if block.timestamp < _startDates.length:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= _endDates.length:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                require msg.sender
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
            else:
                if block.timestamp <= stor14:
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= msg.value * rate / 10^9
                    require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                    soldTokens += msg.value * rate / 10^9
                    require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100)
                    require block.timestamp >= _startDates.length
                    require block.timestamp <= _getLastDate
                    if block.timestamp < _startDates.length:
                        if block.timestamp < stor10:
                            if block.timestamp < stor11:
                                if block.timestamp < stor12:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp > _getLastDate:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor15:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                        else:
                            if block.timestamp <= stor14:
                                require soldTokens < 30 * 10^6 * 10^decimals
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                    else:
                        if block.timestamp <= _endDates.length:
                            require soldTokens < 10^6 * 10^decimals
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                        else:
                            if block.timestamp < stor10:
                                if block.timestamp < stor11:
                                    if block.timestamp < stor12:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp > _getLastDate:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor15:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= stor14:
                                    require soldTokens < 30 * 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= 30 * 10^6 * 10^decimals
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= balanceOf[address(this.address)]
                    require msg.sender
                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor18 / 100)
                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100)
                    emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100)), this.address, msg.sender);
                    emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor18 / 100), msg.sender, msg.sender);
                else:
                    if block.timestamp < stor11:
                        if block.timestamp < stor12:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                        else:
                            if block.timestamp > _getLastDate:
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                soldTokens += msg.value * rate / 10^9
                                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require block.timestamp >= _startDates.length
                                require block.timestamp <= _getLastDate
                                if block.timestamp < _startDates.length:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= _endDates.length:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                require msg.sender
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                            else:
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                soldTokens += msg.value * rate / 10^9
                                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                require block.timestamp >= _startDates.length
                                require block.timestamp <= _getLastDate
                                if block.timestamp < _startDates.length:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= _endDates.length:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                require msg.sender
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
                    else:
                        if block.timestamp <= stor15:
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= msg.value * rate / 10^9
                            require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                            soldTokens += msg.value * rate / 10^9
                            require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                            require block.timestamp >= _startDates.length
                            require block.timestamp <= _getLastDate
                            if block.timestamp < _startDates.length:
                                if block.timestamp < stor10:
                                    if block.timestamp < stor11:
                                        if block.timestamp < stor12:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp > _getLastDate:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor15:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= stor14:
                                        require soldTokens < 30 * 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                            else:
                                if block.timestamp <= _endDates.length:
                                    require soldTokens < 10^6 * 10^decimals
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                else:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= 30 * 10^6 * 10^decimals
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                            require msg.sender
                            require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor19 / 100)
                            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)
                            emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100)), this.address, msg.sender);
                            emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor19 / 100), msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor12:
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                                require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                soldTokens += msg.value * rate / 10^9
                                require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require block.timestamp >= _startDates.length
                                require block.timestamp <= _getLastDate
                                if block.timestamp < _startDates.length:
                                    if block.timestamp < stor10:
                                        if block.timestamp < stor11:
                                            if block.timestamp < stor12:
                                                require soldTokens < 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                            else:
                                                if block.timestamp > _getLastDate:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor15:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= stor14:
                                            require soldTokens < 30 * 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                else:
                                    if block.timestamp <= _endDates.length:
                                        require soldTokens < 10^6 * 10^decimals
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                    else:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                require msg.sender
                                require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                                require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                                emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                            else:
                                if block.timestamp > _getLastDate:
                                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= msg.value * rate / 10^9
                                    require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                    soldTokens += msg.value * rate / 10^9
                                    require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                    require block.timestamp >= _startDates.length
                                    require block.timestamp <= _getLastDate
                                    if block.timestamp < _startDates.length:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= _endDates.length:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor10:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor14:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor11:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp <= stor15:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp < stor12:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                if block.timestamp > _getLastDate:
                                                                    require soldTokens < 10^6 * 10^decimals
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 10^6 * 10^decimals
                                                                else:
                                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= soldTokens
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= 30 * 10^6 * 10^decimals
                                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                    require msg.sender
                                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * _bonuses.length / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)
                                    emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100)), this.address, msg.sender);
                                    emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * _bonuses.length / 100), msg.sender, msg.sender);
                                else:
                                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= msg.value * rate / 10^9
                                    require soldTokens + (msg.value * rate / 10^9) >= soldTokens
                                    soldTokens += msg.value * rate / 10^9
                                    require balanceOf[address(this.address)] >= (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                    require block.timestamp >= _startDates.length
                                    require block.timestamp <= _getLastDate
                                    if block.timestamp < _startDates.length:
                                        if block.timestamp < stor10:
                                            if block.timestamp < stor11:
                                                if block.timestamp < stor12:
                                                    require soldTokens < 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp > _getLastDate:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor15:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                        else:
                                            if block.timestamp <= stor14:
                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    else:
                                        if block.timestamp <= _endDates.length:
                                            require soldTokens < 10^6 * 10^decimals
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                        else:
                                            if block.timestamp < stor10:
                                                if block.timestamp < stor11:
                                                    if block.timestamp < stor12:
                                                        require soldTokens < 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp > _getLastDate:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp <= stor15:
                                                        require soldTokens < 30 * 10^6 * 10^decimals
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                        require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                            else:
                                                if block.timestamp <= stor14:
                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                else:
                                                    if block.timestamp < stor11:
                                                        if block.timestamp < stor12:
                                                            require soldTokens < 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp > _getLastDate:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                require soldTokens < 30 * 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                    else:
                                                        if block.timestamp <= stor15:
                                                            require soldTokens < 30 * 10^6 * 10^decimals
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                            require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                                        else:
                                                            if block.timestamp < stor12:
                                                                require soldTokens < 10^6 * 10^decimals
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                            else:
                                                                if block.timestamp > _getLastDate:
                                                                    require soldTokens < 10^6 * 10^decimals
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 10^6 * 10^decimals
                                                                else:
                                                                    require soldTokens < 30 * 10^6 * 10^decimals
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= soldTokens
                                                                    require soldTokens + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= 30 * 10^6 * 10^decimals
                                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                    require msg.sender
                                    require (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * stor20 / 100)
                                    require balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)
                                    emit Transfer(((msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100)), this.address, msg.sender);
                                    emit TokensPurchased(msg.value, (msg.value * rate / 10^9) + (msg.value * rate / 10^9 * stor20 / 100), msg.sender, msg.sender);
}



}
