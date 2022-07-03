contract main {




// =====================  Runtime code  =====================


#
#  - draw()
#
const sub_3e309db0(?) = 135

const sub_62c3b0ef(?) = 34

const sub_6466a2b9(?) = 30

const sub_799561c8(?) = 246

const sub_fa4f01a2(?) = 2


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_75bd7379;
uint256 sub_bde2d47a;
uint256 sub_ff86c331;
uint256 sub_f640925b;
uint256 sub_73845ffe;
uint256 rewardRatio;
uint256 sub_b827c342;
uint256 sub_8e24adc4;
address hostAddress;
address jackpotAddress;
uint256 betAmount;
address sub_41fe39ecAddress;
array of uint256 sub_93904c83;
uint256 sub_d3ce01a9;
array of address sub_930613fc;
mapping of uint256 sub_aedb11aa;
array of uint8 sub_f4916609;
address tokenAddress;
array of uint256 stor49;
array of uint256 stor302;

function sub_1a0210a9(?) {
    require arg1 < 253
    require arg2 < stor302[arg1]
    return stor[sha3(arg1 + 302) + arg2]
}

function sub_41fe39ec(?) {
    return sub_41fe39ecAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_5cc64bb1(?) {
    require arg1 < 253
    require arg2 < stor49[arg1]
    return stor[sha3(arg1 + 49) + arg2]
}

function rewardRatio() {
    return rewardRatio
}

function jackpot() {
    return jackpotAddress
}

function sub_73845ffe(?) {
    return sub_73845ffe
}

function sub_75bd7379(?) {
    return sub_75bd7379
}

function owner() {
    return owner
}

function sub_8e24adc4(?) {
    return sub_8e24adc4
}

function sub_930613fc(?) {
    require arg1 < sub_930613fc.length
    return sub_930613fc[arg1]
}

function sub_93904c83(?) {
    require arg1 < 30
    return sub_93904c83[arg1]
}

function sub_aedb11aa(?) {
    return sub_aedb11aa[arg1]
}

function sub_b827c342(?) {
    return sub_b827c342
}

function sub_bde2d47a(?) {
    return sub_bde2d47a
}

function betAmount() {
    return betAmount
}

function sub_d3ce01a9(?) {
    return sub_d3ce01a9
}

function host() {
    return hostAddress
}

function sub_f4916609(?) {
    require arg1 < 34
    return sub_f4916609[uint8(arg1)]
}

function sub_f640925b(?) {
    return sub_f640925b
}

function token() {
    return tokenAddress
}

function sub_ff86c331(?) {
    return sub_ff86c331
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_12b955e2(?) {
    require msg.sender == owner
    emit 0x5bddcd7c: sub_8e24adc4, arg1
    sub_8e24adc4 = arg1
}

function sub_5c4a5867(?) {
    require msg.sender == owner
    emit 0x9e4c8ee8: sub_b827c342, arg1
    sub_b827c342 = arg1
}

function sub_f2a2d0be(?) {
    require msg.sender == owner
    emit 0xb0c79c1c: sub_ff86c331, arg1
    sub_ff86c331 = arg1
}

function sub_f7069ecd(?) {
    require msg.sender == owner
    emit 0x31acb284: sub_bde2d47a, arg1
    sub_bde2d47a = arg1
}

function setHost(address arg1) {
    require msg.sender == owner
    emit 0x6188079a: hostAddress, arg1
    hostAddress = arg1
}

function setBetAmount(uint256 arg1) {
    require msg.sender == owner
    emit 0xa3a630cd: betAmount, arg1
    betAmount = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    emit SetToken(tokenAddress, arg1);
    tokenAddress = arg1
}

function setJackpot(address arg1) {
    require msg.sender == owner
    emit 0x7cee6a3b: jackpotAddress, arg1
    jackpotAddress = arg1
}

function setRewardRatio(uint256 arg1) {
    require msg.sender == owner
    emit SetRewardRatio(rewardRatio, arg1);
    rewardRatio = arg1
}

function sub_3cc82e09(?) {
    require sub_f640925b + sub_bde2d47a >= sub_f640925b
    return sub_f640925b + sub_bde2d47a <= block.timestamp
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_285fea3e(?) {
    if uint8(stor0.field_160):
        return 0
    if sub_73845ffe < block.timestamp:
        return 0
    require block.timestamp <= sub_73845ffe
    return (sub_73845ffe - block.timestamp)
}

function sub_26fff512(?) {
    if uint8(stor0.field_160):
        return 0
    require sub_73845ffe + sub_ff86c331 >= sub_73845ffe
    if sub_73845ffe + sub_ff86c331 < block.timestamp:
        return 0
    require sub_73845ffe + sub_ff86c331 >= sub_73845ffe
    require block.timestamp <= sub_73845ffe + sub_ff86c331
    return (sub_73845ffe + sub_ff86c331 - block.timestamp)
}

function startRound(uint256 arg1) {
    require msg.sender == owner
    require uint8(stor0.field_160)
    require not sub_f640925b
    sub_f640925b = arg1
    require sub_f640925b + sub_bde2d47a >= sub_f640925b
    require sub_ff86c331 <= sub_f640925b + sub_bde2d47a
    sub_73845ffe = sub_f640925b + sub_bde2d47a - sub_ff86c331
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function bet(uint256 arg1) {
    require not uint8(stor0.field_160)
    require arg1 >= 2
    require arg1 <= 246
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= betAmount
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), betAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_aedb11aa[address(msg.sender)]:
        sub_930613fc.length++
        sub_930613fc[sub_930613fc.length] = msg.sender
        require sub_d3ce01a9 + 1 >= sub_d3ce01a9
        sub_d3ce01a9++
        emit NewPlayer(msg.sender);
    require sub_aedb11aa[address(msg.sender)] + betAmount >= sub_aedb11aa[address(msg.sender)]
    sub_aedb11aa[address(msg.sender)] += betAmount
    require arg1 < 253
    if block.timestamp < sub_73845ffe:
        stor49[arg1]++
        stor[sha3(arg1 + 49) + stor49[arg1]] = msg.sender
        emit 0x315f79b2: betAmount, arg1, block.timestamp, sub_75bd7379, msg.sender
    else:
        stor302[arg1]++
        stor[sha3(arg1 + 302) + stor302[arg1]] = msg.sender
        require sub_75bd7379 + 1 >= sub_75bd7379
        emit 0x315f79b2: betAmount, arg1, block.timestamp, sub_75bd7379 + 1, msg.sender
}

function sub_fcc19b7f(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not uint8(stor0.field_160)
    require arg1.length <= 10
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _34 = mem[(32 * idx) + 128]
        require not uint8(stor0.field_160)
        require mem[(32 * idx) + 128] >= 2
        require mem[(32 * idx) + 128] <= 246
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= betAmount
        mem[mem[64] + 68] = betAmount
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), betAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_aedb11aa[address(msg.sender)]:
            sub_930613fc.length++
            sub_930613fc[sub_930613fc.length] = msg.sender
            require sub_d3ce01a9 + 1 >= sub_d3ce01a9
            sub_d3ce01a9++
            emit NewPlayer(msg.sender);
        require sub_aedb11aa[address(msg.sender)] + betAmount >= sub_aedb11aa[address(msg.sender)]
        mem[32] = 45
        sub_aedb11aa[address(msg.sender)] += betAmount
        require _34 < 253
        if block.timestamp < sub_73845ffe:
            stor49[_34]++
            mem[0] = _34 + 49
            stor[sha3(_34 + 49) + stor49[_34]] = msg.sender
            mem[mem[64]] = betAmount
            mem[mem[64] + 32] = _34
            mem[mem[64] + 64] = block.timestamp
            emit 0x315f79b2: betAmount, _34, block.timestamp, sub_75bd7379, msg.sender
        else:
            stor302[_34]++
            mem[0] = _34 + 302
            stor[sha3(_34 + 302) + stor302[_34]] = msg.sender
            require sub_75bd7379 + 1 >= sub_75bd7379
            mem[mem[64]] = betAmount
            mem[mem[64] + 32] = _34
            mem[mem[64] + 64] = block.timestamp
            emit 0x315f79b2: betAmount, _34, block.timestamp, sub_75bd7379 + 1, msg.sender
        idx = idx + 1
        continue 
}



}
