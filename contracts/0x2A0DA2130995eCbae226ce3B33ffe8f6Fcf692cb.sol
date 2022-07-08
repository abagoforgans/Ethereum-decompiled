contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
address stor1; offset 8
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = 0
    uint8(stor1.field_0) = 0
    require not msg.value
    mem[96 len -2533] = code.data[2890 len -2533]
    mem[64] = -2437
    address(stor1.field_8) = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = mem[191 len 1]
    stor5 = mem[192]
    return code.data[357 len 2533]
}



// =====================  Runtime code  =====================


uint256 _totalSupply;
uint8 executed;
address owner; offset 8
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 RATE;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function executed() {
    return bool(executed)
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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    require (RATE * msg.value) + _totalSupply >= _totalSupply
    _totalSupply += RATE * msg.value
    require (RATE * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += RATE * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    executed = 1
}

function createTokens() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    require (RATE * msg.value) + _totalSupply >= _totalSupply
    _totalSupply += RATE * msg.value
    require (RATE * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += RATE * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    executed = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
