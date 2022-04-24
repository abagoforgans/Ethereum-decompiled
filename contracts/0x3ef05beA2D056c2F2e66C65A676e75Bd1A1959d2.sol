contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint256 stor3;
uint8 stor5;
mapping of uint256 stor8;
uint8 stor10;

function _fallback() payable {
    stor1 = 250000 * 10^18 * 3600
    stor3 = 4000
    stor5 = 1
    require not msg.value
    stor2 = msg.sender
    stor8[address(msg.sender)] = 700000000 * 10^18
    stor8[this.address] = 200000000 * 10^18
    stor10 = 0
    emit code.data[2832 len 32]: stor8[stor2], 0, stor2
    emit code.data[2832 len 32]: stor8[address(this.address)], 0, stor2
    return code.data[278 len 2554]
}



// =====================  Runtime code  =====================


const name = 'Slidea'

const decimals = 18

const symbol = 'SDA'


uint256 totalsupply;
address owner;
uint256 _price_tokn;
uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stage;

function totalSupply() {
    return totalsupply
}

function _price_tokn() {
    return _price_tokn
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalsupply() {
    return totalsupply
}

function owner() {
    return owner
}

function stage() {
    require stage <= 3
    return stage
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function StopICO() {
    require owner == msg.sender
    stor5 = 1
    stage = 2
}

function releaseICO() {
    require owner == msg.sender
    stor5 = 0
    stage = 1
}

function start_ICO() {
    require owner == msg.sender
    stage = 1
    stor5 = 0
    stor6 = block.timestamp
    stor7 = block.timestamp + (720 * 24 * 3600)
}

function approve(address arg1, uint256 arg2) {
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

function end_ICO() {
    require owner == msg.sender
    stage = 3
    require balanceOf[address(this.address)] <= totalsupply
    totalsupply -= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    emit Transfer(0, this.address, 0);
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stage <= 3
    require stage == 1
    require not stor5
    require owner != msg.sender
    require block.timestamp <= stor7
    if msg.value:
        require msg.value
        require _price_tokn * msg.value / msg.value == _price_tokn
    stor4 = _price_tokn * msg.value
    if balanceOf[address(this.address)] >= _price_tokn * msg.value:
        if _price_tokn * msg.value > 0:
            if balanceOf[address(msg.sender)] + (_price_tokn * msg.value) > balanceOf[address(msg.sender)]:
                balanceOf[address(this.address)] += -1 * _price_tokn * msg.value
                balanceOf[msg.sender] += _price_tokn * msg.value
                emit Transfer((_price_tokn * msg.value), this.address, msg.sender);
}



}
