contract main {




// =====================  Runtime code  =====================


const name = 'TESTToken'

const generatedBy = 'Togen.io by Proof Suite'

const decimals = 0

const symbol = 'TTT'


uint256 _totalSupply;
uint256 RATE;
uint8 stor2;
address owner; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function isMinting() {
    return bool(stor2)
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

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function endCrowdsale() {
    require msg.sender == owner
    stor2 = 0
}

function changeCrowdsaleRate(uint256 arg1) {
    require msg.sender == owner
    RATE = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    require arg1 > 0
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg2 > 0
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require 1 == bool(stor2)
    require msg.value > 0
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    require (RATE * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += RATE * msg.value
    require (RATE * msg.value) + _totalSupply >= _totalSupply
    _totalSupply += RATE * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createTokens() payable {
    require 1 == bool(stor2)
    require msg.value > 0
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    require (RATE * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += RATE * msg.value
    require (RATE * msg.value) + _totalSupply >= _totalSupply
    _totalSupply += RATE * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
