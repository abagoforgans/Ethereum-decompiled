contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor7;
uint256 stor16;
mapping of uint256 stor17;
uint8 stor21;

function _fallback() payable {
    stor0 = 10000000000 * 10^18
    stor2 = 38000
    stor3 = 24000
    stor7 = 0
    stor16 = 777000000 * 10^18
    require not msg.value
    stor1 = msg.sender
    stor17[address(msg.sender)] = 518000000 * 10^18
    stor21 = 0
    emit Transfer(stor17[stor1], 0, stor1);
    return code.data[223 len 4183]
}



// =====================  Runtime code  =====================


const name = 'SlotBay'

const decimals = 18

const symbol = 'SLB'


uint256 _totalsupply;
address owner;
uint256 _price_tokn_PRE;
uint256 _price_tokn_ICO;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 pre_startdate;
uint256 ico1_startdate;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 eth_received;
uint256 stor16;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor19;
uint256 advisorCount;
uint8 stage;

function totalSupply() {
    return _totalsupply
}

function advisorCount() {
    return advisorCount
}

function _price_tokn_PRE() {
    return _price_tokn_PRE
}

function pre_startdate() {
    return pre_startdate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function eth_received() {
    return eth_received
}

function owner() {
    return owner
}

function _totalsupply() {
    return _totalsupply
}

function stage() {
    require stage <= 4
    return stage
}

function isAdvisor(address arg1) {
    return bool(stor19[address(arg1)])
}

function ico1_startdate() {
    return ico1_startdate
}

function _price_tokn_ICO() {
    return _price_tokn_ICO
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function addAdvisor(address arg1) {
    stor19[address(arg1)] = 1
}

function PauseICO() {
    require owner == msg.sender
    stor7 = 1
}

function ResumeICO() {
    require owner == msg.sender
    stor7 = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function start_PREICO() {
    require owner == msg.sender
    require stage <= 4
    require not stage
    stage = 1
    stor7 = 0
    balanceOf[address(this.address)] = stor16
    pre_startdate = block.timestamp
    stor14 = block.timestamp + (384 * 24 * 3600)
    emit Transfer(balanceOf[address(this.address)], 0, this.address);
}

function end_ICO() {
    require owner == msg.sender
    require stage <= 4
    require stage == 2
    require block.timestamp > stor13
    stage = 4
    require balanceOf[address(this.address)] <= _totalsupply
    _totalsupply -= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    emit Transfer(0, this.address, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require stage <= 4
    require stage == 4
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function start_ICO() {
    require owner == msg.sender
    require stage <= 4
    require stage == 1
    if block.timestamp <= stor14:
        require eth_received >= 1500 * 10^18
    stage = 2
    stor7 = 0
    ico1_startdate = block.timestamp
    stor10 = block.timestamp + (360 * 24 * 3600)
    stor11 = block.timestamp + (720 * 24 * 3600)
    stor12 = block.timestamp + (1080 * 24 * 3600)
    stor13 = block.timestamp + (1440 * 24 * 3600)
    emit Transfer(balanceOf[address(this.address)], 0, this.address);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require stage <= 4
    require stage == 4
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    if stor19[address(arg2)]:
        require block.timestamp > ico1_startdate + (3600 * 24 * 3600)
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stage <= 4
    require stage != 4
    require not stor7
    require owner != msg.sender
    require stage <= 4
    if stage != 1:
        require stage <= 4
        require stage == 2
        require block.timestamp <= stor13
        if block.timestamp >= stor10:
            if block.timestamp >= stor11:
                if block.timestamp >= stor12:
                    if block.timestamp >= stor13:
                    else:
                        if msg.value:
                            require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                            stor4 = _price_tokn_ICO * msg.value
                            stor6 = _price_tokn_ICO * msg.value
                            require msg.sender
                            require balanceOf[address(this.address)] >= _price_tokn_ICO * msg.value
                            require _price_tokn_ICO * msg.value > 0
                            require _price_tokn_ICO * msg.value <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] += -1 * _price_tokn_ICO * msg.value
                            require (_price_tokn_ICO * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = (_price_tokn_ICO * msg.value) + balanceOf[msg.sender]
                            emit Transfer((_price_tokn_ICO * msg.value), this.address, msg.sender);
                        else:
                            stor4 = 0
                            stor6 = 0
                            require msg.sender
                            require balanceOf[address(this.address)] >= 0
                            revert
                else:
                    if msg.value:
                        require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                        stor4 = _price_tokn_ICO * msg.value
                        if _price_tokn_ICO * msg.value:
                            require 5 * _price_tokn_ICO * msg.value / _price_tokn_ICO * msg.value == 5
                            stor5 = 5 * _price_tokn_ICO * msg.value / 100
                            stor6 = stor4 + (5 * _price_tokn_ICO * msg.value / 100)
                            require msg.sender
                            require balanceOf[address(this.address)] >= stor4 + (5 * _price_tokn_ICO * msg.value / 100)
                            require stor4 + (5 * _price_tokn_ICO * msg.value / 100) > 0
                            require stor4 + (5 * _price_tokn_ICO * msg.value / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor4 - (5 * _price_tokn_ICO * msg.value / 100)
                            require stor4 + (5 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = stor4 + (5 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender]
                            emit Transfer((stor4 + (5 * _price_tokn_ICO * msg.value / 100)), this.address, msg.sender);
                        else:
                            stor5 = 0
                            stor6 = stor4
                            require msg.sender
                            require balanceOf[address(this.address)] >= stor4
                            require stor4 > 0
                            require stor4 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= stor4
                            require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                            emit Transfer(stor4, this.address, msg.sender);
                    else:
                        stor4 = 0
                        stor5 = 0
                        stor6 = stor4
                        require msg.sender
                        require balanceOf[address(this.address)] >= stor4
                        require stor4 > 0
                        require stor4 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= stor4
                        require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                        emit Transfer(stor4, this.address, msg.sender);
            else:
                if msg.value:
                    require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                    stor4 = _price_tokn_ICO * msg.value
                    if _price_tokn_ICO * msg.value:
                        require 10 * _price_tokn_ICO * msg.value / _price_tokn_ICO * msg.value == 10
                        stor5 = 10 * _price_tokn_ICO * msg.value / 100
                        stor6 = stor4 + (10 * _price_tokn_ICO * msg.value / 100)
                        require msg.sender
                        require balanceOf[address(this.address)] >= stor4 + (10 * _price_tokn_ICO * msg.value / 100)
                        require stor4 + (10 * _price_tokn_ICO * msg.value / 100) > 0
                        require stor4 + (10 * _price_tokn_ICO * msg.value / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor4 - (10 * _price_tokn_ICO * msg.value / 100)
                        require stor4 + (10 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = stor4 + (10 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender]
                        emit Transfer((stor4 + (10 * _price_tokn_ICO * msg.value / 100)), this.address, msg.sender);
                    else:
                        stor5 = 0
                        stor6 = stor4
                        require msg.sender
                        require balanceOf[address(this.address)] >= stor4
                        require stor4 > 0
                        require stor4 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= stor4
                        require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                        emit Transfer(stor4, this.address, msg.sender);
                else:
                    stor4 = 0
                    stor5 = 0
                    stor6 = stor4
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor4
                    require stor4 > 0
                    require stor4 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor4
                    require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                    emit Transfer(stor4, this.address, msg.sender);
        else:
            if msg.value:
                require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                stor4 = _price_tokn_ICO * msg.value
                if _price_tokn_ICO * msg.value:
                    require 15 * _price_tokn_ICO * msg.value / _price_tokn_ICO * msg.value == 15
                    stor5 = 15 * _price_tokn_ICO * msg.value / 100
                    stor6 = stor4 + (15 * _price_tokn_ICO * msg.value / 100)
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor4 + (15 * _price_tokn_ICO * msg.value / 100)
                    require stor4 + (15 * _price_tokn_ICO * msg.value / 100) > 0
                    require stor4 + (15 * _price_tokn_ICO * msg.value / 100) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor4 - (15 * _price_tokn_ICO * msg.value / 100)
                    require stor4 + (15 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor4 + (15 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender]
                    emit Transfer((stor4 + (15 * _price_tokn_ICO * msg.value / 100)), this.address, msg.sender);
                else:
                    stor5 = 0
                    stor6 = stor4
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor4
                    require stor4 > 0
                    require stor4 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor4
                    require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                    emit Transfer(stor4, this.address, msg.sender);
            else:
                stor4 = 0
                stor5 = 0
                stor6 = stor4
                require msg.sender
                require balanceOf[address(this.address)] >= stor4
                require stor4 > 0
                require stor4 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor4
                require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                emit Transfer(stor4, this.address, msg.sender);
    else:
        if block.timestamp > stor14:
            require stage <= 4
            require stage == 2
            require block.timestamp <= stor13
            if block.timestamp >= stor10:
                if block.timestamp >= stor11:
                    if block.timestamp >= stor12:
                        if block.timestamp >= stor13:
                        else:
                            if msg.value:
                                require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                                stor4 = _price_tokn_ICO * msg.value
                                stor6 = _price_tokn_ICO * msg.value
                                require msg.sender
                                require balanceOf[address(this.address)] >= _price_tokn_ICO * msg.value
                                require _price_tokn_ICO * msg.value > 0
                                require _price_tokn_ICO * msg.value <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] += -1 * _price_tokn_ICO * msg.value
                                require (_price_tokn_ICO * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = (_price_tokn_ICO * msg.value) + balanceOf[msg.sender]
                                emit Transfer((_price_tokn_ICO * msg.value), this.address, msg.sender);
                            else:
                                stor4 = 0
                                stor6 = 0
                                require msg.sender
                                require balanceOf[address(this.address)] >= 0
                                revert
                    else:
                        if msg.value:
                            require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                            stor4 = _price_tokn_ICO * msg.value
                            if _price_tokn_ICO * msg.value:
                                require 5 * _price_tokn_ICO * msg.value / _price_tokn_ICO * msg.value == 5
                                stor5 = 5 * _price_tokn_ICO * msg.value / 100
                                stor6 = stor4 + (5 * _price_tokn_ICO * msg.value / 100)
                                require msg.sender
                                require balanceOf[address(this.address)] >= stor4 + (5 * _price_tokn_ICO * msg.value / 100)
                                require stor4 + (5 * _price_tokn_ICO * msg.value / 100) > 0
                                require stor4 + (5 * _price_tokn_ICO * msg.value / 100) <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor4 - (5 * _price_tokn_ICO * msg.value / 100)
                                require stor4 + (5 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = stor4 + (5 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender]
                                emit Transfer((stor4 + (5 * _price_tokn_ICO * msg.value / 100)), this.address, msg.sender);
                            else:
                                stor5 = 0
                                stor6 = stor4
                                require msg.sender
                                require balanceOf[address(this.address)] >= stor4
                                require stor4 > 0
                                require stor4 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= stor4
                                require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                                emit Transfer(stor4, this.address, msg.sender);
                        else:
                            stor4 = 0
                            stor5 = 0
                            stor6 = stor4
                            require msg.sender
                            require balanceOf[address(this.address)] >= stor4
                            require stor4 > 0
                            require stor4 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= stor4
                            require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                            emit Transfer(stor4, this.address, msg.sender);
                else:
                    if msg.value:
                        require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                        stor4 = _price_tokn_ICO * msg.value
                        if _price_tokn_ICO * msg.value:
                            require 10 * _price_tokn_ICO * msg.value / _price_tokn_ICO * msg.value == 10
                            stor5 = 10 * _price_tokn_ICO * msg.value / 100
                            stor6 = stor4 + (10 * _price_tokn_ICO * msg.value / 100)
                            require msg.sender
                            require balanceOf[address(this.address)] >= stor4 + (10 * _price_tokn_ICO * msg.value / 100)
                            require stor4 + (10 * _price_tokn_ICO * msg.value / 100) > 0
                            require stor4 + (10 * _price_tokn_ICO * msg.value / 100) <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor4 - (10 * _price_tokn_ICO * msg.value / 100)
                            require stor4 + (10 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = stor4 + (10 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender]
                            emit Transfer((stor4 + (10 * _price_tokn_ICO * msg.value / 100)), this.address, msg.sender);
                        else:
                            stor5 = 0
                            stor6 = stor4
                            require msg.sender
                            require balanceOf[address(this.address)] >= stor4
                            require stor4 > 0
                            require stor4 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= stor4
                            require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                            emit Transfer(stor4, this.address, msg.sender);
                    else:
                        stor4 = 0
                        stor5 = 0
                        stor6 = stor4
                        require msg.sender
                        require balanceOf[address(this.address)] >= stor4
                        require stor4 > 0
                        require stor4 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= stor4
                        require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                        emit Transfer(stor4, this.address, msg.sender);
            else:
                if msg.value:
                    require _price_tokn_ICO * msg.value / msg.value == _price_tokn_ICO
                    stor4 = _price_tokn_ICO * msg.value
                    if _price_tokn_ICO * msg.value:
                        require 15 * _price_tokn_ICO * msg.value / _price_tokn_ICO * msg.value == 15
                        stor5 = 15 * _price_tokn_ICO * msg.value / 100
                        stor6 = stor4 + (15 * _price_tokn_ICO * msg.value / 100)
                        require msg.sender
                        require balanceOf[address(this.address)] >= stor4 + (15 * _price_tokn_ICO * msg.value / 100)
                        require stor4 + (15 * _price_tokn_ICO * msg.value / 100) > 0
                        require stor4 + (15 * _price_tokn_ICO * msg.value / 100) <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor4 - (15 * _price_tokn_ICO * msg.value / 100)
                        require stor4 + (15 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = stor4 + (15 * _price_tokn_ICO * msg.value / 100) + balanceOf[msg.sender]
                        emit Transfer((stor4 + (15 * _price_tokn_ICO * msg.value / 100)), this.address, msg.sender);
                    else:
                        stor5 = 0
                        stor6 = stor4
                        require msg.sender
                        require balanceOf[address(this.address)] >= stor4
                        require stor4 > 0
                        require stor4 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= stor4
                        require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                        emit Transfer(stor4, this.address, msg.sender);
                else:
                    stor4 = 0
                    stor5 = 0
                    stor6 = stor4
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor4
                    require stor4 > 0
                    require stor4 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor4
                    require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                    emit Transfer(stor4, this.address, msg.sender);
        else:
            require eth_received <= 1500 * 10^18
            require msg.value + eth_received >= eth_received
            eth_received += msg.value
            if msg.value:
                require _price_tokn_PRE * msg.value / msg.value == _price_tokn_PRE
                stor4 = _price_tokn_PRE * msg.value
                if _price_tokn_PRE * msg.value:
                    require 58 * _price_tokn_PRE * msg.value / _price_tokn_PRE * msg.value == 58
                    stor5 = 58 * _price_tokn_PRE * msg.value / 100
                    stor6 = stor4 + (58 * _price_tokn_PRE * msg.value / 100)
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor4 + (58 * _price_tokn_PRE * msg.value / 100)
                    require stor4 + (58 * _price_tokn_PRE * msg.value / 100) > 0
                    require stor4 + (58 * _price_tokn_PRE * msg.value / 100) <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor4 - (58 * _price_tokn_PRE * msg.value / 100)
                    require stor4 + (58 * _price_tokn_PRE * msg.value / 100) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor4 + (58 * _price_tokn_PRE * msg.value / 100) + balanceOf[msg.sender]
                    emit Transfer((stor4 + (58 * _price_tokn_PRE * msg.value / 100)), this.address, msg.sender);
                else:
                    stor5 = 0
                    stor6 = stor4
                    require msg.sender
                    require balanceOf[address(this.address)] >= stor4
                    require stor4 > 0
                    require stor4 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor4
                    require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                    emit Transfer(stor4, this.address, msg.sender);
            else:
                stor4 = 0
                stor5 = 0
                stor6 = stor4
                require msg.sender
                require balanceOf[address(this.address)] >= stor4
                require stor4 > 0
                require stor4 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor4
                require stor4 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = stor4 + balanceOf[msg.sender]
                emit Transfer(stor4, this.address, msg.sender);
}



}
