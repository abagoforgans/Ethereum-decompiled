contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
mapping of uint256 stor5;

function _fallback() {
    stor1 = msg.sender
    bool(stor2.length) = 0
    stor2.length.field_1 = 6
    stor2.length.field_8 = 'STCoin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'STC' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor0 = 10000000000 * 10^18
    stor5[address(msg.sender)] = 10000000000 * 10^18
    return code.data[413 len 2698]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balances;
mapping of uint256 allownce;

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

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allownce(address arg1, address arg2) {
    return allownce[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allownce[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increase(uint256 arg1) {
    require owner == msg.sender
    if balances[address(msg.sender)] + arg1 <= balances[address(msg.sender)]:
        return 0
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Increase(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    if arg1 != msg.sender:
        require allownce[address(arg1)][address(msg.sender)] > arg3
        require arg3 <= allownce[address(arg1)][address(msg.sender)]
        allownce[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multisend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[0] = msg.sender
        mem[32] = 5
        if balances[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]:
            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if balances[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balances[address(mem[(32 * idx) + 128])]:
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
                    balances[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]] >= balances[mem[(32 * idx) + 140 len 20]]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 5
                    balances[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balances[mem[(32 * idx) + 140 len 20]]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_24));
        idx = idx + 1
        continue 
    return 1
}



}
