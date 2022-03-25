contract main {


// =======================  Init code  ======================


mapping of struct stor0;
mapping of address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor4;
address stor5;
uint256 stor5;
address stor6;
uint256 stor6;
address stor7;
uint256 stor7;
address stor8;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of struct stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor2 = 0
    stor9 = 100 * 10^6
    stor10 = 100
    stor13 = 0
    stor14 = 0
    emit Created(code.data[8946 len 32]);
    stor3 = code.data[8978 len 32] or Mask(96, 160, stor3)
    uint256(stor4) = code.data[9010 len 32] or Mask(96, 160, uint256(stor4))
    uint256(stor5) = code.data[9042 len 32] or Mask(96, 160, uint256(stor5))
    uint256(stor6) = code.data[9074 len 32] or Mask(96, 160, uint256(stor6))
    uint256(stor7) = code.data[9106 len 32] or Mask(96, 160, uint256(stor7))
    uint256(stor8) = code.data[9138 len 32] or Mask(96, 160, uint256(stor8))
    stor0[address(stor4)].field_0 = (-4 * stor9) + (stor10 * stor9)
    stor0[address(stor4)].field_256 = 0
    stor0[address(stor4)].field_512 = 1
    stor0[address(stor5)].field_0 = stor9
    stor0[address(stor5)].field_256 = 0
    stor0[address(stor5)].field_512 = 1
    stor0[address(stor6)].field_0 = stor9
    stor0[address(stor6)].field_256 = 0
    stor0[address(stor6)].field_512 = 1
    stor0[address(stor7)].field_0 = stor9
    stor0[address(stor7)].field_256 = 0
    stor0[address(stor7)].field_512 = 1
    stor0[address(stor8)].field_0 = stor9
    stor0[address(stor8)].field_256 = 0
    stor0[address(stor8)].field_512 = 0
    stor1[stor2] = address(stor4)
    stor2++
    stor1[stor2] = address(stor5)
    stor2++
    stor1[stor2] = address(stor6)
    stor2++
    stor1[stor2] = address(stor7)
    stor2++
    stor1[stor2] = address(stor8)
    stor2++
    stor12[stor13].field_0 = block.timestamp
    stor12[stor13].field_256 = block.number
    stor12[stor13].field_512 = stor9
    stor12[stor13].field_768 = address(stor5)
    stor12[stor13].field_1024 = address(stor4)
    stor13++
    emit Transfer(stor9, address(stor4), address(stor5));
    stor12[stor13].field_0 = block.timestamp
    stor12[stor13].field_256 = block.number
    stor12[stor13].field_512 = stor9
    stor12[stor13].field_768 = address(stor6)
    stor12[stor13].field_1024 = address(stor4)
    stor13++
    emit Transfer(stor9, address(stor4), address(stor6));
    stor12[stor13].field_0 = block.timestamp
    stor12[stor13].field_256 = block.number
    stor12[stor13].field_512 = stor9
    stor12[stor13].field_768 = address(stor7)
    stor12[stor13].field_1024 = address(stor4)
    stor13++
    emit Transfer(stor9, address(stor4), address(stor7));
    stor12[stor13].field_0 = block.timestamp
    stor12[stor13].field_256 = block.number
    stor12[stor13].field_512 = stor9
    stor12[stor13].field_768 = address(stor8)
    stor12[stor13].field_1024 = address(stor4)
    stor13++
    emit Transfer(stor9, address(stor4), address(stor8));
    return code.data[2651 len 6295]
}



// =====================  Runtime code  =====================


const getCurrentTime = block.timestamp


mapping of struct balance;
mapping of address stor1;
uint256 stor2;
address sub_4cb01eeaAddress;
address sub_6289efd8Address;
address sub_b628becdAddress;
address stakingWalletAddress;
address sub_48521229Address;
address sub_9ef80226Address;
mapping of uint32 sub_bf0f2c44;
mapping of struct sub_1dd0563e;
uint256 transactionCount;
uint256 sub_bd0e5113;
mapping of struct sub_6f30e552;
array of uint256 sub_d2c3467f;

