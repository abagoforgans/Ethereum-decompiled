contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor3 = 0
    stor4 = 3000
    stor11 = 100 * 10^6
    stor12 = 100
    stor13 = 100000
    stor16 = 0
    stor17 = 0
    stor5 = 0x1345fbb01a0bda38ad5c92a7454d917db84ac24
    stor6 = 0xb5f4479b65be00081e27e3d68d01d48ab00dbb07
    stor7 = 0x2d18c0fcd7bcdf67a3524688f59ea33a3a0fa975
    stor8 = 0x521ce6048249ae6248efaafb576b31a889f174fd
    stor9 = 0x7b17fb79a5467475245814c500e2d2ae2dbac539
    stor10 = 0x190af6db102e125c80f3efb2b5daac3685b35f10
    return code.data[251 len 6161]
}



// =====================  Runtime code  =====================


mapping of address stor0;
mapping of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor7;
mapping of struct sub_0005c7c4;
mapping of uint256 stor15;
uint256 transactionCount;
uint256 sub_bd0e5113;
mapping of struct sub_6f30e552;
array of uint256 sub_d2c3467f;

function sub_0005c7c4(?) {
    return sub_0005c7c4[arg1][4][0 len sub_0005c7c4[arg1][4].length].field_0
}

function sub_1dd0563e(?) {
    return sub_0005c7c4[arg1].field_0
}

function sub_22d9e450(?) {
    return sub_0005c7c4[arg1].field_512
}

function getTransactionCount() {
    return transactionCount
}

function sub_6f30e552(?) {
    return sub_6f30e552[arg1].field_512
}

function sub_9f994ec9(?) {
    return sub_0005c7c4[arg1].field_256
}

function sub_bd0e5113(?) {
    return sub_bd0e5113
}

function sub_ca32a965(?) {
    return sub_6f30e552[arg1].field_0
}

function sub_d2c3467f(?) {
    require arg1 < sub_d2c3467f.length
    return sub_d2c3467f[arg1]
}

