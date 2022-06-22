contract main {




// =====================  Runtime code  =====================


const name = 'Proton bridge test'

const decimals = 18

const sub_6105c94b(?) = 1

const symbol = 'Ptest'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address creatorAddress;
mapping of uint8 stor4;
mapping of uint8 stor5;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function admins(address arg1) {
    return bool(stor5[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function whitelist(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_3d0950a8(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == creatorAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_ae876f61(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == creatorAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    if not stor4[address(msg.sender)]:
        require stor4[address(arg1)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function allowTransfers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if creatorAddress != msg.sender:
        require bool(stor5[address(msg.sender)]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function disallowTransfers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if creatorAddress != msg.sender:
        require bool(stor5[address(msg.sender)]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor4[address(arg1)]:
        require stor4[address(arg2)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function issue(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == creatorAddress
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _13 = mem[(32 * idx) + 128]
        require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit Issuance(arg2, address(_13));
        s = _13
        idx = idx + 1
        continue 
    if arg1.length:
        require arg1.length
        require arg2 * arg1.length / arg1.length == arg2
    require totalSupply + (arg2 * arg1.length) >= totalSupply
    totalSupply += arg2 * arg1.length
}



}
