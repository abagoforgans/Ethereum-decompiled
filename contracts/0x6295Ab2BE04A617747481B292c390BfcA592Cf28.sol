contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
uint8 stor4; offset 160
uint32 stor4; offset 168
uint32 stor4; offset 192
uint32 stor5;
uint32 stor5; offset 32

function _fallback() payable {
    uint8(stor4.field_160) = 0
    stor4.field_168 % 16777216 = 5914350
    uint32(stor4.field_192) = 0
    uint32(stor5.field_0) = 429528 * 24 * 3600
    uint32(stor5.field_32) = 0
    address(stor3.field_0) = msg.sender
    uint8(stor3.field_160) = 0
    return code.data[116 len 4635]
}



// =====================  Runtime code  =====================


const name = 'TokenDesk'

const decimals = 18

const symbol = 'TDS'

const TOKENS_HARD_CAP = 20000000 * 10^18

const TOKENS_SALE_HARD_CAP = 14000000 * 10^18


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint64 stor4; offset 160
address timelockContractAddress;
uint64 stor5;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function timelockContractAddress() {
    return timelockContractAddress
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenSaleClosed() {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
    if not stor3:
        require uint64(block.timestamp) > uint64(stor4.field_160)
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require totalSupply < 14000000 * 10^18
    require not stor3
    require arg1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + totalSupply >= totalSupply
    require (10^18 * arg2) + totalSupply <= 14000000 * 10^18
    totalSupply += 10^18 * arg2
    require (10^18 * arg2) + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += 10^18 * arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor3:
        require uint64(block.timestamp) > uint64(stor4.field_160)
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function close() {
    require owner == msg.sender
    require not stor3
    if totalSupply:
        require totalSupply
        require 3 * totalSupply / totalSupply == 3
    require (3 * totalSupply / 7) + totalSupply >= totalSupply
    if (3 * totalSupply / 7) + totalSupply <= 20000000 * 10^18:
        create contract with 0 wei
                        code: code.data[3715 len 877], address(this.address), owner, stor5
        require create.new_address
        timelockContractAddress = address(create.new_address)
        require (3 * totalSupply / 7) + balances[address(create.new_address)] >= balances[address(create.new_address)]
        balances[address(stor4.field_0)] = (3 * totalSupply / 7) + balances[address(create.new_address)]
        require (3 * totalSupply / 7) + totalSupply >= totalSupply
        totalSupply += 3 * totalSupply / 7
    else:
        require totalSupply <= 20000000 * 10^18
        create contract with 0 wei
                        code: code.data[3715 len 877], address(this.address), owner, stor5
        require create.new_address
        timelockContractAddress = address(create.new_address)
        require -totalSupply + balances[address(create.new_address)] + 20000000 * 10^18 >= balances[address(create.new_address)]
        balances[address(stor4.field_0)] = -totalSupply + balances[address(create.new_address)] + 20000000 * 10^18
        require 20000000 * 10^18 >= totalSupply
        totalSupply = 20000000 * 10^18
    stor3 = 1
}

function issueTokensMulti(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require totalSupply < 14000000 * 10^18
    require not stor3
    require arg1.length == arg2.length
    require arg1.length <= 100
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        require owner == msg.sender
        require totalSupply < 14000000 * 10^18
        require not stor3
        require mem[(32 * idx) + 140 len 20]
        if mem[(32 * idx) + (32 * arg1.length) + 160]:
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 10^18
        require (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) + totalSupply >= totalSupply
        require (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) + totalSupply <= 14000000 * 10^18
        totalSupply += 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        require (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) + balances[mem[(32 * idx) + 140 len 20]] >= balances[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balances[address(mem[(32 * idx) + 128])] = (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) + balances[mem[(32 * idx) + 140 len 20]]
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}



}
