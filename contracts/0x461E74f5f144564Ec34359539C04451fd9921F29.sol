contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint256 stor2;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;

function _fallback() payable {
    stor1 = 25000 * 10^18
    stor7 = 1512310800
    stor8 = 1512311700
    stor9 = 900
    stor10 = 1512312000
    stor11 = 1512312900
    stor12 = 450
    stor13 = 420456 * 24 * 3600
    stor14 = 420552 * 24 * 3600
    stor15 = 375
    stor16 = 420648 * 24 * 3600
    stor17 = 420792 * 24 * 3600
    stor18 = 300
    stor19 = 420888 * 24 * 3600
    stor20 = 421032 * 24 * 3600
    stor21 = 225
    require not msg.value
    stor2[address(msg.sender)] = stor1
    stor4 = code.data[2868 len 20]
    stor5 = msg.sender
    stor6 = code.data[2900 len 20]
    return code.data[264 len 2592]
}



// =====================  Runtime code  =====================


const name = '399TEST TOKEN  COIN'

const decimals = 18

const symbol = 'TTK399'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor4;
address stor5;
address stor6;
uint256 _presaleStartTimestamp;
uint256 _presaleEndTimestamp;
uint256 stor9;
uint256 _batch1_icosaleStartTimestamp;
uint256 _batch1_icosaleEndTimestamp;
uint256 _batch1_rate;
uint256 _batch2_icosaleStartTimestamp;
uint256 _batch2_icosaleEndTimestamp;
uint256 _batch2_rate;
uint256 _batch3_icosaleStartTimestamp;
uint256 _batch3_icosaleEndTimestamp;
uint256 _batch3_rate;
uint256 _batch4_icosaleStartTimestamp;
uint256 _batch4_icosaleEndTimestamp;
uint256 _batch4_rate;

function _batch1_rate() {
    return _batch1_rate
}

function totalSupply() {
    return totalSupply
}

function _batch1_icosaleEndTimestamp() {
    return _batch1_icosaleEndTimestamp
}

function _batch2_rate() {
    return _batch2_rate
}

function _batch4_icosaleStartTimestamp() {
    return _batch4_icosaleStartTimestamp
}

function _batch1_icosaleStartTimestamp() {
    return _batch1_icosaleStartTimestamp
}

function _batch2_icosaleEndTimestamp() {
    return _batch2_icosaleEndTimestamp
}

function _presaleStartTimestamp() {
    return _presaleStartTimestamp
}

