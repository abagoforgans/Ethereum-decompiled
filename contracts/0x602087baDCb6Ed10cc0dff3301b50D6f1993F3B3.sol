contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
uint256 stor8; offset 8
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint256 stor16; offset 16
uint256 stor16; offset 8

function _fallback() payable {
    stor0 = msg.sender
    bool(stor5.length) = 0
    stor5.length.field_1 = 12
    stor5.length.field_8 = 'ArtifactCoin' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 0xe382a2e383bce38386e382a3e38395e382a1e382afe38388e38381e382a7e383
    mem[224] = 0xbce383b300000000000000000000000000000000000000000000000000000000
    stor6.length = 73
    s = 0
    idx = 192
    while 228 > idx:
        stor6[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor6.length + 31 / 32 > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 2
    stor7.length.field_8 = '3A' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor8.field_0) = 18
    Mask(248, 0, stor8.field_8) = 1
    stor9 = 6 * 10^6
    stor10 = 2000000000 * 10^18
    if stor10:
        require stor10
        require 30 * stor10 / stor10 == 30
    stor11 = 30 * stor10 / 100
    stor12 = stor10
    stor13 = 0
    stor14 = 30 * 10^18
    stor15 = 10^14
    uint8(stor16.field_0) = 0
    Mask(248, 0, stor16.field_8) = 0
    Mask(240, 0, stor16.field_16) = 0
    require not msg.value
    stor0 = msg.sender
    require not uint8(stor16.field_0)
    require stor12 >= 0
    require stor11 <= stor12
    require stor13 + stor11 >= stor13
    stor13 += stor11
    require stor11 <= stor12
    stor12 -= stor11
    require stor1[code.data[15798 len 20]] + stor11 >= stor1[code.data[15798 len 20]]
    stor1[address(code.data[15786 len 32])] = stor1[code.data[15798 len 20]] + stor11
    emit Transfer(stor11, 0, code.data[15798 len 20]);
    return code.data[1518 len 14268]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
mapping of uint256 unlockUnixTime;
array of uint256 name;
array of uint256 information;
array of uint256 symbol;
uint8 decimals;
uint8 stor8; offset 8
uint256 stor8; offset 8
uint256 etherGetBase;
uint256 totalSupply;
uint256 officalHolding;
uint256 totalRemaining;
uint256 totalDistributed;
uint256 stor14;
uint256 lowEth;
uint8 distributionFinished;
uint8 endFreeGet; offset 8
uint8 endEthGet; offset 16
uint256 stor16; offset 16
uint256 stor16; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function etherGetBase() {
    return etherGetBase
}

function Information() {
    return information[0 len information.length]
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

function OfficalHolding() {
    return officalHolding
}

function symbol() {
    return symbol[0 len symbol.length]
}

function endFreeGet() {
    return bool(endFreeGet)
}

function lowEth() {
    return lowEth
}

function distributionFinished() {
    return bool(distributionFinished)
}

function unlockUnixTime(address arg1) {
    return unlockUnixTime[arg1]
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function canTransfer() {
    return bool(uint8(stor8.field_8))
}

function totalDistributed() {
    return totalDistributed
}

function endEthGet() {
    return bool(endEthGet)
}

function blacklist(address arg1) {
    return bool(stor3[arg1])
}

function changeOwner(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function startDistribution() {
    require msg.sender == owner
    distributionFinished = 0
    return 1
}

function stopTransfer() {
    require msg.sender == owner
    Mask(248, 0, stor8.field_8) = 0
    return 1
}

function startTransfer() {
    require msg.sender == owner
    Mask(248, 0, stor8.field_8) = 1
    return 1
}

function finishDistribution() {
    require msg.sender == owner
    require not distributionFinished
    distributionFinished = 1
    return 1
}

function startEthGet() {
    require msg.sender == owner
    require not distributionFinished
    Mask(240, 0, stor16.field_16) = 0
    return 1
}

function startFreeGet() {
    require msg.sender == owner
    require not distributionFinished
    Mask(248, 0, stor16.field_8) = 0
    return 1
}

function finishFreeGet() {
    require msg.sender == owner
    require not distributionFinished
    Mask(248, 0, stor16.field_8) = 1
    return 1
}

function finishEthGet() {
    require msg.sender == owner
    require not distributionFinished
    Mask(240, 0, stor16.field_16) = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeBaseValue(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    stor14 = arg1
    etherGetBase = arg2
    lowEth = arg3
    return 1
}

function withdraw(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function enableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length <= 255
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * uint8(idx)) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function disableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length <= 255
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * uint8(idx)) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(uint8(stor8.field_8)) == 1
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not stor3[address(arg1)]
    require not stor3[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require bool(uint8(stor8.field_8)) == 1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distribution(address[] arg1, uint256 arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require not distributionFinished
    require arg1.length <= 255
    require arg2 <= totalRemaining
    idx = 0
    while uint8(idx) < arg1.length:
        require arg2 <= totalRemaining
        require uint8(idx) < arg1.length
        _12 = mem[(32 * uint8(idx)) + 128]
        require not distributionFinished
        require totalRemaining >= 0
        require arg2 <= totalRemaining
        require totalDistributed + arg2 >= totalDistributed
        totalDistributed += arg2
        require arg2 <= totalRemaining
        totalRemaining -= arg2
        require balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] = balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_12));
        idx = idx + 1
        continue 
    if totalDistributed >= totalSupply:
        distributionFinished = 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require bool(uint8(stor8.field_8)) == 1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distributeAmounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require not distributionFinished
    require arg1.length <= 255
    require arg1.length == arg2.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        require uint8(idx) < arg1.length
        _21 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        require not distributionFinished
        require totalRemaining >= 0
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        require totalDistributed + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= totalDistributed
        totalDistributed += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        totalRemaining -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] = balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_21));
        if totalDistributed >= totalSupply:
            distributionFinished = 1
        idx = idx + 1
        continue 
}

