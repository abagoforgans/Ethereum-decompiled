contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint8 stor9;
mapping of uint256 stor20;
uint8 stor22;

function _fallback() payable {
    stor0 = 1000000000 * 10^18
    stor2 = 16000
    stor9 = 0
    require not msg.value
    stor1 = msg.sender
    stor20[stor1] = 319000000 * 10^18
    stor22 = 0
    emit Transfer(stor20[stor1], 0, stor1);
    return code.data[505 len 9822]
}



// =====================  Runtime code  =====================


const name = 'OTPPAY'

const decimals = 18

const symbol = 'OTP'


uint256 _totalsupply;
address owner;
uint256 _price_tokn_PRE;
uint256 _price_tokn_ICO1;
uint256 _price_tokn_ICO2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 pre_startdate;
uint256 ico1_startdate;
uint256 ico2_startdate;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
address stor19;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stage;

function totalSupply() {
    return _totalsupply
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

function owner() {
    return owner
}

function _price_tokn_ICO1() {
    return _price_tokn_ICO1
}

function _price_tokn_ICO2() {
    return _price_tokn_ICO2
}

function _totalsupply() {
    return _totalsupply
}

function stage() {
    require stage <= 5
    return stage
}

function ico1_startdate() {
    return ico1_startdate
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function ico2_startdate() {
    return ico2_startdate
}

function PauseICO() {
    require msg.sender == owner
    stor9 = 1
}

function ResumeICO() {
    require msg.sender == owner
    stor9 = 0
}

function set_centralAccount(address arg1) {
    require msg.sender == owner
    stor19 = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function start_PREICO() {
    require msg.sender == owner
    require stage <= 5
    require not stage
    stage = 1
    stor9 = 0
    stor16 = 20000 * 10^18 * 3600
    balanceOf[address(this.address)] = stor16
    pre_startdate = block.timestamp
    stor13 = block.timestamp + (720 * 24 * 3600)
    emit Transfer(balanceOf[address(this.address)], 0, this.address);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferby(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor19
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function start_ICO2(uint256 arg1) {
    require msg.sender == owner
    require stage <= 5
    require stage == 2
    require arg1
    if block.timestamp <= stor14:
        require not balanceOf[address(this.address)]
    stage = 3
    stor9 = 0
    _price_tokn_ICO2 = arg1
    stor18 = 264000000 * 10^18
    require balanceOf[address(this.address)] + stor18 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += stor18
    ico2_startdate = block.timestamp
    stor15 = block.timestamp + (720 * 24 * 3600)
    emit Transfer(balanceOf[address(this.address)], 0, this.address);
}

function start_ICO1(uint256 arg1) {
    require msg.sender == owner
    require stage <= 5
    require stage == 1
    require arg1
    if block.timestamp <= stor13:
        require not balanceOf[address(this.address)]
    stage = 2
    stor9 = 0
    _price_tokn_ICO1 = arg1
    stor17 = 345000000 * 10^18
    require balanceOf[address(this.address)] + stor17 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += stor17
    ico1_startdate = block.timestamp
    stor14 = block.timestamp + (720 * 24 * 3600)
    emit Transfer(balanceOf[address(this.address)], 0, this.address);
}

function end_ICO(uint256 arg1) {
    require msg.sender == owner
    require stage <= 5
    require stage == 3
    require arg1
    if block.timestamp <= stor15:
        require not balanceOf[address(this.address)]
    stage = 5
    stor8 = arg1
    require 10^18 * stor8 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * 10^18 * stor8
    require balanceOf[stor1] + (10^18 * stor8) >= balanceOf[stor1]
    balanceOf[stor1] += 10^18 * stor8
    require balanceOf[address(this.address)] <= _totalsupply
    _totalsupply -= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    emit Transfer(balanceOf[address(this.address)], this.address, 0);
    emit Transfer(stor8, this.address, owner);
}

function _fallback() payable {
    require stage <= 5
    require stage != 5
    require not stor9
    require owner != msg.sender
    require stage <= 5
    if stage != 1:
        require stage <= 5
        if stage != 2:
            require stage <= 5
            require stage == 3
            require block.timestamp <= stor15
            if not msg.value:
                stor5 = 0
            else:
                require msg.value
                require msg.value * _price_tokn_ICO2 / msg.value == _price_tokn_ICO2
                stor5 = msg.value * _price_tokn_ICO2
            if not stor5:
                stor6 = 0
            else:
                require stor5
                require 10 * stor5 / stor5 == 10
                stor6 = 10 * stor5 / 100
        else:
            if block.timestamp <= stor14:
                if not msg.value:
                    stor5 = 0
                else:
                    require msg.value
                    require msg.value * _price_tokn_ICO1 / msg.value == _price_tokn_ICO1
                    stor5 = msg.value * _price_tokn_ICO1
                if not stor5:
                    stor6 = 0
                else:
                    require stor5
                    require 15 * stor5 / stor5 == 15
                    stor6 = 15 * stor5 / 100
            else:
                require stage <= 5
                require stage == 3
                require block.timestamp <= stor15
                if not msg.value:
                    stor5 = 0
                else:
                    require msg.value
                    require msg.value * _price_tokn_ICO2 / msg.value == _price_tokn_ICO2
                    stor5 = msg.value * _price_tokn_ICO2
                if not stor5:
                    stor6 = 0
                else:
                    require stor5
                    require 10 * stor5 / stor5 == 10
                    stor6 = 10 * stor5 / 100
    else:
        if block.timestamp <= stor13:
            if not msg.value:
                stor5 = 0
            else:
                require msg.value
                require msg.value * _price_tokn_PRE / msg.value == _price_tokn_PRE
                stor5 = msg.value * _price_tokn_PRE
            if not stor5:
                stor6 = 0
            else:
                require stor5
                require 20 * stor5 / stor5 == 20
                stor6 = 20 * stor5 / 100
        else:
            require stage <= 5
            if stage != 2:
                require stage <= 5
                require stage == 3
                require block.timestamp <= stor15
                if not msg.value:
                    stor5 = 0
                else:
                    require msg.value
                    require msg.value * _price_tokn_ICO2 / msg.value == _price_tokn_ICO2
                    stor5 = msg.value * _price_tokn_ICO2
                if not stor5:
                    stor6 = 0
                else:
                    require stor5
                    require 10 * stor5 / stor5 == 10
                    stor6 = 10 * stor5 / 100
            else:
                if block.timestamp <= stor14:
                    if not msg.value:
                        stor5 = 0
                    else:
                        require msg.value
                        require msg.value * _price_tokn_ICO1 / msg.value == _price_tokn_ICO1
                        stor5 = msg.value * _price_tokn_ICO1
                    if not stor5:
                        stor6 = 0
                    else:
                        require stor5
                        require 15 * stor5 / stor5 == 15
                        stor6 = 15 * stor5 / 100
                else:
                    require stage <= 5
                    require stage == 3
                    require block.timestamp <= stor15
                    if not msg.value:
                        stor5 = 0
                    else:
                        require msg.value
                        require msg.value * _price_tokn_ICO2 / msg.value == _price_tokn_ICO2
                        stor5 = msg.value * _price_tokn_ICO2
                    if not stor5:
                        stor6 = 0
                    else:
                        require stor5
                        require 10 * stor5 / stor5 == 10
                        stor6 = 10 * stor5 / 100
    stor7 = stor5 + stor6
    require msg.sender
    require balanceOf[address(this.address)] >= stor7
    require stor7 > 0
    require stor7 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= stor7
    require balanceOf[address(msg.sender)] + stor7 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += stor7
    emit Transfer(stor7, this.address, msg.sender);
}



}
