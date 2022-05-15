contract main {


// =======================  Init code  ======================


address stor1;
mapping of uint256 stor2;
uint256 stor5;
bool stor6;
uint256 stor6;
uint256 stor6; offset 1
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor1 = msg.sender
    stor5 = 7716049375 * 3600 * 24 * 3600
    uint256(stor6.field_0) = 25 * 10^15
    require uint256(stor6.field_0) <= stor5
    stor7 = stor5 - uint256(stor6.field_0)
    stor9 = 0
    require not msg.value
    stor1 = msg.sender
    stor8 = 4 * 10^11
    require not stor9
    require 2 * uint256(stor6.field_0) >= uint256(stor6.field_0)
    bool(stor6.field_0) = 0
    uint255(stor6.field_1) = uint255(stor6.field_0)
    require uint256(stor6.field_0) <= stor7
    stor7 -= uint256(stor6.field_0)
    require stor2[stor1] + uint256(stor6.field_0) >= stor2[stor1]
    stor2[stor1] += uint256(stor6.field_0)
    emit Distr(uint256(stor6.field_0), stor1);
    emit Transfer(uint256(stor6.field_0), 0, stor1);
    return code.data[870 len 8749]
}



// =====================  Runtime code  =====================


const name = 'Recycle'

const decimals = 8

const symbol = 'RCYL'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
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
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function finishDistribution() {
    require msg.sender == stor1
    require not stor9
    stor9 = 1
    emit DistrFinished()
    return 1
}

function withdraw() {
    require msg.sender == stor1
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

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == stor1
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
    require msg.sender == stor1
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
    require msg.sender == stor1
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
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
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
    require totalDistributed + value >= totalDistributed
    totalDistributed += value
    require value <= totalRemaining
    totalRemaining -= value
    require balanceOf[address(msg.sender)] + value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += value
    emit Distr(value, msg.sender);
    emit Transfer(value, 0, msg.sender);
    if value > 0:
        stor4[address(msg.sender)] = 1
    if totalDistributed >= totalSupply:
        stor9 = 1
}

function _fallback() payable {
    require not stor9
    require not stor4[address(msg.sender)]
    if value > totalRemaining:
        value = totalRemaining
        revert
    require not stor9
    require totalDistributed + value >= totalDistributed
    totalDistributed += value
    require value <= totalRemaining
    totalRemaining -= value
    require balanceOf[address(msg.sender)] + value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += value
    emit Distr(value, msg.sender);
    emit Transfer(value, 0, msg.sender);
    if value > 0:
        stor4[address(msg.sender)] = 1
    if totalDistributed >= totalSupply:
        stor9 = 1
}

function airdrop(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    require not stor9
    require arg1.length <= 255
    require value <= totalRemaining
    idx = 0
    while idx < arg1.length:
        require value <= totalRemaining
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require not stor9
        require totalDistributed + value >= totalDistributed
        totalDistributed += value
        require value <= totalRemaining
        totalRemaining -= value
        require balanceOf[mem[(32 * idx) + 140 len 20]] + value >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + value
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
    require msg.sender == stor1
    require not stor9
    require arg1.length <= 255
    require arg2 <= totalRemaining
    idx = 0
    while idx < arg1.length:
        require arg2 <= totalRemaining
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require not stor9
        require totalDistributed + arg2 >= totalDistributed
        totalDistributed += arg2
        require arg2 <= totalRemaining
        totalRemaining -= arg2
        require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
        emit Distr(arg2, mem[(32 * idx) + 140 len 20]);
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_14));
        idx = idx + 1
        continue 
    if totalDistributed >= totalSupply:
        stor9 = 1
}

function distributeAmounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor1
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
        require totalDistributed + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= totalDistributed
        totalDistributed += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        totalRemaining -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] = balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
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
