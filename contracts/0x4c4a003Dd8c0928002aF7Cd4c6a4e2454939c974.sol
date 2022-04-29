contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
address stor5;

function _fallback() {
    mem[96 len -5588] = code.data[6122 len -5588]
    mem[64] = -5492
    stor4[address(msg.sender)] = mem[96]
    stor3 = mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2 = mem[223 len 1]
    stor5 = msg.sender
    return code.data[534 len 5588]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
address stor5;
mapping of uint256 allowance;
array of struct stor7;
address stor8;

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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function sub_f5d87c57(?) {
    require msg.sender == stor5
    stor8 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_2fe32e9c(?) {
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < stor7[address(arg1)].field_0:
        require idx < stor7[address(arg1)].field_0
        mem[32] = 7
        require idx < stor7[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        if stor7[address(arg1)][idx].field_0 > block.timestamp:
            idx = idx + 1
            s = s - stor7[address(arg1)][idx].field_256
            continue 
        stor7[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        s = s
        continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg1
    require arg3 > 0
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < stor7[address(arg1)].field_0:
        require idx < stor7[address(arg1)].field_0
        mem[32] = 7
        require idx < stor7[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        if stor7[address(arg1)][idx].field_0 > block.timestamp:
            idx = idx + 1
            s = s - stor7[address(arg1)][idx].field_256
            continue 
        stor7[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        s = s
        continue 
    mem[0] = arg2
    mem[32] = 4
    idx = 0
    t = stor[sha3(mem[0 len 64])]
    while idx < stor7[address(arg2)].field_0:
        require idx < stor7[address(arg2)].field_0
        mem[32] = 7
        require idx < stor7[address(arg2)].field_0
        mem[0] = sha3(address(arg2), 7)
        if stor7[address(arg2)][idx].field_0 > block.timestamp:
            idx = idx + 1
            t = t - stor7[address(arg2)][idx].field_256
            continue 
        stor7[address(arg2)][idx].field_0 = 0
        idx = idx + 1
        t = t
        continue 
    require s >= arg3
    require t < arg3 + t
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    mem[0] = msg.sender
    mem[32] = 4
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < stor7[address(msg.sender)].field_0:
        require idx < stor7[address(msg.sender)].field_0
        mem[32] = 7
        require idx < stor7[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 7)
        if stor7[address(msg.sender)][idx].field_0 > block.timestamp:
            idx = idx + 1
            s = s - stor7[address(msg.sender)][idx].field_256
            continue 
        stor7[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        s = s
        continue 
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    t = stor[sha3(mem[0 len 64])]
    while idx < stor7[address(arg1)].field_0:
        require idx < stor7[address(arg1)].field_0
        mem[32] = 7
        require idx < stor7[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        if stor7[address(arg1)][idx].field_0 > block.timestamp:
            idx = idx + 1
            t = t - stor7[address(arg1)][idx].field_256
            continue 
        stor7[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        t = t
        continue 
    require s >= arg2
    require t < arg2 + t
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_efca8849(?) {
    require msg.sender == stor8
    require block.timestamp < arg2
    require arg3 > 0
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < stor7[address(arg1)].field_0:
        require idx < stor7[address(arg1)].field_0
        mem[32] = 7
        require idx < stor7[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        if stor7[address(arg1)][idx].field_0 > block.timestamp:
            idx = idx + 1
            s = s - stor7[address(arg1)][idx].field_256
            continue 
        stor7[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        s = s
        continue 
    require s >= arg3
    require arg4 <= 1
    stor7[address(arg1)].field_0++
    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
        idx = (3 * stor7[address(arg1)].field_0) + 3
        while 3 * stor7[address(arg1)].field_0 > idx:
            stor7[address(arg1)][idx].field_0 = 0
            stor7[address(arg1)][idx].field_256 = 0
            uint8(stor7[address(arg1)][idx].field_512) = 0
            idx = idx + 3
            continue 
    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = arg2
    stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg3
    require arg4 <= 1
    uint8(stor7[address(arg1)][stor7[address(arg1)].field_0].field_512) = arg4
    require arg4 <= 1
    emit SetFreezingEvent(address(arg1), arg2, arg3, arg4);
}



}
