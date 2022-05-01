contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint8 stor7;
address stor7; offset 8
mapping of uint256 stor8;

function _fallback() payable {
    mem[128] = 'v0.1'
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'v0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -3295] = code.data[3830 len -3295]
    stor1 = msg.sender
    uint8(stor7.field_0) = 1
    stor6 = mem[160] * 10^mem[224]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[224]
    stor5[].field_0 = Array(len=mem[mem[288] + 160], data=mem[mem[288] + 192 len mem[mem[288] + 160]])
    address(stor7.field_8) = mem[332 len 20]
    stor8[address(mem[320])] = stor6
    return code.data[535 len 3295]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
array of uint256 version;
uint256 totalSupply;
uint8 stor7;
address crowdSaleAddress; offset 8
mapping of uint256 balances;
mapping of uint256 allowed;

function crowdSaleAddress() {
    return crowdSaleAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked() {
    return bool(stor7)
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function lock() {
    if crowdSaleAddress != msg.sender:
        require owner == msg.sender
    stor7 = 1
}

function unlock() {
    if crowdSaleAddress != msg.sender:
        require owner == msg.sender
    stor7 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    if crowdSaleAddress != msg.sender:
        require owner == msg.sender
    require balances[address(arg1)] >= arg2
    balances[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowed[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if crowdSaleAddress != msg.sender:
        if stor7:
            require owner == msg.sender
    require arg1
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowed[address(msg.sender)][address(arg1)] >= allowed[address(msg.sender)][address(arg1)]
    require arg2 + allowed[address(msg.sender)][address(arg1)] >= arg2
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowed[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if crowdSaleAddress != msg.sender:
        if stor7:
            require owner == msg.sender
    require arg2
    require balances[address(arg1)] >= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
