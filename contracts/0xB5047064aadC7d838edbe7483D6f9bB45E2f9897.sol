contract main {


// =======================  Init code  ======================


uint8 stor5;
uint256 stor6;
address stor7;

function _fallback() {
    stor6 = 0
    stor7 = msg.sender
    stor5 = uint8(bool(code.data[13961 len 32]))
    return code.data[104 len 13857]
}



// =====================  Runtime code  =====================


#
#  - requestRandom(bytes32 arg1)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
uint8 stor5;
uint256 sub_b830620a;
address owner;
mapping of uint8 stor8;
array of uint256 sub_3bef6cd1;
mapping of uint8 sub_bf4fc438;
mapping of uint8 sub_74d8cec8;
mapping of uint256 sub_830f26e0;
mapping of uint256 sub_66fcd66f;
array of address sub_c15d2e46;
mapping of uint256 sub_436ad637;
mapping of address beneficiaries;
mapping of address winners;
mapping of uint256 sub_1e1142b3;
mapping of uint256 sub_7b5b094a;
mapping of uint256 sub_3cf558b9;
mapping of uint8 stor21;
mapping of uint8 stor22;
mapping of uint256 sub_63f7ec5e;
mapping of uint256 sub_2a3cb4b6;
mapping of uint256 sub_0ff90ce3;
uint256 sub_5709b815;
mapping of uint256 sub_bacd3f92;
array of struct sub_ace6e8be;

function sub_0b915b8b(?) {
    return bool(stor8[arg1])
}

function sub_0ff90ce3(?) {
    return sub_0ff90ce3[arg1]
}

function sub_1e1142b3(?) {
    return sub_1e1142b3[arg1]
}

function sub_2a3cb4b6(?) {
    return sub_2a3cb4b6[arg1]
}

function beneficiaries(bytes32 arg1) {
    return beneficiaries[arg1]
}

function sub_3bef6cd1(?) {
    require arg1 < sub_3bef6cd1.length
    return sub_3bef6cd1[arg1]
}

function sub_3cf558b9(?) {
    return sub_3cf558b9[arg1]
}

function winners(bytes32 arg1) {
    return winners[arg1]
}

function sub_436ad637(?) {
    return sub_436ad637[arg1][arg2]
}

function sub_52df4453(?) {
    return bool(stor21[arg1])
}

function sub_5709b815(?) {
    return sub_5709b815
}

function sub_63f7ec5e(?) {
    return sub_63f7ec5e[arg1]
}

function sub_66fcd66f(?) {
    return sub_66fcd66f[arg1]
}

function isOpened() {
    return bool(stor5)
}

function sub_74d8cec8(?) {
    require sub_74d8cec8[arg1] <= 1
    return sub_74d8cec8[arg1]
}

function sub_7b5b094a(?) {
    return sub_7b5b094a[arg1]
}

function sub_804cd06e(?) {
    return bool(stor22[arg1])
}

function sub_830f26e0(?) {
    return sub_830f26e0[arg1]
}

function owner() {
    return owner
}

function sub_ace6e8be(?) {
    return sub_ace6e8be[arg1][0 len sub_ace6e8be[arg1].length].field_0
}

function sub_b830620a(?) {
    return sub_b830620a
}

function sub_bacd3f92(?) {
    return sub_bacd3f92[arg1]
}

function sub_bf4fc438(?) {
    require sub_bf4fc438[arg1] <= 1
    return sub_bf4fc438[arg1]
}

function sub_c15d2e46(?) {
    require arg2 < uint256(sub_c15d2e46[arg1])
    return address(sub_c15d2e46[arg1][arg2])
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function sub_d45b6153(?) {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function open() {
    require not stor5
    require ext_code.size(msg.sender)
    call msg.sender.0x692aa97e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    stor5 = 1
}

function sub_5927f9de(?) payable {
    require stor5
    require not stor8[arg1]
    require sub_63f7ec5e[arg1] > 0
    require beneficiaries[arg1] == msg.sender
    require msg.value == sub_63f7ec5e[arg1]
    stor8[arg1] = 1
    sub_3bef6cd1.length++
    if not sub_3bef6cd1.length <= sub_3bef6cd1.length + 1:
        idx = sub_3bef6cd1.length + 1
        while sub_3bef6cd1.length > idx:
            sub_3bef6cd1[idx] = 0
            idx = idx + 1
            continue 
    sub_3bef6cd1[sub_3bef6cd1.length] = arg1
    sub_7b5b094a[arg1] = sub_2a3cb4b6[arg1] + block.timestamp
    emit 0x20fd0296: arg1, msg.value
}

function sub_b1c715c3(?) {
    require not stor5
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    require ext_code.size(msg.sender)
    call msg.sender.0x692aa97e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    sub_1e1142b3[arg1] = arg2
    sub_7b5b094a[arg1] = arg3
    sub_3cf558b9[arg1] = arg4
    stor21[arg1] = uint8(arg5)
    sub_63f7ec5e[arg1] = arg6
    sub_2a3cb4b6[arg1] = arg7
    sub_0ff90ce3[arg1] = arg8
}

function sub_af24dc7e(?) {
    require not stor5
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    require ext_code.size(msg.sender)
    call msg.sender.0x692aa97e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    uint256(sub_c15d2e46[arg1])++
    if not uint256(sub_c15d2e46[arg1]) <= uint256(sub_c15d2e46[arg1]) + 1:
        idx = uint256(sub_c15d2e46[arg1]) + 1
        while uint256(sub_c15d2e46[arg1]) > idx:
            uint256(sub_c15d2e46[arg1][idx]) = 0
            idx = idx + 1
            continue 
    address(sub_c15d2e46[arg1][uint256(sub_c15d2e46[arg1])]) = arg2
    sub_436ad637[arg1][address(arg2)] = arg3
}

function bid(bytes32 arg1) payable {
    require stor5
    require stor8[arg1]
    require sub_7b5b094a[arg1] >= block.timestamp
    require sub_3cf558b9[arg1] > sub_1e1142b3[arg1]
    require msg.value <= sub_3cf558b9[arg1] - sub_1e1142b3[arg1]
    if msg.value > 0:
        if not sub_436ad637[arg1][address(msg.sender)]:
            uint256(sub_c15d2e46[arg1])++
            if not uint256(sub_c15d2e46[arg1]) <= uint256(sub_c15d2e46[arg1]) + 1:
                idx = uint256(sub_c15d2e46[arg1]) + 1
                while uint256(sub_c15d2e46[arg1]) > idx:
                    uint256(sub_c15d2e46[arg1][idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_c15d2e46[arg1][uint256(sub_c15d2e46[arg1])]) = msg.sender
        sub_436ad637[arg1][address(msg.sender)] += msg.value
        sub_1e1142b3[arg1] += msg.value
        emit 0xaf83f1a9: arg1, msg.sender, msg.value
}

function sub_0639f54d(?) {
    require not stor5
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    require ext_code.size(msg.sender)
    call msg.sender.0x692aa97e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    sub_3bef6cd1.length++
    if not sub_3bef6cd1.length <= sub_3bef6cd1.length + 1:
        idx = sub_3bef6cd1.length + 1
        while sub_3bef6cd1.length > idx:
            sub_3bef6cd1[idx] = 0
            idx = idx + 1
            continue 
    sub_3bef6cd1[sub_3bef6cd1.length] = arg1
    stor8[arg1] = uint8(arg2)
    require arg3 <= 1
    sub_bf4fc438[arg1] = arg3
    require arg4 <= 1
    sub_74d8cec8[arg1] = arg4
    sub_830f26e0[arg1] = arg5
    sub_66fcd66f[arg1] = arg6
    beneficiaries[arg1] = arg7
    winners[arg1] = arg8
}

function migrate(address arg1) {
    require owner == msg.sender
    require stor5
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    require ext_code.size(arg1)
    call arg1.0x692aa97e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    stor5 = 0
    s = 0
    idx = 0
    while idx < sub_3bef6cd1.length:
        if not stor22[stor9[idx]]:
            require sub_bf4fc438[stor9[idx]] <= 1
            require sub_74d8cec8[stor9[idx]] <= 1
            require ext_code.size(arg1)
            call arg1.0x639f54d with:
                 gas gas_remaining - 710 wei
                args sub_3bef6cd1[idx], bool(stor8[stor9[idx]]), sub_bf4fc438[stor9[idx]], sub_74d8cec8[stor9[idx]], sub_830f26e0[stor9[idx]], sub_66fcd66f[stor9[idx]], beneficiaries[stor9[idx]], winners[stor9[idx]]
            require ext_call.success
            mem[96] = 0xb1c715c300000000000000000000000000000000000000000000000000000000
            mem[100] = sub_3bef6cd1[idx]
            mem[132] = sub_1e1142b3[stor9[idx]]
            mem[164] = sub_7b5b094a[stor9[idx]]
            mem[196] = sub_3cf558b9[stor9[idx]]
            mem[228] = bool(stor21[stor9[idx]])
            mem[260] = sub_63f7ec5e[stor9[idx]]
            mem[292] = sub_2a3cb4b6[stor9[idx]]
            mem[324] = sub_0ff90ce3[stor9[idx]]
            require ext_code.size(arg1)
            call arg1.0xb1c715c3 with:
                 gas gas_remaining - 710 wei
                args sub_3bef6cd1[idx], sub_1e1142b3[stor9[idx]], sub_7b5b094a[stor9[idx]], sub_3cf558b9[stor9[idx]], bool(stor21[stor9[idx]]), sub_63f7ec5e[stor9[idx]], sub_2a3cb4b6[stor9[idx]], sub_0ff90ce3[stor9[idx]]
            require ext_call.success
        mem[0] = sub_3bef6cd1[idx]
        mem[32] = 14
        s = 0
        while s < uint256(sub_c15d2e46[stor9[idx]]):
            require s < uint256(sub_c15d2e46[stor9[idx]])
            require s < uint256(sub_c15d2e46[stor9[idx]])
            mem[96] = 0xaf24dc7e00000000000000000000000000000000000000000000000000000000
            mem[100] = sub_3bef6cd1[idx]
            mem[132] = address(sub_c15d2e46[stor9[idx]][s])
            mem[164] = sub_436ad637[stor9[idx]][address(stor14[stor9[idx]][s])]
            require ext_code.size(arg1)
            call arg1.0xaf24dc7e with:
                 gas gas_remaining - 710 wei
                args sub_3bef6cd1[idx], address(sub_c15d2e46[stor9[idx]][s]), sub_436ad637[stor9[idx]][address(stor14[stor9[idx]][s])]
            require ext_call.success
            mem[0] = sub_3bef6cd1[idx]
            mem[32] = 14
            s = s + 1
            continue 
        s = sub_3bef6cd1[idx]
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    call arg1.0xfcfff16f with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_7621bd09(?) {
    require stor8[arg1]
    require not stor21[arg1]
    require sub_ace6e8be[arg1].length
    stor21[arg1] = 1
    mem[32] = 28
    mem[96] = sub_ace6e8be[arg1].length
    mem[0] = sha3(arg1, 28)
    mem[128] = sub_ace6e8be[arg1].field_0
    idx = 128
    s = 0
    while sub_ace6e8be[arg1].length + 96 > idx:
        mem[idx + 32] = sub_ace6e8be[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_ace6e8be[arg1].length) + 160
    mem[ceil32(sub_ace6e8be[arg1].length) + 128] = 0
    idx = 0
    s = 0
    while idx < sub_ace6e8be[arg1].length:
        require idx < sub_ace6e8be[arg1].length
        require idx < sub_ace6e8be[arg1].length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                require idx < sub_ace6e8be[arg1].length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    require sub_74d8cec8[arg1] <= 1
    if not sub_74d8cec8[arg1]:
        idx = 0
        t = s
        while idx < uint256(sub_c15d2e46[arg1]):
            require idx < uint256(sub_c15d2e46[arg1])
            require idx < uint256(sub_c15d2e46[arg1])
            if t > sub_436ad637[arg1][address(stor14[arg1][idx])]:
                mem[0] = arg1
                mem[32] = 14
                idx = idx + 1
                t = t - sub_436ad637[arg1][address(stor14[arg1][idx])]
                continue 
            winners[arg1] = address(sub_c15d2e46[arg1][idx])
            emit 0x3040ccd1: arg1, winners[arg1]
            if sub_1e1142b3[arg1] - (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) > 0:
                call beneficiaries[arg1] with:
                   value sub_1e1142b3[arg1] - (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x6651a2d7: arg1, beneficiaries[arg1], sub_1e1142b3[arg1] - (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100)
            if (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1] > 0:
                if (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1] < eth.balance(this.address):
                    call owner with:
                       value (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit 0x1fdbdab5: arg1, (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1]
            if sub_63f7ec5e[arg1] > 0:
                if (100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100 > 0:
                    call winners[arg1] with:
                       value (100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0xf0138e41: arg1, winners[arg1], (100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100
                if sub_63f7ec5e[arg1] - ((100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100) > 0:
                    call owner with:
                       value sub_63f7ec5e[arg1] - ((100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x1fdbdab5: arg1, sub_63f7ec5e[arg1] - ((100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100)
            emit 0xac84b7bc: arg1
    else:
        require sub_74d8cec8[arg1] <= 1
        if sub_74d8cec8[arg1] == 1:
            require s < uint256(sub_c15d2e46[arg1])
            winners[arg1] = address(sub_c15d2e46[arg1][s])
    emit 0x3040ccd1: arg1, winners[arg1]
    if sub_1e1142b3[arg1] - (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) > 0:
        call beneficiaries[arg1] with:
           value sub_1e1142b3[arg1] - (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x6651a2d7: arg1, beneficiaries[arg1], sub_1e1142b3[arg1] - (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100)
    if (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1] > 0:
        if (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1] < eth.balance(this.address):
            call owner with:
               value (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0x1fdbdab5: arg1, (sub_1e1142b3[arg1] * sub_830f26e0[arg1] / 100) - sub_0ff90ce3[arg1]
    if sub_63f7ec5e[arg1] > 0:
        if (100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100 > 0:
            call winners[arg1] with:
               value (100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0xf0138e41: arg1, winners[arg1], (100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100
        if sub_63f7ec5e[arg1] - ((100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100) > 0:
            call owner with:
               value sub_63f7ec5e[arg1] - ((100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x1fdbdab5: arg1, sub_63f7ec5e[arg1] - ((100 * sub_63f7ec5e[arg1]) - (sub_66fcd66f[arg1] * sub_63f7ec5e[arg1]) / 100)
    emit 0xac84b7bc: arg1
}

function getOraclizePrice() {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string arg1) with:
         gas gas_remaining - 710 wei
        args ''
    require ext_call.success
    sub_5709b815 = ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).cbAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require stor8[stor27[arg1]]
    require not stor21[stor27[arg1]]
    sub_ace6e8be[stor27[arg1]][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_a0209a15(?) {
    require stor5
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string arg1) with:
         gas gas_remaining - 710 wei
        args ''
    require ext_call.success
    require owner == msg.sender
    require not stor8[arg1]
    require arg5 <= 100
    require arg5 * arg4 / 100 > ext_call.return_data[0]
    sub_b830620a++
    if arg9 > 0:
        sub_63f7ec5e[arg1] = arg9
        sub_2a3cb4b6[arg1] = arg3
    else:
        stor8[arg1] = 1
        sub_3bef6cd1.length++
        if not sub_3bef6cd1.length <= sub_3bef6cd1.length + 1:
            idx = sub_3bef6cd1.length + 1
            while sub_3bef6cd1.length > idx:
                sub_3bef6cd1[idx] = 0
                idx = idx + 1
                continue 
        sub_3bef6cd1[sub_3bef6cd1.length] = arg1
        sub_7b5b094a[arg1] = arg3 + block.timestamp
    beneficiaries[arg1] = arg2
    sub_3cf558b9[arg1] = arg4
    sub_830f26e0[arg1] = arg5
    sub_66fcd66f[arg1] = arg6
    require arg7 <= 1
    sub_bf4fc438[arg1] = arg7
    require arg8 <= 1
    sub_74d8cec8[arg1] = arg8
    emit 0x464f27e0: arg1
}



}
