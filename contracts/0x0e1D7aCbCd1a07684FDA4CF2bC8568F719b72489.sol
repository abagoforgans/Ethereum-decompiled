contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
address stor14;
uint128 stor15; offset 176
uint128 stor15; offset 168
uint128 stor15; offset 160
address stor15;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 2
    stor0.length.field_8 = 'CW' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'Chende World' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 2
    stor8 = 3
    stor9 = 4 * 10^15
    stor10 = 8 * 10^15
    stor11 = 5 * 10^16
    stor12 = 0
    stor13 = 0
    stor14 = 0
    address(stor15.field_0) = 0
    Mask(96, 0, stor15.field_160) = 0
    Mask(88, 0, stor15.field_168) = 0
    Mask(80, 0, stor15.field_176) = 0
    require not msg.value
    address(stor15.field_0) = msg.sender
    return code.data[786 len 9363]
}



// =====================  Runtime code  =====================


const decimals = 18


array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
uint256 maxDistribPublicSupply_;
uint256 ownerDistribSupply_;
uint256 currentDistribPublicSupply_;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address distribFundsReceiverAddress;
address remainingTokensReceiverAddress;
uint8 setupDone; offset 160
uint8 isDistribRunningFalg_; offset 168
uint8 isDistribStarted; offset 176
uint128 stor15; offset 176
uint128 stor15; offset 168
uint128 stor15; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor18;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function CurrentDistribPublicSupply_() {
    return currentDistribPublicSupply_
}

function IsDistribStarted() {
    return bool(isDistribStarted)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function IsDistribRunningFalg_() {
    return bool(isDistribRunningFalg_)
}

function Claimed(address arg1) {
    return bool(stor18[arg1])
}

function Owner() {
    return owner
}

function DistribFundsReceiverAddress() {
    return distribFundsReceiverAddress
}

function SetupDone() {
    return bool(setupDone)
}

function OwnerDistribSupply_() {
    return ownerDistribSupply_
}

function RemainingTokensReceiverAddress() {
    return remainingTokensReceiverAddress
}

function MaxDistribPublicSupply_() {
    return maxDistribPublicSupply_
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function SetBonus(uint256 arg1) {
    require msg.sender == owner
    stor12 = arg1
}

function SetFreeTokens(uint256 arg1) {
    require msg.sender == owner
    stor6 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function StartDistrib() {
    require msg.sender == owner
    require not isDistribStarted
    require setupDone
    Mask(80, 0, stor15.field_176) = 1
    Mask(88, 0, stor15.field_168) = 1
    return 1
}

function SetupMultipliers(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
    stor10 = arg4
    stor11 = arg5
}

function BurnTokens(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= 10^18 * arg1
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
    totalSupply += -1 * 10^18 * arg1
    emit Burn((10^18 * arg1), msg.sender);
    emit Transfer((10^18 * arg1), msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function StopDistrib() {
    require msg.sender == owner
    require isDistribRunningFalg_
    if remainingTokensReceiverAddress:
        if maxDistribPublicSupply_ > 0:
            if maxDistribPublicSupply_ - currentDistribPublicSupply_ > 0:
                balanceOf[stor14] = balanceOf[stor14] + maxDistribPublicSupply_ - currentDistribPublicSupply_
                totalSupply = totalSupply + maxDistribPublicSupply_ - currentDistribPublicSupply_
                emit Transfer((maxDistribPublicSupply_ - currentDistribPublicSupply_), this.address, remainingTokensReceiverAddress);
    Mask(80, 0, stor15.field_176) = 0
    Mask(88, 0, stor15.field_168) = 0
    return 1
}

function SetupToken(string arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, address arg7, uint256 arg8) {
    if msg.sender == owner:
        if not setupDone:
            symbol[] = Array(len=arg2.length, data=arg2[all])
            name[] = Array(len=arg1.length, data=arg1[all])
            stor6 = arg8
            stor12 = arg3
            maxDistribPublicSupply_ = 10^18 * arg4
            if arg5 > 0:
                ownerDistribSupply_ = 10^18 * arg5
                totalSupply = ownerDistribSupply_
                balanceOf[address(stor15.field_0)] = totalSupply
                currentDistribPublicSupply_ += totalSupply
                emit Transfer(totalSupply, this.address, owner);
            distribFundsReceiverAddress = arg7
            if not distribFundsReceiverAddress:
                distribFundsReceiverAddress = owner
            remainingTokensReceiverAddress = arg6
            Mask(96, 0, stor15.field_160) = 1
}

function distribution(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length <= 255
    require arg2 <= maxDistribPublicSupply_ - currentDistribPublicSupply_
    idx = 0
    while idx < arg1.length:
        require 10^18 * arg2 <= maxDistribPublicSupply_ - currentDistribPublicSupply_
        currentDistribPublicSupply_ += 10^18 * arg2
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        balanceOf[mem[(32 * idx) + 140 len 20]] += 10^18 * arg2
        totalSupply += 10^18 * arg2
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 10^18 * arg2
        emit Transfer((10^18 * arg2), this.address, address(_16));
        idx = idx + 1
        continue 
    if currentDistribPublicSupply_ >= maxDistribPublicSupply_:
        Mask(80, 0, stor15.field_176) = 0
        Mask(88, 0, stor15.field_168) = 0
}

function _fallback() payable {
    require isDistribRunningFalg_
    if currentDistribPublicSupply_ > maxDistribPublicSupply_:
        require maxDistribPublicSupply_ <= 0
    call distribFundsReceiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not stor18[address(msg.sender)]:
        currentDistribPublicSupply_ += 10^18 * stor6
        balanceOf[address(msg.sender)] += 10^18 * stor6
        totalSupply += 10^18 * stor6
        emit Transfer((10^18 * stor6), this.address, msg.sender);
        stor18[address(msg.sender)] = 1
    require msg.value <= stor11
    if msg.value >= 10^15:
        if msg.value >= stor10:
            currentDistribPublicSupply_ += msg.value * stor12 * stor8
            balanceOf[address(msg.sender)] += msg.value * stor12 * stor8
            totalSupply += msg.value * stor12 * stor8
            emit Transfer((msg.value * stor12 * stor8), this.address, msg.sender);
        else:
            if msg.value < stor9:
                currentDistribPublicSupply_ += msg.value * stor12
                balanceOf[address(msg.sender)] += msg.value * stor12
                totalSupply += msg.value * stor12
                emit Transfer((msg.value * stor12), this.address, msg.sender);
            else:
                currentDistribPublicSupply_ += msg.value * stor12 * stor7
                balanceOf[address(msg.sender)] += msg.value * stor12 * stor7
                totalSupply += msg.value * stor12 * stor7
                emit Transfer((msg.value * stor12 * stor7), this.address, msg.sender);
}

function distributeAmounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length <= 255
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        _18 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require 10^18 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= maxDistribPublicSupply_ - currentDistribPublicSupply_
        currentDistribPublicSupply_ += 10^18 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 16
        balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] += 10^18 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        totalSupply += 10^18 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < arg1.length
        _23 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^18 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], this.address, address(_23));
        if currentDistribPublicSupply_ >= maxDistribPublicSupply_:
            Mask(80, 0, stor15.field_176) = 0
            Mask(88, 0, stor15.field_168) = 0
        idx = idx + 1
        s = 10^18 * _18
        continue 
}



}
