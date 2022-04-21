contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
mapping of uint256 stor4;
uint256 stor6;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -2553] = code.data[2963 len -2553]
    stor6 = mem[160]
    stor4[address(msg.sender)] = mem[160]
    stor1[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor2[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor3 = mem[255 len 1]
    return code.data[410 len 2553]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of struct stor10;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
}

function divideUpReward() {
    require stor8 + (720 * 24 * 3600) > block.timestamp
    stor8 = block.timestamp
    stor7 = eth.balance(this.address)
    stor9 = eth.balance(this.address)
}

function beforeBalanceChanges(address arg1) {
    if stor10[address(arg1)].field_256 <= stor8:
        stor10[address(arg1)].field_256 = block.timestamp
        stor10[address(arg1)].field_0 = balanceOf[address(arg1)]
}

function reward() {
    if stor10[address(msg.sender)].field_512 >= stor8:
        return 0
    if stor10[address(msg.sender)].field_256 > stor8:
        if stor6:
            return (stor7 * stor10[address(msg.sender)].field_0 / stor6)
    else:
        if stor6:
            return (stor7 * balanceOf[address(msg.sender)] / stor6)
    ('iszero', ('stor', ('name', 'stor6', 6)))
    revert
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] >= arg2:
        require arg2 <= 0
    if stor10[address(msg.sender)].field_256 <= stor8:
        stor10[address(msg.sender)].field_256 = block.timestamp
        stor10[address(msg.sender)].field_0 = balanceOf[address(msg.sender)]
    if stor10[address(arg1)].field_256 <= stor8:
        stor10[address(arg1)].field_256 = block.timestamp
        stor10[address(arg1)].field_0 = balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] >= arg3:
        require arg3 <= 0
    require allowed[address(arg1)][address(msg.sender)] < arg3
    if stor10[address(arg1)].field_256 <= stor8:
        stor10[address(arg1)].field_256 = block.timestamp
        stor10[address(arg1)].field_0 = balanceOf[address(arg1)]
    if stor10[address(arg2)].field_256 <= stor8:
        stor10[address(arg2)].field_256 = block.timestamp
        stor10[address(arg2)].field_0 = balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
}

function withdrawReward() {
    if stor10[address(msg.sender)].field_512 >= stor8:
        return 0
    require stor6
    if stor10[address(msg.sender)].field_256 > stor8:
        if not stor7 * stor10[address(msg.sender)].field_0 / stor6:
            return 0
        call msg.sender with:
           value stor7 * stor10[address(msg.sender)].field_0 / stor6 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return 0
        if balanceOf[address(msg.sender)]:
            stor10[address(msg.sender)].field_512 = block.timestamp
        else:
            stor10[address(msg.sender)].field_0 = 0
            stor10[address(msg.sender)].field_256 = 0
            stor10[address(msg.sender)].field_512 = 0
        return (stor7 * stor10[address(msg.sender)].field_0 / stor6)
    if not stor7 * balanceOf[address(msg.sender)] / stor6:
        return 0
    call msg.sender with:
       value stor7 * balanceOf[address(msg.sender)] / stor6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    if balanceOf[address(msg.sender)]:
        stor10[address(msg.sender)].field_512 = block.timestamp
    else:
        stor10[address(msg.sender)].field_0 = 0
        stor10[address(msg.sender)].field_256 = 0
        stor10[address(msg.sender)].field_512 = 0
    return (stor7 * balanceOf[address(msg.sender)] / stor6)
}



}
