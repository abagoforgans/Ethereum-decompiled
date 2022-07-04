contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor1;
mapping of address stor2;
uint256 stor3;
address owner;
uint256 symbol;
uint256 price;
uint256 name;
uint8 decimals;
uint256 stor9;
uint256 stor10;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    require balanceOf[0] <= stor9
    return (stor9 - balanceOf[0])
}

function closeCrowdsale() {
    require msg.sender == owner
    Mask(248, 0, stor0.field_8) = 1
}

function immediateWithdrawal() {
    require msg.sender == owner
    call msg.sender with:
       value stor10 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor10 = 0
}

function approve(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)] == 2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_8)
    require arg1 <= balanceOf[stor4]
    balanceOf[stor4] -= arg1
    require arg1 <= stor9
    stor9 -= arg1
    emit Transfer(arg1, owner, 0);
}

function mintTokens(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_8)
    require stor9 + arg1 >= stor9
    stor9 += arg1
    require balanceOf[stor4] + arg1 >= balanceOf[stor4]
    balanceOf[stor4] += arg1
    emit Transfer(arg1, 0, owner);
}

function safeWithdrawal() {
    require msg.sender == owner
    require uint8(stor0.field_8)
    require not uint8(stor0.field_0)
    call msg.sender with:
       value stor10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        uint8(stor0.field_0) = 0
    else:
        uint8(stor0.field_0) = 1
}

function transfer(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)] == 2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor1[address(msg.sender)] == 2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function disableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 140 len 20]] == 2:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            stor1[address(mem[(32 * idx) + 128])] = 1
        idx = idx + 1
        continue 
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_8)
    if stor1[address(arg1)] != 2:
        stor1[address(arg1)] = 2
        if stor1[address(arg1)] == 1:
        else:
            stor2[stor3] = arg1
            stor3++
    balanceOf[stor4] = 0
    require balanceOf[address(arg1)] + balanceOf[stor4] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[stor4]
    emit Transfer(balanceOf[stor4], owner, arg1);
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    require stor1[address(msg.sender)] == 2
    require not uint8(stor0.field_8)
    require price > 0
    require price
    require msg.value / price > 0
    require price > 0
    require price
    require stor10 + msg.value >= stor10
    stor10 += msg.value
    require 10^18 * msg.value / price <= balanceOf[stor4]
    balanceOf[stor4] += -1 * 10^18 * msg.value / price
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / price
    emit Transfer((10^18 * msg.value / price), owner, msg.sender);
}

function getWhitelist() {
    s = 0
    idx = 0
    while idx < stor3:
        mem[0] = stor2[idx]
        mem[32] = 1
        if stor1[stor2[idx]] != 2:
            s = s
            idx = idx + 1
            continue 
        s = s + 1
        idx = idx + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[9294 len 32 * s]
    t = 0
    while t < s:
        mem[0] = stor2[t]
        mem[32] = 1
        if stor1[stor2[t]] == 2:
            mem[0] = t
            mem[32] = 2
            require t < s
            mem[(32 * t) + 128] = stor2[t]
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function enableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 140 len 20]] != 2:
            if stor1[address(mem[(32 * idx) + 128])] == 1:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                stor1[address(mem[(32 * idx) + 128])] = 2
            else:
                stor1[address(mem[(32 * idx) + 128])] = 2
                mem[0] = stor3
                mem[32] = 2
                stor2[stor3] = mem[(32 * idx) + 140 len 20]
                stor3++
        idx = idx + 1
        continue 
    return 1
}

function getBalances() {
    if not stor3:
        mem[(32 * stor3) + 128] = stor3
    else:
        mem[128 len 32 * stor3] = code.data[9294 len 32 * stor3]
        mem[(32 * stor3) + 128] = stor3
        mem[(32 * stor3) + 160 len 32 * stor3] = code.data[9294 len 32 * stor3]
    idx = 0
    while idx < stor3:
        require idx < stor3
        mem[(32 * idx) + 128] = stor2[idx]
        mem[0] = stor2[idx]
        mem[32] = 11
        require idx < mem[(32 * stor3) + 128]
        mem[(32 * idx) + (32 * stor3) + 160] = balanceOf[stor2[idx]]
        idx = idx + 1
        continue 
    mem[(64 * stor3) + 160] = 64
    mem[(64 * stor3) + 224] = stor3
    mem[(64 * stor3) + 256 len floor32(stor3)] = mem[128 len floor32(stor3)]
    mem[(64 * stor3) + 192] = (32 * stor3) + 96
    mem[(98 * stor3) + 256] = mem[(32 * stor3) + 128]
    mem[(98 * stor3) + 288 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
    return memory
      from (64 * stor3) + 160
       len (32 * mem[(32 * stor3) + 128]) + (161 * stor3) + 128
}



}
