contract main {




// =====================  Runtime code  =====================


#
#  - draw()
#
const sub_3e309db0(?) = 135

const sub_62c3b0ef(?) = 34

const sub_6466a2b9(?) = 30


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
uint256 stor49;
array of uint256 sub_f64dbe09;
array of uint256 sub_c3b8f9ac;
array of address sub_79d3c753;
array of address sub_cfb783d4;
array of address sub_6903681f;
array of struct sub_27faec8b;
array of struct sub_a140b37c;

function sub_27faec8b(?) {
    return address(sub_27faec8b[arg1].field_0)
}

function sub_41fe39ec(?) {
    return sub_41fe39ecAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function rewardRatio() {
    return rewardRatio
}

function sub_6903681f(?) {
    require arg1 < sub_6903681f.length
    return sub_6903681f[arg1]
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

function sub_79d3c753(?) {
    require arg1 < sub_79d3c753.length
    return sub_79d3c753[arg1]
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

function sub_a140b37c(?) {
    return address(sub_a140b37c[arg1].field_0)
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

function sub_c3b8f9ac(?) {
    require arg1 < sub_c3b8f9ac.length
    return sub_c3b8f9ac[arg1]
}

function sub_cfb783d4(?) {
    require arg1 < sub_cfb783d4.length
    return sub_cfb783d4[arg1]
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

function sub_f64dbe09(?) {
    require arg1 < sub_f64dbe09.length
    return sub_f64dbe09[arg1]
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

function sub_46ffb2f0(?) {
    mem[96 len 128] = call.data[4 len 128]
    require not uint8(stor0.field_160)
    require uint8(call.data[4]) + uint8(call.data[36]) >= uint8(call.data[4])
    require uint8(call.data[68]) >= 0
    require uint8(call.data[100]) >= 0
    require uint8(call.data[4]) + uint8(call.data[36]) + uint8(call.data[68]) + uint8(call.data[100]) == 30
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= betAmount
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), betAmount
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_aedb11aa[address(msg.sender)]:
        sub_930613fc.length++
        sub_930613fc[sub_930613fc.length] = msg.sender
        require sub_d3ce01a9 + 1 >= sub_d3ce01a9
        sub_d3ce01a9++
        mem[224] = msg.sender
        emit NewPlayer(msg.sender);
    require sub_aedb11aa[address(msg.sender)] + betAmount >= sub_aedb11aa[address(msg.sender)]
    sub_aedb11aa[address(msg.sender)] += betAmount
    if block.timestamp < sub_73845ffe:
        s = 0
        idx = 96
        while 224 > idx:
            uint256(sub_27faec8b[stor49].field_256) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(sub_27faec8b[stor49].field_256)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = 4
        s = sha3(stor49, 55) + 1
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (-2 * None + 3 / 32) + (None * None + 3 / 32) + 1
        while 2 > idx:
            uint8(sub_27faec8b[stor49][idx].field_0) = 0
            idx = idx + 1
            continue 
        address(sub_27faec8b[stor49].field_0) = msg.sender
        sub_f64dbe09.length++
        sub_f64dbe09[sub_f64dbe09.length] = stor49
        stor49++
        emit 0xa180d6bc: betAmount, call.data[4 len 128], block.timestamp, sub_75bd7379, msg.sender
    else:
        s = 0
        idx = 96
        while 224 > idx:
            uint256(sub_a140b37c[stor49].field_256) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(sub_a140b37c[stor49].field_256)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = 4
        s = sha3(stor49, 56) + 1
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (-2 * None + 3 / 32) + (None * None + 3 / 32) + 1
        while 2 > idx:
            uint8(sub_a140b37c[stor49][idx].field_0) = 0
            idx = idx + 1
            continue 
        address(sub_a140b37c[stor49].field_0) = msg.sender
        sub_c3b8f9ac.length++
        sub_c3b8f9ac[sub_c3b8f9ac.length] = stor49
        stor49++
        require sub_75bd7379 + 1 >= sub_75bd7379
        emit 0xa180d6bc: betAmount, call.data[4 len 128], block.timestamp, sub_75bd7379 + 1, msg.sender
}

function sub_8b5b74e6(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not uint8(stor0.field_160)
    require arg1.length <= 40
    require not arg1.length % 4
    idx = 0
    while idx <= arg1.length - 4:
        _116 = mem[64]
        mem[64] = mem[64] + 128
        require idx < mem[96]
        mem[_116] = mem[(32 * idx) + 159 len 1]
        require idx + 1 < mem[96]
        mem[_116 + 32] = mem[(32 * idx + 1) + 159 len 1]
        require idx + 2 < mem[96]
        mem[_116 + 64] = mem[(32 * idx + 2) + 159 len 1]
        require idx + 3 < mem[96]
        mem[_116 + 96] = mem[(32 * idx + 3) + 159 len 1]
        require not uint8(stor0.field_160)
        require mem[_116 + 31 len 1] + mem[_116 + 63 len 1] >= mem[_116 + 31 len 1]
        require mem[_116 + 95 len 1] >= 0
        require mem[_116 + 127 len 1] >= 0
        require mem[_116 + 31 len 1] + mem[_116 + 63 len 1] + mem[_116 + 95 len 1] + mem[_116 + 127 len 1] == 30
        require ext_code.size(tokenAddress)
        call tokenAddress.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= betAmount
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = betAmount
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), betAmount
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_aedb11aa[address(msg.sender)]:
            require sub_aedb11aa[address(msg.sender)] + betAmount >= sub_aedb11aa[address(msg.sender)]
            sub_aedb11aa[address(msg.sender)] += betAmount
            mem[0] = stor49
            if block.timestamp < sub_73845ffe:
                mem[32] = 55
                t = 0
                s = _116
                while _116 + 128 > s:
                    uint256(sub_27faec8b[stor49].field_256) = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and uint256(sub_27faec8b[stor49].field_256)
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(stor49, 55) + 1
                while s:
                    uint256(stor[t]) = !(255 * 256^s) and uint256(stor[t])
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(stor49, 55) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 1
                while sha3(stor49, 55) + 2 > s:
                    uint8(stor[s]) = 0
                    s = s + 1
                    continue 
                mem[32] = 55
                address(sub_27faec8b[stor49].field_0) = msg.sender
                sub_f64dbe09.length++
                mem[0] = 50
                sub_f64dbe09[sub_f64dbe09.length] = stor49
                stor49++
                _213 = mem[64]
                mem[mem[64]] = betAmount
                s = 0
                while s < 128:
                    mem[_213 + s + 32] = mem[_116 + s]
                    s = s + 32
                    continue 
                mem[_213 + 160] = block.timestamp
                emit 0xa180d6bc: mem[mem[64] len _213 + -mem[64] + 192], sub_75bd7379, msg.sender
            else:
                mem[32] = 56
                t = 0
                s = _116
                while _116 + 128 > s:
                    uint256(sub_a140b37c[stor49].field_256) = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and uint256(sub_a140b37c[stor49].field_256)
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(stor49, 56) + 1
                while s:
                    uint256(stor[t]) = !(255 * 256^s) and uint256(stor[t])
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(stor49, 56) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 1
                while sha3(stor49, 56) + 2 > s:
                    uint8(stor[s]) = 0
                    s = s + 1
                    continue 
                mem[32] = 56
                address(sub_a140b37c[stor49].field_0) = msg.sender
                sub_c3b8f9ac.length++
                mem[0] = 51
                sub_c3b8f9ac[sub_c3b8f9ac.length] = stor49
                stor49++
                require sub_75bd7379 + 1 >= sub_75bd7379
                _217 = mem[64]
                mem[mem[64]] = betAmount
                s = 0
                while s < 128:
                    mem[_217 + s + 32] = mem[_116 + s]
                    s = s + 32
                    continue 
                mem[_217 + 160] = block.timestamp
                emit 0xa180d6bc: mem[mem[64] len _217 + -mem[64] + 192], sub_75bd7379 + 1, msg.sender
        else:
            sub_930613fc.length++
            sub_930613fc[sub_930613fc.length] = msg.sender
            require sub_d3ce01a9 + 1 >= sub_d3ce01a9
            sub_d3ce01a9++
            mem[mem[64]] = msg.sender
            emit NewPlayer(msg.sender);
            require sub_aedb11aa[address(msg.sender)] + betAmount >= sub_aedb11aa[address(msg.sender)]
            sub_aedb11aa[address(msg.sender)] += betAmount
            mem[0] = stor49
            if block.timestamp < sub_73845ffe:
                mem[32] = 55
                t = 0
                s = _116
                while _116 + 128 > s:
                    uint256(sub_27faec8b[stor49].field_256) = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and uint256(sub_27faec8b[stor49].field_256)
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(stor49, 55) + 1
                while s:
                    uint256(stor[t]) = !(255 * 256^s) and uint256(stor[t])
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(stor49, 55) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 1
                while sha3(stor49, 55) + 2 > s:
                    uint8(stor[s]) = 0
                    s = s + 1
                    continue 
                mem[32] = 55
                address(sub_27faec8b[stor49].field_0) = msg.sender
                sub_f64dbe09.length++
                mem[0] = 50
                sub_f64dbe09[sub_f64dbe09.length] = stor49
                stor49++
                _214 = mem[64]
                mem[mem[64]] = betAmount
                s = 0
                while s < 128:
                    mem[_214 + s + 32] = mem[_116 + s]
                    s = s + 32
                    continue 
                mem[_214 + 160] = block.timestamp
                emit 0xa180d6bc: mem[mem[64] len _214 + -mem[64] + 192], sub_75bd7379, msg.sender
            else:
                mem[32] = 56
                t = 0
                s = _116
                while _116 + 128 > s:
                    uint256(sub_a140b37c[stor49].field_256) = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and uint256(sub_a140b37c[stor49].field_256)
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(stor49, 56) + 1
                while s:
                    uint256(stor[t]) = !(255 * 256^s) and uint256(stor[t])
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(stor49, 56) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 1
                while sha3(stor49, 56) + 2 > s:
                    uint8(stor[s]) = 0
                    s = s + 1
                    continue 
                mem[32] = 56
                address(sub_a140b37c[stor49].field_0) = msg.sender
                sub_c3b8f9ac.length++
                mem[0] = 51
                sub_c3b8f9ac[sub_c3b8f9ac.length] = stor49
                stor49++
                require sub_75bd7379 + 1 >= sub_75bd7379
                _218 = mem[64]
                mem[mem[64]] = betAmount
                s = 0
                while s < 128:
                    mem[_218 + s + 32] = mem[_116 + s]
                    s = s + 32
                    continue 
                mem[_218 + 160] = block.timestamp
                emit 0xa180d6bc: mem[mem[64] len _218 + -mem[64] + 192], sub_75bd7379 + 1, msg.sender
        idx = idx + 4
        continue 
}



}
