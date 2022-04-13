contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;

function _fallback() payable {
    bool(stor6.length) = 0
    stor6.length.field_1 = 2
    stor6.length.field_8 = 'G5' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 2
    stor7.length.field_8 = 'G5' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 8
    require not msg.value
    stor4 = 10^6
    stor3 = 21 * stor4 / 20
    stor5 = block.number
    return code.data[403 len 3202]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 ceiling;
uint256 floor;
uint256 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getCeiling() {
    return ceiling
}

function getFloor() {
    return floor
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
    call msg.sender with:
       value arg1 * floor wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require msg.value > 0
    require ceiling
    require (msg.value / ceiling) + totalSupply >= totalSupply
    totalSupply += msg.value / ceiling
    require (msg.value / ceiling) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / ceiling
    emit Mint((msg.value / ceiling), msg.sender);
    emit Transfer((msg.value / ceiling), 0, msg.sender);
    if block.number >= stor5 + 3:
        require totalSupply
        floor = eth.balance(this.address) / totalSupply
        ceiling = 21 * floor / 20
        stor5 = block.number
}

function _fallback() payable {
    require msg.value > 0
    require ceiling
    require (msg.value / ceiling) + totalSupply >= totalSupply
    totalSupply += msg.value / ceiling
    require (msg.value / ceiling) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / ceiling
    emit Mint((msg.value / ceiling), msg.sender);
    emit Transfer((msg.value / ceiling), 0, msg.sender);
    if block.number >= stor5 + 3:
        require totalSupply
        floor = eth.balance(this.address) / totalSupply
        ceiling = 21 * floor / 20
        stor5 = block.number
}



}
