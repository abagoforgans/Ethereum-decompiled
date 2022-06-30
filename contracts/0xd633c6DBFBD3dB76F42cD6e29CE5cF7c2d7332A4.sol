contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
uint256 stor2; offset 8

function _fallback() payable {
    stor0 = 7 * 10^14
    stor1 = 50
    uint8(stor2.field_0) = 0
    Mask(248, 0, stor2.field_8) = 0
    require not msg.value
    return code.data[100 len 4531]
}



// =====================  Runtime code  =====================


const name = 'KINJEE'

const generatedBy = 'Togen.io by Proof Suite'

const decimals = 8

const symbol = 'KINE'


uint256 _totalSupply;
uint256 RATE;
uint8 isMinting;
uint8 isExchangeListed; offset 8
address owner; offset 16
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function isMinting() {
    return bool(isMinting)
}

function _totalSupply() {
    return _totalSupply
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isExchangeListed() {
    return bool(isExchangeListed)
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function endCrowdsale() {
    require msg.sender == owner
    isMinting = 0
}

function changeCrowdsaleRate(uint256 arg1) {
    require msg.sender == owner
    RATE = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require bool(isMinting) == 1
    require msg.value > 0
    require msg.value == (10^14 * msg.value / 10^14) + (msg.value % 10^14)
    if msg.value / 10^14:
        require msg.value / 10^14
        require msg.value / 10^14 * RATE / msg.value / 10^14 == RATE
    require balanceOf[address(msg.sender)] + (msg.value / 10^14 * RATE) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / 10^14 * RATE
    require _totalSupply + (msg.value / 10^14 * RATE) >= _totalSupply
    _totalSupply += msg.value / 10^14 * RATE
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require bool(isMinting) == 1
    require msg.value > 0
    require msg.value == (10^14 * msg.value / 10^14) + (msg.value % 10^14)
    if msg.value / 10^14:
        require msg.value / 10^14
        require msg.value / 10^14 * RATE / msg.value / 10^14 == RATE
    require balanceOf[address(msg.sender)] + (msg.value / 10^14 * RATE) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / 10^14 * RATE
    require _totalSupply + (msg.value / 10^14 * RATE) >= _totalSupply
    _totalSupply += msg.value / 10^14 * RATE
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
