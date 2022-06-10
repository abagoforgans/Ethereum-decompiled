contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint8 stor8;
mapping of uint256 stor9;
uint8 stor11; offset 160
address stor11;

function _fallback() payable {
    stor0 = 1000000000 * 10^18
    stor8 = 0
    address(stor11.field_0) = 0xfb42d36862ca73a9f517081e3fa2c36289cd976f
    require not msg.value
    stor1 = msg.sender
    stor9[stor1] = 500000000 * 10^18
    stor9[address(this.address)] = 500000000 * 10^18
    uint8(stor11.field_160) = 0
    emit Transfer(stor9[stor1], 0, stor1);
    emit Transfer(stor9[address(this.address)], 0, this.address);
    return code.data[807 len 6486]
}



// =====================  Runtime code  =====================


const name = 'NafCoin'

const decimals = 18

const symbol = 'NFC'


uint256 _totalsupply;
address owner;
uint256 _price_tokn;
uint256 stor3;
uint256 pre_startdate;
uint256 ico_startdate;
uint256 pre_enddate;
uint256 ico_enddate;
uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stage; offset 160
address stor11;

function totalSupply() {
    return _totalsupply
}

function ico_startdate() {
    return ico_startdate
}

function _price_tokn() {
    return _price_tokn
}

function pre_startdate() {
    return pre_startdate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ico_enddate() {
    return ico_enddate
}

function owner() {
    return owner
}

function _totalsupply() {
    return _totalsupply
}

function stage() {
    require stage <= 3
    return stage
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function pre_enddate() {
    return pre_enddate
}

function StopICO() {
    require msg.sender == owner
    stor8 = 1
}

function releaseICO() {
    require msg.sender == owner
    stor8 = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function start_ICO() {
    require msg.sender == owner
    require stage <= 3
    require stage == 1
    stage = 2
    stor8 = 0
    _price_tokn = 1366
    ico_startdate = block.timestamp
    ico_enddate = block.timestamp + (1440 * 24 * 3600)
}

function start_PREICO() {
    require msg.sender == owner
    require stage <= 3
    require not stage
    stage = 1
    stor8 = 0
    _price_tokn = 1366
    pre_startdate = block.timestamp
    pre_enddate = block.timestamp + (744 * 24 * 3600)
}

function end_ICO() {
    require msg.sender == owner
    stage = 3
    require balanceOf[stor1] + balanceOf[address(this.address)] >= balanceOf[stor1]
    balanceOf[stor1] += balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    emit Transfer(balanceOf[address(this.address)], this.address, owner);
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

function _fallback() payable {
    require msg.value >= 10^14
    require not stor8
    require owner != msg.sender
    require stage <= 3
    if stage != 1:
        require stage <= 3
        require stage == 2
        require block.timestamp <= ico_enddate
    else:
        if block.timestamp > pre_enddate:
            require stage <= 3
            require stage == 2
            require block.timestamp <= ico_enddate
    if not msg.value:
        stor3 = 0
    else:
        require msg.value
        require msg.value * _price_tokn / msg.value == _price_tokn
        stor3 = msg.value * _price_tokn
    call stor11 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.sender
    require balanceOf[address(this.address)] >= stor3
    require stor3 > 0
    require stor3 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= stor3
    require balanceOf[address(msg.sender)] + stor3 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += stor3
    emit Transfer(stor3, this.address, msg.sender);
}



}
