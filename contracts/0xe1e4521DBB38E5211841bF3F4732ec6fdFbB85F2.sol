contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor4 = 100000
    stor5 = 18
    address(stor3.field_0) = msg.sender
    uint8(stor3.field_160) = 0
    return code.data[68 len 6201]
}



// =====================  Runtime code  =====================


const name = 'Eat loyalty points'

const symbol = 'EAT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 stor4;
uint8 decimals;

function mintingFinished() {
    return bool(stor3)
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

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function finishMinting() {
    require owner == msg.sender
    stor3 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_38903b9f(?) {
    require owner == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    return 1
}

function sub_1103b2e0(?) {
    require owner == msg.sender
    require stor4 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += stor4
    return 1
}

function sub_bff0ed5a(?) {
    require owner == msg.sender
    require stor4 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += stor4
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function sub_2765075f(?) {
    require owner == msg.sender
    require stor4 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += stor4
    require 2 * stor4 >= stor4
    balanceOf[address(arg1)] += 2 * stor4
    return 1
}

function sub_282bdfce(?) {
    require owner == msg.sender
    require stor4 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += stor4
    require stor4 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = stor4 + balanceOf[arg2]
    return 1
}

function sub_cdf1c342(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require 0 < arg1.length
    require balanceOf[mem[140 len 20]] + 10^6 >= balanceOf[mem[140 len 20]]
    require 0 < arg1.length
    balanceOf[mem[140 len 20]] += 10^6
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
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

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_400b75d8(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    return 1
}

function sub_02475607(?) {
    require owner == msg.sender
    require stor4 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += stor4
    require stor4 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = stor4 + balanceOf[arg2]
    require stor4 + balanceOf[arg3] >= balanceOf[arg3]
    balanceOf[address(arg3)] = stor4 + balanceOf[arg3]
    require stor4 + balanceOf[arg4] >= balanceOf[arg4]
    balanceOf[address(arg4)] = stor4 + balanceOf[arg4]
    require stor4 + balanceOf[arg5] >= balanceOf[arg5]
    balanceOf[address(arg5)] = stor4 + balanceOf[arg5]
    require stor4 + balanceOf[arg6] >= balanceOf[arg6]
    balanceOf[address(arg6)] = stor4 + balanceOf[arg6]
    require stor4 + balanceOf[arg7] >= balanceOf[arg7]
    balanceOf[address(arg7)] = stor4 + balanceOf[arg7]
    require stor4 + balanceOf[arg8] >= balanceOf[arg8]
    balanceOf[address(arg8)] = stor4 + balanceOf[arg8]
    require stor4 + balanceOf[arg9] >= balanceOf[arg9]
    balanceOf[address(arg9)] = stor4 + balanceOf[arg9]
    require stor4 + balanceOf[arg10] >= balanceOf[arg10]
    balanceOf[address(arg10)] = stor4 + balanceOf[arg10]
    return 1
}

function sub_f99b793f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 191 len 1]
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 191 len 1]
        require idx + 1 < arg2.length
        require mem[(32 * idx + 1) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 1) + (32 * arg1.length) + 191 len 1]
        require idx + 1 < arg2.length
        require idx + 1 < arg1.length
        require mem[(32 * idx + 1) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 1) + 140 len 20]] >= balanceOf[mem[(32 * idx + 1) + 140 len 20]]
        require idx + 1 < arg1.length
        balanceOf[mem[(32 * idx + 1) + 140 len 20]] += mem[(32 * idx + 1) + (32 * arg1.length) + 191 len 1]
        require idx + 2 < arg2.length
        require mem[(32 * idx + 2) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 2) + (32 * arg1.length) + 191 len 1]
        require idx + 2 < arg2.length
        require idx + 2 < arg1.length
        require mem[(32 * idx + 2) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 2) + 140 len 20]] >= balanceOf[mem[(32 * idx + 2) + 140 len 20]]
        require idx + 2 < arg1.length
        balanceOf[mem[(32 * idx + 2) + 140 len 20]] += mem[(32 * idx + 2) + (32 * arg1.length) + 191 len 1]
        require idx + 3 < arg2.length
        require mem[(32 * idx + 3) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 3) + (32 * arg1.length) + 191 len 1]
        require idx + 3 < arg2.length
        require idx + 3 < arg1.length
        require mem[(32 * idx + 3) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 3) + 140 len 20]] >= balanceOf[mem[(32 * idx + 3) + 140 len 20]]
        require idx + 3 < arg1.length
        balanceOf[mem[(32 * idx + 3) + 140 len 20]] += mem[(32 * idx + 3) + (32 * arg1.length) + 191 len 1]
        require idx + 4 < arg2.length
        require mem[(32 * idx + 4) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 4) + (32 * arg1.length) + 191 len 1]
        require idx + 4 < arg2.length
        require idx + 4 < arg1.length
        require mem[(32 * idx + 4) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 4) + 140 len 20]] >= balanceOf[mem[(32 * idx + 4) + 140 len 20]]
        require idx + 4 < arg1.length
        balanceOf[mem[(32 * idx + 4) + 140 len 20]] += mem[(32 * idx + 4) + (32 * arg1.length) + 191 len 1]
        require idx + 5 < arg2.length
        require mem[(32 * idx + 5) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 5) + (32 * arg1.length) + 191 len 1]
        require idx + 5 < arg2.length
        require idx + 5 < arg1.length
        require mem[(32 * idx + 5) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 5) + 140 len 20]] >= balanceOf[mem[(32 * idx + 5) + 140 len 20]]
        require idx + 5 < arg1.length
        balanceOf[mem[(32 * idx + 5) + 140 len 20]] += mem[(32 * idx + 5) + (32 * arg1.length) + 191 len 1]
        require idx + 6 < arg2.length
        require mem[(32 * idx + 6) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 6) + (32 * arg1.length) + 191 len 1]
        require idx + 6 < arg2.length
        require idx + 6 < arg1.length
        require mem[(32 * idx + 6) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 6) + 140 len 20]] >= balanceOf[mem[(32 * idx + 6) + 140 len 20]]
        require idx + 6 < arg1.length
        balanceOf[mem[(32 * idx + 6) + 140 len 20]] += mem[(32 * idx + 6) + (32 * arg1.length) + 191 len 1]
        require idx + 7 < arg2.length
        require mem[(32 * idx + 7) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 7) + (32 * arg1.length) + 191 len 1]
        require idx + 7 < arg2.length
        require idx + 7 < arg1.length
        require mem[(32 * idx + 7) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 7) + 140 len 20]] >= balanceOf[mem[(32 * idx + 7) + 140 len 20]]
        require idx + 7 < arg1.length
        balanceOf[mem[(32 * idx + 7) + 140 len 20]] += mem[(32 * idx + 7) + (32 * arg1.length) + 191 len 1]
        require idx + 8 < arg2.length
        require mem[(32 * idx + 8) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 8) + (32 * arg1.length) + 191 len 1]
        require idx + 8 < arg2.length
        require idx + 8 < arg1.length
        require mem[(32 * idx + 8) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 8) + 140 len 20]] >= balanceOf[mem[(32 * idx + 8) + 140 len 20]]
        require idx + 8 < arg1.length
        balanceOf[mem[(32 * idx + 8) + 140 len 20]] += mem[(32 * idx + 8) + (32 * arg1.length) + 191 len 1]
        require idx + 9 < arg2.length
        require mem[(32 * idx + 9) + (32 * arg1.length) + 191 len 1] + totalSupply >= totalSupply
        totalSupply += mem[(32 * idx + 9) + (32 * arg1.length) + 191 len 1]
        require idx + 9 < arg2.length
        require idx + 9 < arg1.length
        require mem[(32 * idx + 9) + (32 * arg1.length) + 191 len 1] + balanceOf[mem[(32 * idx + 9) + 140 len 20]] >= balanceOf[mem[(32 * idx + 9) + 140 len 20]]
        require idx + 9 < arg1.length
        mem[0] = mem[(32 * idx + 9) + 140 len 20]
        mem[32] = 1
        balanceOf[mem[(32 * idx + 9) + 140 len 20]] += mem[(32 * idx + 9) + (32 * arg1.length) + 191 len 1]
        idx = idx + 10
        continue 
    return 1
}



}