function get() payable {
    require not distributionFinished
    require not stor3[address(msg.sender)]
    if stor14 > totalRemaining:
        stor14 = totalRemaining
    if msg.value <= lowEth:
        require not endFreeGet
        require stor14 <= totalRemaining
        require block.timestamp >= unlockUnixTime[address(msg.sender)]
        if stor14:
            require stor14
            require stor14 * block.gasprice / 100 * 10^6 / stor14 == block.gasprice / 100 * 10^6
        require not distributionFinished
        require totalRemaining >= 0
        require stor14 * block.gasprice / 100 * 10^6 <= totalRemaining
        require totalDistributed + (stor14 * block.gasprice / 100 * 10^6) >= totalDistributed
        totalDistributed += stor14 * block.gasprice / 100 * 10^6
        require stor14 * block.gasprice / 100 * 10^6 <= totalRemaining
        totalRemaining += -1 * stor14 * block.gasprice / 100 * 10^6
        require balanceOf[address(msg.sender)] + (stor14 * block.gasprice / 100 * 10^6) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += stor14 * block.gasprice / 100 * 10^6
        emit Transfer((stor14 * block.gasprice / 100 * 10^6), 0, msg.sender);
        unlockUnixTime[address(msg.sender)] = block.timestamp + (24 * 3600)
    else:
        require not endEthGet
        if msg.value:
            require msg.value
            require msg.value * etherGetBase / msg.value == etherGetBase
        if stor14:
            require stor14
            require stor14 * block.gasprice / 100 * 10^6 / stor14 == block.gasprice / 100 * 10^6
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) >= msg.value * etherGetBase
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) <= totalRemaining
        require not distributionFinished
        require totalRemaining >= 0
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) <= totalRemaining
        require totalDistributed + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) >= totalDistributed
        totalDistributed = totalDistributed + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6)
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) <= totalRemaining
        totalRemaining = totalRemaining - (msg.value * etherGetBase) - (stor14 * block.gasprice / 100 * 10^6)
        require balanceOf[address(msg.sender)] + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6)
        emit Transfer(((msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6)), 0, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if totalDistributed >= totalSupply:
        distributionFinished = 1
}

function _fallback() payable {
    require not distributionFinished
    require not stor3[address(msg.sender)]
    if stor14 > totalRemaining:
        stor14 = totalRemaining
    if msg.value <= lowEth:
        require not endFreeGet
        require stor14 <= totalRemaining
        require block.timestamp >= unlockUnixTime[address(msg.sender)]
        if stor14:
            require stor14
            require stor14 * block.gasprice / 100 * 10^6 / stor14 == block.gasprice / 100 * 10^6
        require not distributionFinished
        require totalRemaining >= 0
        require stor14 * block.gasprice / 100 * 10^6 <= totalRemaining
        require totalDistributed + (stor14 * block.gasprice / 100 * 10^6) >= totalDistributed
        totalDistributed += stor14 * block.gasprice / 100 * 10^6
        require stor14 * block.gasprice / 100 * 10^6 <= totalRemaining
        totalRemaining += -1 * stor14 * block.gasprice / 100 * 10^6
        require balanceOf[address(msg.sender)] + (stor14 * block.gasprice / 100 * 10^6) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += stor14 * block.gasprice / 100 * 10^6
        emit Transfer((stor14 * block.gasprice / 100 * 10^6), 0, msg.sender);
        unlockUnixTime[address(msg.sender)] = block.timestamp + (24 * 3600)
    else:
        require not endEthGet
        if msg.value:
            require msg.value
            require msg.value * etherGetBase / msg.value == etherGetBase
        if stor14:
            require stor14
            require stor14 * block.gasprice / 100 * 10^6 / stor14 == block.gasprice / 100 * 10^6
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) >= msg.value * etherGetBase
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) <= totalRemaining
        require not distributionFinished
        require totalRemaining >= 0
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) <= totalRemaining
        require totalDistributed + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) >= totalDistributed
        totalDistributed = totalDistributed + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6)
        require (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) <= totalRemaining
        totalRemaining = totalRemaining - (msg.value * etherGetBase) - (stor14 * block.gasprice / 100 * 10^6)
        require balanceOf[address(msg.sender)] + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6)
        emit Transfer(((msg.value * etherGetBase) + (stor14 * block.gasprice / 100 * 10^6)), 0, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if totalDistributed >= totalSupply:
        distributionFinished = 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require bool(uint8(stor8.field_8)) == 1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 160 len arg4.length % 32]))
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = msg.sender
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
        require ext_call.success
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
