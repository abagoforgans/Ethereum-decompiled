contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor9;

function _fallback() payable {
    stor1 = msg.sender
    stor5 = 10^17
    stor6 = 3 * 10^16
    stor7 = 7 * 10^16
    stor9 = 0
    require not msg.value
    return code.data[143 len 5491]
}



// =====================  Runtime code  =====================


const name = 'Burma first token'

const decimals = 8

const symbol = 'BFT'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
bool stor6;
uint256 stor6;
uint256 stor6; offset 1
uint256 totalDistributed;
uint256 totalRemaining;
uint256 value;
uint8 stor9;

function totalSupply() {
    return totalSupply
}

function value() {
    return value
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(stor9)
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalDistributed() {
    return totalDistributed
}

function blacklist(address arg1) {
    return bool(stor4[arg1])
}

function transferOwnership(address arg1) {
    require stor1 == msg.sender
    if arg1:
        stor1 = arg1
}

function finishDistribution() {
    require stor1 == msg.sender
    require not stor9
    stor9 = 1
    emit DistrFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require stor1 == msg.sender
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require stor1 == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function enableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function disableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require stor1 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor1, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function QMQCoin() {
    stor1 = msg.sender
    value = 5 * 10^11
    require not stor9
    require 2 * totalDistributed >= totalDistributed
    bool(stor6.field_0) = 0
    uint255(stor6.field_1) = uint255(stor6.field_0)
    require totalDistributed <= totalRemaining
    totalRemaining -= totalDistributed
    require totalDistributed + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += totalDistributed
    emit Distr(totalDistributed, msg.sender);
    emit Transfer(totalDistributed, 0, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getTokens() payable {
    require not stor9
    require not stor4[address(msg.sender)]
    if value > totalRemaining:
        value = totalRemaining
        revert
    require not stor9
    require value + totalDistributed >= totalDistributed
    totalDistributed += value
    require value <= totalRemaining
    totalRemaining -= value
    require value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += value
    emit Distr(value, msg.sender);
    emit Transfer(value, 0, msg.sender);
    if value > 0:
        stor4[address(msg.sender)] = 1
    if totalDistributed >= totalSupply:
        stor9 = 1
    if value / 100000:
        require value / 100000
        require 99999 * value / 100000 / value / 100000 == 99999
    value = 99999 * value / 100000
}

function _fallback() payable {
    require not stor9
    require not stor4[address(msg.sender)]
    if value > totalRemaining:
        value = totalRemaining
        revert
    require not stor9
    require value + totalDistributed >= totalDistributed
    totalDistributed += value
    require value <= totalRemaining
    totalRemaining -= value
    require value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += value
    emit Distr(value, msg.sender);
    emit Transfer(value, 0, msg.sender);
    if value > 0:
        stor4[address(msg.sender)] = 1
    if totalDistributed >= totalSupply:
        stor9 = 1
    if value / 100000:
        require value / 100000
        require 99999 * value / 100000 / value / 100000 == 99999
    value = 99999 * value / 100000
}

function airdrop(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1 == msg.sender
    require not stor9
    require arg1.length <= 255
    require value <= totalRemaining
    idx = 0
    while idx < arg1.length:
        require value <= totalRemaining
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require not stor9
        require value + totalDistributed >= totalDistributed
        totalDistributed += value
        require value <= totalRemaining
        totalRemaining -= value
        require value + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * idx) + 128])] = value + balanceOf[mem[(32 * idx) + 140 len 20]]
        emit Distr(value, mem[(32 * idx) + 140 len 20]);
        mem[(32 * arg1.length) + 128] = value
        emit Transfer(value, 0, address(_14));
        idx = idx + 1
        continue 
    if totalDistributed >= totalSupply:
        stor9 = 1
}

function distribution(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1 == msg.sender
    require not stor9
    require arg1.length <= 255
    require arg2 <= totalRemaining
    idx = 0
    while idx < arg1.length:
        require arg2 <= totalRemaining
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require not stor9
        require arg2 + totalDistributed >= totalDistributed
        totalDistributed += arg2
        require arg2 <= totalRemaining
        totalRemaining -= arg2
        require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
        emit Distr(arg2, mem[(32 * idx) + 140 len 20]);
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_14));
        idx = idx + 1
        continue 
    if totalDistributed >= totalSupply:
        stor9 = 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}

function distributeAmounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor1 == msg.sender
    require not stor9
    require arg1.length <= 255
    require arg1.length == arg2.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        require uint8(idx) < arg1.length
        _23 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        _25 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require not stor9
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + totalDistributed >= totalDistributed
        totalDistributed += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        totalRemaining -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Distr(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_23));
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _25
        emit Transfer(_25, 0, address(_23));
        if totalDistributed >= totalSupply:
            stor9 = 1
        idx = idx + 1
        continue 
}



}