function sub_1dd0563e(?) {
    return sub_1dd0563e[arg1].field_0
}

function sub_22d9e450(?) {
    return sub_1dd0563e[arg1].field_768
}

function getTransactionCount() {
    return transactionCount
}

function sub_48521229(?) {
    return sub_48521229Address
}

function sub_4cb01eea(?) {
    return sub_4cb01eeaAddress
}

function sub_6289efd8(?) {
    return sub_6289efd8Address
}

function sub_6f30e552(?) {
    return sub_6f30e552[arg1].field_512
}

function sub_9ef80226(?) {
    return sub_9ef80226Address
}

function sub_9f994ec9(?) {
    return sub_1dd0563e[arg1].field_512
}

function sub_b628becd(?) {
    return sub_b628becdAddress
}

function sub_bd0e5113(?) {
    return sub_bd0e5113
}

function sub_bf0f2c44(?) {
    return uint32(sub_bf0f2c44[address(arg1)])
}

function getStakingWalletAddress() {
    return stakingWalletAddress
}

function sub_ca32a965(?) {
    return sub_6f30e552[arg1].field_0
}

function sub_d2c3467f(?) {
    require arg1 < sub_d2c3467f.length
    return sub_d2c3467f[arg1]
}

function sub_ddfd2145(?) {
    return sub_1dd0563e[arg1].field_256
}

function sub_dffbed65(?) {
    return sub_1dd0563e[arg1].field_1024
}

function sub_e2db4f29(?) {
    return sub_6f30e552[arg1].field_256
}

function getBalance(address arg1) {
    return balance[address(arg1)].field_0
}

function _fallback() payable {
    revert 
}

function sub_58ed548a(?) {
    uint32(sub_bf0f2c44[address(msg.sender)]) = 0
}

function registerAddress() {
    uint256(stor1[stor2]) = msg.sender or Mask(96, 160, uint256(stor1[stor2]))
    stor2++
}

function sub_46a6991e(?) {
    uint256(sub_bf0f2c44[address(msg.sender)]) = arg1 or Mask(224, 32, uint256(sub_bf0f2c44[address(msg.sender)]))
}

function sub_5a42e75c(?) {
    if msg.sender == sub_4cb01eeaAddress:
        uint256(stor1[stor2]) = arg1 or Mask(96, 160, uint256(stor1[stor2]))
        stor2++
}

