contract main {


// =======================  Init code  ======================


mapping of struct stor0;
mapping of address stor1;
uint256 stor2;
address stor3;
uint256 stor3;
address stor4;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of struct stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor2 = 0
    stor5 = 100 * 10^6
    stor6 = 100
    stor7 = 0
    stor10 = 0
    stor11 = 0
    emit Created(code.data[6766 len 32]);
    uint256(stor3) = code.data[6798 len 32] or Mask(96, 160, uint256(stor3))
    uint256(stor4) = code.data[6830 len 32] or Mask(96, 160, uint256(stor4))
    stor0[address(stor3)].field_0 = -stor5 + (stor6 * stor5)
    stor0[address(stor3)].field_256 = 0
    stor0[address(stor3)].field_512 = 1
    stor0[address(stor4)].field_0 = stor5
    stor0[address(stor4)].field_256 = 0
    stor0[address(stor4)].field_512 = 1
    stor1[stor2] = address(stor3)
    stor2++
    stor1[stor2] = address(stor4)
    stor2++
    stor9[stor10].field_0 = block.timestamp
    stor9[stor10].field_256 = block.number
    stor9[stor10].field_512 = stor5
    stor9[stor10].field_768 = address(stor4)
    stor9[stor10].field_1024 = address(stor3)
    stor10++
    emit Transfer(stor5, address(stor3), address(stor4));
    return code.data[1424 len 5342]
}



// =====================  Runtime code  =====================


mapping of struct balance;
mapping of address stor1;
uint256 stor2;
address sub_6289efd8Address;
address sub_b628becdAddress;
uint256 stor7;
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

function sub_6289efd8(?) {
    return sub_6289efd8Address
}

function sub_6f30e552(?) {
    return sub_6f30e552[arg1].field_512
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

function sub_d8a90eef(?) {
    stor7 = arg1
}

function getCurrentTime() {
    return (block.timestamp + stor7)
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
    return 0
}

function sub_f91a7385(?) {
    if sub_b628becdAddress != msg.sender:
        return 0
    sub_6f30e552[stor11].field_0 = arg3
    sub_6f30e552[stor11].field_256 = arg2
    sub_6f30e552[stor11].field_512 = arg1
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
        mem[32] = 12
        if sub_6f30e552[idx].field_0 >= block.timestamp + stor7:
            s = block.timestamp + stor7
            s = sha3(idx, 12)
            idx = idx + 1
            s = s
            continue 
        if sub_6f30e552[idx].field_0 <= 0:
            s = block.timestamp + stor7
            s = sha3(idx, 12)
            idx = idx + 1
            s = s
            continue 
        s = block.timestamp + stor7
        s = sha3(idx, 12)
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
    sub_1dd0563e[stor10].field_0 = block.timestamp
    sub_1dd0563e[stor10].field_256 = block.number
    sub_1dd0563e[stor10].field_512 = arg2
    sub_1dd0563e[stor10].field_768 = arg1
    sub_1dd0563e[stor10].field_1024 = msg.sender
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
        mem[32] = 12
        if sub_6f30e552[idx].field_0 >= block.timestamp:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp
            w = sha3(idx, 12)
            idx = idx + 1
            w = w
            continue 
        if sub_6f30e552[idx].field_0 <= 0:
            s = s
            t = t
            u = u
            v = v
            w = block.timestamp
            w = sha3(idx, 12)
            idx = idx + 1
            w = w
            continue 
        balance[stor4].field_0 -= sub_6f30e552[idx].field_256
        balance[stor4].field_512 = balance[stor4].field_512
        balance[stor12[idx].field_512].field_0 += sub_6f30e552[idx].field_256
        mem[0] = sub_6f30e552[idx].field_512
        mem[32] = 0
        balance[stor12[idx].field_512].field_512 = balance[stor12[idx].field_512].field_512
        _21 = mem[64]
        mem[64] = mem[64] + 160
        mem[_21 + 64] = sub_6f30e552[idx].field_256
        mem[_21 + 96] = sub_6f30e552[idx].field_512
        mem[_21 + 128] = sub_b628becdAddress
        mem[_21 + 32] = block.number
        mem[_21] = block.timestamp
        sub_1dd0563e[stor10].field_0 = block.timestamp
        sub_1dd0563e[stor10].field_256 = block.number
        sub_1dd0563e[stor10].field_512 = sub_6f30e552[idx].field_256
        sub_1dd0563e[stor10].field_768 = sub_6f30e552[idx].field_512
        sub_1dd0563e[stor10].field_1024 = sub_b628becdAddress
        transactionCount++
        mem[mem[64]] = sub_6f30e552[idx].field_256
        emit Transfer(sub_6f30e552[idx].field_256, sub_b628becdAddress, sub_6f30e552[idx].field_512);
        mem[0] = idx
        mem[32] = 12
        sub_6f30e552[idx].field_0 = 0
        sub_6f30e552[idx].field_256 = 0
        sub_6f30e552[idx].field_512 = 0
        s = sha3(sub_6f30e552[idx].field_512, 0)
        t = sha3(sub_b628becdAddress, 0)
        u = sub_6f30e552[idx].field_256
        v = sub_6f30e552[idx].field_512
        w = block.timestamp
        w = sha3(idx, 12)
        idx = idx + 1
        w = w + 1
        continue 
}



}
