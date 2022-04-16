contract main {


// =======================  Init code  ======================


array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor8;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 19
    stor4.length.field_8 = 'MOVIECREDITS (EMVC)' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'EMVC' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    stor7 = 6 * 10^15
    bool(stor8.length) = 0
    stor8.length.field_1 = 7
    stor8.length.field_8 = 'EMVC3.0' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[427 len 2871]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint256 endTime;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
array of uint256 version;
uint256 price;
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function version() {
    return version[0 len version.length]
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

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function MOVIECREDITS() {
    totalSupply = INITIAL_SUPPLY
    balanceOf[address(msg.sender)] = INITIAL_SUPPLY
    endTime = block.timestamp + (1176 * 24 * 3600)
    owner = msg.sender
    price = 750
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require price * msg.value / msg.value == price
    require price * msg.value == (10^18 * price * msg.value / 10^18) + (price * msg.value % 10^18)
    require (price * msg.value / 10^18) + totalSupply >= totalSupply
    totalSupply += price * msg.value / 10^18
    require (price * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += price * msg.value / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp < endTime
    require msg.value
    require msg.value
    require price * msg.value / msg.value == price
    require price * msg.value == (10^18 * price * msg.value / 10^18) + (price * msg.value % 10^18)
    require (price * msg.value / 10^18) + totalSupply >= totalSupply
    totalSupply += price * msg.value / 10^18
    require (price * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += price * msg.value / 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