function sub_83a4f47d(?) {
    s = 0
    idx = 0
    s = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 12
        if sub_1dd0563e[idx].field_768 != arg1:
            if sub_1dd0563e[idx].field_1024 != arg1:
                s = sha3(idx, 12)
                idx = idx + 1
                s = s
                continue 
        s = sha3(idx, 12)
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getAvailableSupply() {
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < stor2:
        mem[0] = address(stor1[idx])
        mem[32] = 0
        if bool(balance[address(stor1[idx])].field_512) == 1:
            s = sha3(address(stor1[idx]), 0)
            s = address(stor1[idx])
            idx = idx + 1
            s = s
            continue 
        s = sha3(address(stor1[idx]), 0)
        s = address(stor1[idx])
        idx = idx + 1
        s = s + balance[address(stor1[idx])].field_0
        continue 
    return s
}

function sub_f91a7385(?) {
    if sub_b628becdAddress != msg.sender:
        return 0
    sub_6f30e552[stor14].field_0 = arg3
    sub_6f30e552[stor14].field_256 = arg2
    sub_6f30e552[stor14].field_512 = arg1
    sub_d2c3467f.length++
    if not sub_d2c3467f.length <= sub_d2c3467f.length + 1:
        idx = sub_d2c3467f.length + 1
        while sub_d2c3467f.length > idx:
            sub_d2c3467f[idx] = 0
            idx = idx + 1
            continue 
    sub_d2c3467f[sub_d2c3467f.length] = sub_bd0e5113
    sub_bd0e5113++
    return sub_bd0e5113
}

function sub_1696f760(?) {
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < sub_bd0e5113:
        mem[0] = idx
        mem[32] = 15
        if sub_6f30e552[idx].field_0 >= block.timestamp:
            s = block.timestamp
            s = sha3(idx, 15)
            idx = idx + 1
            s = s
            continue 
        if sub_6f30e552[idx].field_0 <= 0:
            s = block.timestamp
            s = sha3(idx, 15)
            idx = idx + 1
            s = s
            continue 
        s = block.timestamp
        s = sha3(idx, 15)
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_ac1410c1(?) {
    if balance[address(msg.sender)].field_0 < arg2:
        return 0
    balance[address(msg.sender)].field_0 -= arg2
    balance[address(arg1)].field_0 += arg2
    balance[address(msg.sender)].field_512 = balance[address(msg.sender)].field_512
    balance[address(arg1)].field_512 = balance[address(arg1)].field_512
    sub_1dd0563e[stor13].field_0 = block.timestamp
    sub_1dd0563e[stor13].field_256 = block.number
    sub_1dd0563e[stor13].field_512 = arg2
    sub_1dd0563e[stor13].field_768 = arg1
    sub_1dd0563e[stor13].field_1024 = msg.sender
    transactionCount++
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getTotalSupply() {
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < stor2:
        mem[0] = address(stor1[idx])
        mem[32] = 0
        s = sha3(address(stor1[idx]), 0)
        s = address(stor1[idx])
        idx = idx + 1
        s = s + balance[address(stor1[idx])].field_0
        continue 
    return (s * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2 * stor2)
}

function sub_05dc2e51(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    w = 0
    idx = 0
    w = 0
    while idx < sub_bd0e5113:
        mem[0] = idx
        mem[32] = 15
        if sub_6f30e552[idx].field_0 >= block.timestamp:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp
            w = sha3(idx, 15)
            idx = idx + 1
            w = w
            continue 
        if sub_6f30e552[idx].field_0 <= 0:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp
            w = sha3(idx, 15)
            idx = idx + 1
            w = w
            continue 
        balance[stor5].field_0 -= sub_6f30e552[idx].field_256
        balance[stor5].field_512 = balance[stor5].field_512
        balance[stor15[idx].field_512].field_0 += sub_6f30e552[idx].field_256
        mem[0] = sub_6f30e552[idx].field_512
        mem[32] = 0
        balance[stor15[idx].field_512].field_512 = balance[stor15[idx].field_512].field_512
        _21 = mem[64]
        mem[64] = mem[64] + 160
        mem[_21 + 64] = sub_6f30e552[idx].field_256
        mem[_21 + 96] = sub_6f30e552[idx].field_512
        mem[_21 + 128] = sub_b628becdAddress
        mem[_21 + 32] = block.number
        mem[_21] = block.timestamp
        sub_1dd0563e[stor13].field_0 = block.timestamp
        sub_1dd0563e[stor13].field_256 = block.number
        sub_1dd0563e[stor13].field_512 = sub_6f30e552[idx].field_256
        sub_1dd0563e[stor13].field_768 = sub_6f30e552[idx].field_512
        sub_1dd0563e[stor13].field_1024 = sub_b628becdAddress
        transactionCount++
        mem[mem[64]] = sub_6f30e552[idx].field_256
        emit Transfer(sub_6f30e552[idx].field_256, sub_b628becdAddress, sub_6f30e552[idx].field_512);
        mem[0] = idx
        mem[32] = 15
        sub_6f30e552[idx].field_0 = 0
        sub_6f30e552[idx].field_256 = 0
        sub_6f30e552[idx].field_512 = 0
        s = sha3(sub_6f30e552[idx].field_512, 0)
        t = sha3(sub_b628becdAddress, 0)
        u = sub_6f30e552[idx].field_256
        v = sub_6f30e552[idx].field_512
        w = block.timestamp
        w = sha3(idx, 15)
        idx = idx + 1
        w = w + 1
        continue 
}



}