function _presaleEndTimestamp() {
    return _presaleEndTimestamp
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _batch4_icosaleEndTimestamp() {
    return _batch4_icosaleEndTimestamp
}

function _batch3_rate() {
    return _batch3_rate
}

function _batch3_icosaleEndTimestamp() {
    return _batch3_icosaleEndTimestamp
}

function _batch4_rate() {
    return _batch4_rate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function allowedToSpend(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _batch3_icosaleStartTimestamp() {
    return _batch3_icosaleStartTimestamp
}

function _batch2_icosaleStartTimestamp() {
    return _batch2_icosaleStartTimestamp
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _transfer(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(msg.sender)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function getRate() {
    if block.timestamp >= _presaleStartTimestamp:
        if block.timestamp <= _presaleEndTimestamp:
            return stor9
    if block.timestamp >= _batch1_icosaleStartTimestamp:
        if block.timestamp <= _batch1_icosaleEndTimestamp:
            return _batch1_rate
    if block.timestamp >= _batch2_icosaleStartTimestamp:
        if block.timestamp <= _batch2_icosaleEndTimestamp:
            return _batch2_rate
    if block.timestamp >= _batch3_icosaleStartTimestamp:
        if block.timestamp <= _batch3_icosaleEndTimestamp:
            return _batch3_rate
    if block.timestamp < _batch4_icosaleStartTimestamp:
        return 0
    if block.timestamp > _batch4_icosaleEndTimestamp:
        return 0
    return _batch4_rate
}

function calculateTokens(uint256 arg1) {
    if block.timestamp >= _presaleStartTimestamp:
        if block.timestamp <= _presaleEndTimestamp:
            return (arg1 * stor9)
    if block.timestamp >= _batch1_icosaleStartTimestamp:
        if block.timestamp <= _batch1_icosaleEndTimestamp:
            return (arg1 * _batch1_rate)
    if block.timestamp >= _batch2_icosaleStartTimestamp:
        if block.timestamp <= _batch2_icosaleEndTimestamp:
            return (arg1 * _batch2_rate)
    if block.timestamp >= _batch3_icosaleStartTimestamp:
        if block.timestamp <= _batch3_icosaleEndTimestamp:
            return (arg1 * _batch3_rate)
    if block.timestamp < _batch4_icosaleStartTimestamp:
        return 0
    if block.timestamp > _batch4_icosaleEndTimestamp:
        return 0
    return (arg1 * _batch4_rate)
}

function _fallback() payable {
    require msg.sender
    require msg.value > 0
    require msg.sender
    if block.timestamp < _presaleStartTimestamp:
        if block.timestamp < _batch1_icosaleStartTimestamp:
            if block.timestamp < _batch2_icosaleStartTimestamp:
                if block.timestamp < _batch3_icosaleStartTimestamp:
                    if block.timestamp < _batch4_icosaleStartTimestamp:
                        require balanceOf[stor5] >= 0
                        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                        emit Transfer(0, stor5, msg.sender);
                    else:
                        if block.timestamp > _batch4_icosaleEndTimestamp:
                            require balanceOf[stor5] >= 0
                            require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                            emit Transfer(0, stor5, msg.sender);
                        else:
                            require balanceOf[stor5] >= msg.value * _batch4_rate
                            require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                            balanceOf[stor5] += -1 * msg.value * _batch4_rate
                            balanceOf[msg.sender] += msg.value * _batch4_rate
                            emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                else:
                    if block.timestamp <= _batch3_icosaleEndTimestamp:
                        require balanceOf[stor5] >= msg.value * _batch3_rate
                        require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                        balanceOf[stor5] += -1 * msg.value * _batch3_rate
                        balanceOf[msg.sender] += msg.value * _batch3_rate
                        emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                    else:
                        if block.timestamp < _batch4_icosaleStartTimestamp:
                            require balanceOf[stor5] >= 0
                            require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                            emit Transfer(0, stor5, msg.sender);
                        else:
                            if block.timestamp > _batch4_icosaleEndTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                require balanceOf[stor5] >= msg.value * _batch4_rate
                                require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                balanceOf[msg.sender] += msg.value * _batch4_rate
                                emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
            else:
                if block.timestamp <= _batch2_icosaleEndTimestamp:
                    require balanceOf[stor5] >= msg.value * _batch2_rate
                    require balanceOf[address(msg.sender)] + (msg.value * _batch2_rate) > balanceOf[address(msg.sender)]
                    balanceOf[stor5] += -1 * msg.value * _batch2_rate
                    balanceOf[msg.sender] += msg.value * _batch2_rate
                    emit Transfer((msg.value * _batch2_rate), stor5, msg.sender);
                else:
                    if block.timestamp < _batch3_icosaleStartTimestamp:
                        if block.timestamp < _batch4_icosaleStartTimestamp:
                            require balanceOf[stor5] >= 0
                            require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                            emit Transfer(0, stor5, msg.sender);
                        else:
                            if block.timestamp > _batch4_icosaleEndTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                require balanceOf[stor5] >= msg.value * _batch4_rate
                                require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                balanceOf[msg.sender] += msg.value * _batch4_rate
                                emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                    else:
                        if block.timestamp <= _batch3_icosaleEndTimestamp:
                            require balanceOf[stor5] >= msg.value * _batch3_rate
                            require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                            balanceOf[stor5] += -1 * msg.value * _batch3_rate
                            balanceOf[msg.sender] += msg.value * _batch3_rate
                            emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                        else:
                            if block.timestamp < _batch4_icosaleStartTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                if block.timestamp > _batch4_icosaleEndTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    require balanceOf[stor5] >= msg.value * _batch4_rate
                                    require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                    balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                    balanceOf[msg.sender] += msg.value * _batch4_rate
                                    emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
        else:
            if block.timestamp <= _batch1_icosaleEndTimestamp:
                require balanceOf[stor5] >= msg.value * _batch1_rate
                require balanceOf[address(msg.sender)] + (msg.value * _batch1_rate) > balanceOf[address(msg.sender)]
                balanceOf[stor5] += -1 * msg.value * _batch1_rate
                balanceOf[msg.sender] += msg.value * _batch1_rate
                emit Transfer((msg.value * _batch1_rate), stor5, msg.sender);
            else:
                if block.timestamp < _batch2_icosaleStartTimestamp:
                    if block.timestamp < _batch3_icosaleStartTimestamp:
                        if block.timestamp < _batch4_icosaleStartTimestamp:
                            require balanceOf[stor5] >= 0
                            require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                            emit Transfer(0, stor5, msg.sender);
                        else:
                            if block.timestamp > _batch4_icosaleEndTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                require balanceOf[stor5] >= msg.value * _batch4_rate
                                require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                balanceOf[msg.sender] += msg.value * _batch4_rate
                                emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                    else:
                        if block.timestamp <= _batch3_icosaleEndTimestamp:
                            require balanceOf[stor5] >= msg.value * _batch3_rate
                            require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                            balanceOf[stor5] += -1 * msg.value * _batch3_rate
                            balanceOf[msg.sender] += msg.value * _batch3_rate
                            emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                        else:
                            if block.timestamp < _batch4_icosaleStartTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                if block.timestamp > _batch4_icosaleEndTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    require balanceOf[stor5] >= msg.value * _batch4_rate
                                    require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                    balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                    balanceOf[msg.sender] += msg.value * _batch4_rate
                                    emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                else:
                    if block.timestamp <= _batch2_icosaleEndTimestamp:
                        require balanceOf[stor5] >= msg.value * _batch2_rate
                        require balanceOf[address(msg.sender)] + (msg.value * _batch2_rate) > balanceOf[address(msg.sender)]
                        balanceOf[stor5] += -1 * msg.value * _batch2_rate
                        balanceOf[msg.sender] += msg.value * _batch2_rate
                        emit Transfer((msg.value * _batch2_rate), stor5, msg.sender);
                    else:
                        if block.timestamp < _batch3_icosaleStartTimestamp:
                            if block.timestamp < _batch4_icosaleStartTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                if block.timestamp > _batch4_icosaleEndTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    require balanceOf[stor5] >= msg.value * _batch4_rate
                                    require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                    balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                    balanceOf[msg.sender] += msg.value * _batch4_rate
                                    emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                        else:
                            if block.timestamp <= _batch3_icosaleEndTimestamp:
                                require balanceOf[stor5] >= msg.value * _batch3_rate
                                require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                                balanceOf[stor5] += -1 * msg.value * _batch3_rate
                                balanceOf[msg.sender] += msg.value * _batch3_rate
                                emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                            else:
                                if block.timestamp < _batch4_icosaleStartTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    if block.timestamp > _batch4_icosaleEndTimestamp:
                                        require balanceOf[stor5] >= 0
                                        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                        emit Transfer(0, stor5, msg.sender);
                                    else:
                                        require balanceOf[stor5] >= msg.value * _batch4_rate
                                        require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                        balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                        balanceOf[msg.sender] += msg.value * _batch4_rate
                                        emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
    else:
        if block.timestamp <= _presaleEndTimestamp:
            require balanceOf[stor5] >= msg.value * stor9
            require balanceOf[address(msg.sender)] + (msg.value * stor9) > balanceOf[address(msg.sender)]
            balanceOf[stor5] += -1 * msg.value * stor9
            balanceOf[msg.sender] += msg.value * stor9
            emit Transfer((msg.value * stor9), stor5, msg.sender);
        else:
            if block.timestamp < _batch1_icosaleStartTimestamp:
                if block.timestamp < _batch2_icosaleStartTimestamp:
                    if block.timestamp < _batch3_icosaleStartTimestamp:
                        if block.timestamp < _batch4_icosaleStartTimestamp:
                            require balanceOf[stor5] >= 0
                            require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                            emit Transfer(0, stor5, msg.sender);
                        else:
                            if block.timestamp > _batch4_icosaleEndTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                require balanceOf[stor5] >= msg.value * _batch4_rate
                                require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                balanceOf[msg.sender] += msg.value * _batch4_rate
                                emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                    else:
                        if block.timestamp <= _batch3_icosaleEndTimestamp:
                            require balanceOf[stor5] >= msg.value * _batch3_rate
                            require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                            balanceOf[stor5] += -1 * msg.value * _batch3_rate
                            balanceOf[msg.sender] += msg.value * _batch3_rate
                            emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                        else:
                            if block.timestamp < _batch4_icosaleStartTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                if block.timestamp > _batch4_icosaleEndTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    require balanceOf[stor5] >= msg.value * _batch4_rate
                                    require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                    balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                    balanceOf[msg.sender] += msg.value * _batch4_rate
                                    emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                else:
                    if block.timestamp <= _batch2_icosaleEndTimestamp:
                        require balanceOf[stor5] >= msg.value * _batch2_rate
                        require balanceOf[address(msg.sender)] + (msg.value * _batch2_rate) > balanceOf[address(msg.sender)]
                        balanceOf[stor5] += -1 * msg.value * _batch2_rate
                        balanceOf[msg.sender] += msg.value * _batch2_rate
                        emit Transfer((msg.value * _batch2_rate), stor5, msg.sender);
                    else:
                        if block.timestamp < _batch3_icosaleStartTimestamp:
                            if block.timestamp < _batch4_icosaleStartTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                if block.timestamp > _batch4_icosaleEndTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    require balanceOf[stor5] >= msg.value * _batch4_rate
                                    require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                    balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                    balanceOf[msg.sender] += msg.value * _batch4_rate
                                    emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                        else:
                            if block.timestamp <= _batch3_icosaleEndTimestamp:
                                require balanceOf[stor5] >= msg.value * _batch3_rate
                                require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                                balanceOf[stor5] += -1 * msg.value * _batch3_rate
                                balanceOf[msg.sender] += msg.value * _batch3_rate
                                emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                            else:
                                if block.timestamp < _batch4_icosaleStartTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    if block.timestamp > _batch4_icosaleEndTimestamp:
                                        require balanceOf[stor5] >= 0
                                        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                        emit Transfer(0, stor5, msg.sender);
                                    else:
                                        require balanceOf[stor5] >= msg.value * _batch4_rate
                                        require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                        balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                        balanceOf[msg.sender] += msg.value * _batch4_rate
                                        emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
            else:
                if block.timestamp <= _batch1_icosaleEndTimestamp:
                    require balanceOf[stor5] >= msg.value * _batch1_rate
                    require balanceOf[address(msg.sender)] + (msg.value * _batch1_rate) > balanceOf[address(msg.sender)]
                    balanceOf[stor5] += -1 * msg.value * _batch1_rate
                    balanceOf[msg.sender] += msg.value * _batch1_rate
                    emit Transfer((msg.value * _batch1_rate), stor5, msg.sender);
                else:
                    if block.timestamp < _batch2_icosaleStartTimestamp:
                        if block.timestamp < _batch3_icosaleStartTimestamp:
                            if block.timestamp < _batch4_icosaleStartTimestamp:
                                require balanceOf[stor5] >= 0
                                require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                emit Transfer(0, stor5, msg.sender);
                            else:
                                if block.timestamp > _batch4_icosaleEndTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    require balanceOf[stor5] >= msg.value * _batch4_rate
                                    require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                    balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                    balanceOf[msg.sender] += msg.value * _batch4_rate
                                    emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                        else:
                            if block.timestamp <= _batch3_icosaleEndTimestamp:
                                require balanceOf[stor5] >= msg.value * _batch3_rate
                                require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                                balanceOf[stor5] += -1 * msg.value * _batch3_rate
                                balanceOf[msg.sender] += msg.value * _batch3_rate
                                emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                            else:
                                if block.timestamp < _batch4_icosaleStartTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    if block.timestamp > _batch4_icosaleEndTimestamp:
                                        require balanceOf[stor5] >= 0
                                        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                        emit Transfer(0, stor5, msg.sender);
                                    else:
                                        require balanceOf[stor5] >= msg.value * _batch4_rate
                                        require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                        balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                        balanceOf[msg.sender] += msg.value * _batch4_rate
                                        emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                    else:
                        if block.timestamp <= _batch2_icosaleEndTimestamp:
                            require balanceOf[stor5] >= msg.value * _batch2_rate
                            require balanceOf[address(msg.sender)] + (msg.value * _batch2_rate) > balanceOf[address(msg.sender)]
                            balanceOf[stor5] += -1 * msg.value * _batch2_rate
                            balanceOf[msg.sender] += msg.value * _batch2_rate
                            emit Transfer((msg.value * _batch2_rate), stor5, msg.sender);
                        else:
                            if block.timestamp < _batch3_icosaleStartTimestamp:
                                if block.timestamp < _batch4_icosaleStartTimestamp:
                                    require balanceOf[stor5] >= 0
                                    require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                    emit Transfer(0, stor5, msg.sender);
                                else:
                                    if block.timestamp > _batch4_icosaleEndTimestamp:
                                        require balanceOf[stor5] >= 0
                                        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                        emit Transfer(0, stor5, msg.sender);
                                    else:
                                        require balanceOf[stor5] >= msg.value * _batch4_rate
                                        require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                        balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                        balanceOf[msg.sender] += msg.value * _batch4_rate
                                        emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
                            else:
                                if block.timestamp <= _batch3_icosaleEndTimestamp:
                                    require balanceOf[stor5] >= msg.value * _batch3_rate
                                    require balanceOf[address(msg.sender)] + (msg.value * _batch3_rate) > balanceOf[address(msg.sender)]
                                    balanceOf[stor5] += -1 * msg.value * _batch3_rate
                                    balanceOf[msg.sender] += msg.value * _batch3_rate
                                    emit Transfer((msg.value * _batch3_rate), stor5, msg.sender);
                                else:
                                    if block.timestamp < _batch4_icosaleStartTimestamp:
                                        require balanceOf[stor5] >= 0
                                        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                        emit Transfer(0, stor5, msg.sender);
                                    else:
                                        if block.timestamp > _batch4_icosaleEndTimestamp:
                                            require balanceOf[stor5] >= 0
                                            require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                                            emit Transfer(0, stor5, msg.sender);
                                        else:
                                            require balanceOf[stor5] >= msg.value * _batch4_rate
                                            require balanceOf[address(msg.sender)] + (msg.value * _batch4_rate) > balanceOf[address(msg.sender)]
                                            balanceOf[stor5] += -1 * msg.value * _batch4_rate
                                            balanceOf[msg.sender] += msg.value * _batch4_rate
                                            emit Transfer((msg.value * _batch4_rate), stor5, msg.sender);
    require msg.value > 0
    call stor4 with:
       value 950 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor6 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