function sub_dffbed65(?) {
    return sub_0005c7c4[arg1].field_768
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

function sub_5a42e75c(?) {
    if msg.sender == stor5:
        stor2[stor3] = arg1 or Mask(96, 160, stor2[stor3])
        stor3++
}

function sub_ba8f9999(?) {
    sub_0005c7c4[stor16].field_0 = arg5
    sub_0005c7c4[stor16].field_256 = arg4
    sub_0005c7c4[stor16].field_512 = arg3
    sub_0005c7c4[stor16].field_768 = arg2
    sub_0005c7c4[stor16][4][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor15[address(arg6)] = transactionCount
    transactionCount++
}

function sub_f03d1886(?) {
    if balance[address(arg1)].field_768:
        idx = 416
        s = 0
        while (32 * balance[address(arg1)].field_768) + 384 > idx:
            mem[idx + 32] = balance[address(arg1)][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return balance[address(arg1)].field_768
}

function sub_83a4f47d(?) {
    s = 0
    idx = 0
    s = 0
    while idx < transactionCount:
        mem[0] = idx
        mem[32] = 14
        if sub_0005c7c4[idx].field_512 != arg1:
            if arg1 != sub_0005c7c4[idx].field_768:
                s = sha3(idx, 14)
                idx = idx + 1
                s = s
                continue 
        s = sha3(idx, 14)
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_f91a7385(?) {
    if stor7 != msg.sender:
        return 0
    sub_6f30e552[stor17].field_0 = arg3
    sub_6f30e552[stor17].field_256 = arg2
    sub_6f30e552[stor17].field_512 = arg1
    sub_d2c3467f.length++
    if not sub_d2c3467f.length <= sub_d2c3467f.length + 1:
        idx = sub_d2c3467f.length + 1
        while sub_d2c3467f.length > idx:
            sub_d2c3467f[idx] = 0
            idx = idx + 1
            continue 
    sub_d2c3467f[sub_d2c3467f.length] = sub_bd0e5113
    sub_bd0e5113++
    return (sub_bd0e5113 + 1)
}

function sub_66a56751(?) {
    idx = ceil32(arg2.length) + 512
    s = 0
    while ceil32(arg2.length) + sub_0005c7c4[stor15[address(arg1)]][4].length + 480 > idx:
        mem[idx + 32] = sub_0005c7c4[stor15[address(arg1)]][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_0005c7c4[stor15[address(arg1)]].field_512 = sub_0005c7c4[stor15[address(arg1)]].field_512
    sub_0005c7c4[stor15[address(arg1)]].field_768 = sub_0005c7c4[stor15[address(arg1)]].field_768
    sub_0005c7c4[stor15[address(arg1)]][4][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_61003d28(?) {
    if balance[address(arg1)].field_768:
        mem[416] = balance[address(arg1)][3].field_0
        idx = 416
        s = 0
        while (32 * balance[address(arg1)].field_768) + 384 > idx:
            mem[idx + 32] = balance[address(arg1)][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require arg2 < balance[address(arg1)].field_768
    mem[(32 * balance[address(arg1)].field_768) + 416] = mem[(32 * uint32(arg2)) + 428 len 20]
    return memory
      from (32 * balance[address(arg1)].field_768) + 416
       len 32
}

function sub_7a763d38(?) {
    balance[address(arg1)].field_0 = arg2
    if not balance[address(arg1)].field_768:
        idx = 0
        while balance[address(arg1)].field_768 > idx:
            balance[address(arg1)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while balance[address(arg1)].field_768 > idx:
            balance[address(arg1)][s + 3].field_0 = balance[address(arg1)][idx + 3].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = balance[address(arg1)].field_768
        while balance[address(arg1)].field_768 > idx:
            balance[address(arg1)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_287a14ac(?) {
    sub_0005c7c4[arg1].field_0 = arg2
    if 31 >= sub_0005c7c4[arg1][4].length:
        idx = 0
        while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
            sub_0005c7c4[arg1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_0005c7c4[arg1].field_1024 = Mask(255, 1, sub_0005c7c4[arg1].field_1024 and (256 * not sub_0005c7c4[arg1].field_1024) - 1) + 1
        if not Mask(255, 1, sub_0005c7c4[arg1].field_1024 and (256 * not sub_0005c7c4[arg1].field_1024) - 1):
            idx = 0
            while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
                sub_0005c7c4[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
                sub_0005c7c4[arg1][s + 4].field_0 = sub_0005c7c4[arg1][idx + 4].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_0005c7c4[arg1][4].length + 31 / 32
            while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
                sub_0005c7c4[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_0d3878d1(?) {
    sub_0005c7c4[arg1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_0005c7c4[arg1].field_512 = sub_0005c7c4[arg1].field_512
    sub_0005c7c4[arg1].field_768 = sub_0005c7c4[arg1].field_768
    if 31 >= sub_0005c7c4[arg1][4].length:
        idx = 0
        while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
            sub_0005c7c4[arg1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_0005c7c4[arg1].field_1024 = Mask(255, 1, sub_0005c7c4[arg1].field_1024 and (256 * not sub_0005c7c4[arg1].field_1024) - 1) + 1
        if not Mask(255, 1, sub_0005c7c4[arg1].field_1024 and (256 * not sub_0005c7c4[arg1].field_1024) - 1):
            idx = 0
            while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
                sub_0005c7c4[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
                sub_0005c7c4[arg1][s + 4].field_0 = sub_0005c7c4[arg1][idx + 4].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_0005c7c4[arg1][4].length + 31 / 32
            while sub_0005c7c4[arg1][4].length + 31 / 32 > idx:
                sub_0005c7c4[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_611ab067(?) {
    if stor5 != msg.sender:
        return 0
    uint256(stor0[address(arg1)]) = arg2 or Mask(96, 160, uint256(stor0[address(arg1)]))
    balance[address(arg2)].field_768++
    if not balance[address(arg2)].field_768 <= balance[address(arg2)].field_768 + 1:
        idx = balance[address(arg2)].field_768 + 1
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor[balance[address(arg2)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balance', 1)))].field_0 = arg1 or Mask(96, 160, stor[balance[address(arg2)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balance', 1)))].field_0)
    balance[address(arg2)].field_512 = balance[address(arg2)].field_512
    if not balance[address(arg2)].field_768:
        idx = 0
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][s + 3].field_0 = balance[address(arg2)][idx + 3].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = balance[address(arg2)].field_768
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_ccd9e09c(?) {
    if stor5 != msg.sender:
        return 0
    address(stor0[address(arg1)]) = 0
    idx = arg3
    while uint32(idx) < balance[address(arg2)].field_768 - 1:
        require uint32(idx + 1) < balance[address(arg2)].field_768
        mem[0] = sha3(address(arg2), 1) + 3
        require uint32(idx) < balance[address(arg2)].field_768
        stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balance', 1))) + uint32(idx)].field_0 = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balance', 1))) + uint32(idx + 1)].field_0
        idx = idx + 1
        continue 
    require balance[address(arg2)].field_768 - 1 < balance[address(arg2)].field_768
    stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balance', 1))) + balance[address(arg2)].field_768].field_0 = 0
    balance[address(arg2)].field_768--
    if not balance[address(arg2)].field_768 <= balance[address(arg2)].field_768 - 1:
        idx = balance[address(arg2)].field_768 - 1
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    balance[address(arg2)].field_512 = balance[address(arg2)].field_512
    if not balance[address(arg2)].field_768:
        idx = 0
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][s + 3].field_0 = balance[address(arg2)][idx + 3].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = balance[address(arg2)].field_768
        while balance[address(arg2)].field_768 > idx:
            balance[address(arg2)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_0d74e80f(?) {
    if 0 == address(stor0[address(arg1)]):
        if not balance[address(arg1)].field_768:
            if balance[address(msg.sender)].field_0 < arg2:
                return 0
            balance[address(msg.sender)].field_0 = balance[address(msg.sender)].field_0 - arg2 - stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_256 = balance[stor5].field_256
            balance[stor5].field_512 = balance[stor5].field_512
            balance[stor5].field_768 = balance[stor5].field_768
            if not balance[stor5].field_768:
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][s + 3].field_0 = balance[stor5][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[stor5].field_768
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(msg.sender)].field_512 = balance[address(msg.sender)].field_512
            if not balance[address(msg.sender)].field_768:
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][s + 3].field_0 = balance[address(msg.sender)][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[address(msg.sender)].field_768
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(arg1)].field_0 += arg2
            balance[address(arg1)].field_512 = uint8(bool(balance[address(arg1)].field_512))
        else:
            mem[416] = balance[address(arg1)][3].field_0
            idx = 416
            s = 0
            while (32 * balance[address(arg1)].field_768) + 384 > idx:
                mem[idx + 32] = balance[address(arg1)][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if balance[address(msg.sender)].field_0 < arg2:
                return 0
            balance[address(msg.sender)].field_0 = balance[address(msg.sender)].field_0 - arg2 - stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_256 = balance[stor5].field_256
            balance[stor5].field_512 = balance[stor5].field_512
            balance[stor5].field_768 = balance[stor5].field_768
            if not balance[stor5].field_768:
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][s + 3].field_0 = balance[stor5][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[stor5].field_768
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(msg.sender)].field_512 = balance[address(msg.sender)].field_512
            if not balance[address(msg.sender)].field_768:
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][s + 3].field_0 = balance[address(msg.sender)][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[address(msg.sender)].field_768
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(arg1)].field_0 += arg2
            balance[address(arg1)].field_512 = bool(balance[address(arg1)].field_512)
        if not balance[address(arg1)].field_768:
            idx = 0
            while balance[address(arg1)].field_768 > idx:
                balance[address(arg1)][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 416
            while (32 * balance[address(arg1)].field_768) + 416 > idx:
                balance[address(arg1)][s + 3].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * balance[address(arg1)].field_768) + 31) >> 5
            while balance[address(arg1)].field_768 > idx:
                balance[address(arg1)][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        sub_0005c7c4[stor16].field_0 = block.timestamp
        sub_0005c7c4[stor16].field_256 = arg2
        sub_0005c7c4[stor16].field_512 = arg1
        sub_0005c7c4[stor16].field_768 = msg.sender
        sub_0005c7c4[stor16].field_1024 = 0
        sub_0005c7c4[stor16].field_1025 = 0
        sub_0005c7c4[stor16].field_1032 = mem[(32 * balance[address(arg1)].field_768) + 608 len 31]
        idx = 0
        while sub_0005c7c4[stor16][4].length + 31 / 32 > idx:
            sub_0005c7c4[stor16][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        stor15[address(arg3)] = transactionCount
        transactionCount++
        emit Transfer(arg2, arg3, msg.sender, arg1);
    else:
        if not balance[address(stor0[address(arg1)])].field_768:
            if balance[address(msg.sender)].field_0 < arg2:
                return 0
            balance[address(msg.sender)].field_0 = balance[address(msg.sender)].field_0 - arg2 - stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_256 = balance[stor5].field_256
            balance[stor5].field_512 = balance[stor5].field_512
            balance[stor5].field_768 = balance[stor5].field_768
            if not balance[stor5].field_768:
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][s + 3].field_0 = balance[stor5][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[stor5].field_768
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(msg.sender)].field_512 = balance[address(msg.sender)].field_512
            if not balance[address(msg.sender)].field_768:
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][s + 3].field_0 = balance[address(msg.sender)][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[address(msg.sender)].field_768
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(stor0[address(arg1)])].field_0 += arg2
            balance[address(stor0[address(arg1)])].field_512 = uint8(bool(balance[address(stor0[address(arg1)])].field_512))
        else:
            mem[416] = balance[address(stor0[address(arg1)])][3].field_0
            idx = 416
            s = 0
            while (32 * balance[address(stor0[address(arg1)])].field_768) + 384 > idx:
                mem[idx + 32] = balance[address(stor0[address(arg1)])][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if balance[address(msg.sender)].field_0 < arg2:
                return 0
            balance[address(msg.sender)].field_0 = balance[address(msg.sender)].field_0 - arg2 - stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_0 += stor4
            balance[stor5].field_256 = balance[stor5].field_256
            balance[stor5].field_512 = balance[stor5].field_512
            balance[stor5].field_768 = balance[stor5].field_768
            if not balance[stor5].field_768:
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[stor5].field_768 > idx:
                    balance[stor5][s + 3].field_0 = balance[stor5][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[stor5].field_768
                while balance[stor5].field_768 > idx:
                    balance[stor5][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(msg.sender)].field_512 = balance[address(msg.sender)].field_512
            if not balance[address(msg.sender)].field_768:
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][s + 3].field_0 = balance[address(msg.sender)][idx + 3].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = balance[address(msg.sender)].field_768
                while balance[address(msg.sender)].field_768 > idx:
                    balance[address(msg.sender)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            balance[address(stor0[address(arg1)])].field_0 += arg2
            balance[address(stor0[address(arg1)])].field_512 = bool(balance[address(stor0[address(arg1)])].field_512)
        if not balance[address(stor0[address(arg1)])].field_768:
            idx = 0
            while balance[address(stor0[address(arg1)])].field_768 > idx:
                balance[address(stor0[address(arg1)])][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 416
            while (32 * balance[address(stor0[address(arg1)])].field_768) + 416 > idx:
                balance[address(stor0[address(arg1)])][s + 3].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * balance[address(stor0[address(arg1)])].field_768) + 31) >> 5
            while balance[address(stor0[address(arg1)])].field_768 > idx:
                balance[address(stor0[address(arg1)])][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        sub_0005c7c4[stor16].field_0 = block.timestamp
        sub_0005c7c4[stor16].field_256 = arg2
        sub_0005c7c4[stor16].field_512 = address(stor0[address(arg1)])
        sub_0005c7c4[stor16].field_768 = msg.sender
        sub_0005c7c4[stor16].field_1024 = 0
        sub_0005c7c4[stor16].field_1025 = 0
        sub_0005c7c4[stor16].field_1032 = mem[(32 * balance[address(stor0[address(arg1)])].field_768) + 608 len 31]
        idx = 0
        while sub_0005c7c4[stor16][4].length + 31 / 32 > idx:
            sub_0005c7c4[stor16][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        stor15[address(arg3)] = transactionCount
        transactionCount++
        emit Transfer(arg2, arg3, msg.sender, address(stor0[address(arg1)]));
    return 1
}



}
