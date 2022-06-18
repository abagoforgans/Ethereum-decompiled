contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
uint256 sub_c89421ad;
mapping of uint256 sub_f51efd7a;
mapping of uint256 sub_585c5b83;
uint8 decimals;
address tokenAddress; offset 8
address sub_43af9232Address;
address sub_97905fc0Address;
uint256 price;
array of struct stor8;
mapping of uint256 sub_5fd98f38;
mapping of address sub_29836cfa;
mapping of uint256 sub_698e2d57;
mapping of uint256 sub_08dd9989;
mapping of uint256 sub_9152e555;
mapping of uint256 sub_2cd53dd6;
uint256 sub_da0eac05;
uint256 sub_916df7e4;
uint256 sub_e2603c30;
uint256 sub_4b0177dc;
uint256 sub_a1579e73;
uint256 sub_e343cf62;
uint256 sub_eb391917;
uint256 sub_39509a8f;
uint8 sub_02a34ee1;
uint256 sub_446c3295;
uint256 sub_17af4fd1;
uint256 sub_37594aa2;
uint256 sub_02195d75;
big1024 stor27;
uint256 sub_b51b9aaf;
uint256 sub_61ed368c;
uint256 sub_fcd667c4;
uint256 sub_b1cb7f29;
uint256 sub_19aaaf01;
uint256 sub_930432da;
uint256 sub_2b2584bd;
address sub_a18b5325Address;
uint256 sub_2894fc00;
uint256 sub_3a44b4a2;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint8 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;

function sub_02195d75(?) {
    return uint256(sub_02195d75)
}

function sub_02a34ee1(?) {
    return bool(sub_02a34ee1)
}

function sub_08dd9989(?) {
    return sub_08dd9989[arg1]
}

function sub_17af4fd1(?) {
    return sub_17af4fd1
}

function sub_19aaaf01(?) {
    return sub_19aaaf01
}

function sub_2894fc00(?) {
    return sub_2894fc00
}

function sub_29836cfa(?) {
    return sub_29836cfa[arg1]
}

function sub_2b2584bd(?) {
    return sub_2b2584bd
}

function sub_2cd53dd6(?) {
    return sub_2cd53dd6[msg.sender][arg1]
}

function decimals() {
    return decimals
}

function sub_37594aa2(?) {
    return sub_37594aa2
}

function sub_39509a8f(?) {
    return sub_39509a8f
}

function sub_3a44b4a2(?) {
    return sub_3a44b4a2
}

function sub_43af9232(?) {
    return sub_43af9232Address
}

function sub_446c3295(?) {
    return sub_446c3295
}

function sub_4b0177dc(?) {
    return sub_4b0177dc
}

function sub_585c5b83(?) {
    return sub_585c5b83[arg1]
}

function getStatus(uint256 arg1) {
    require arg1 < stor8.length
    return bool(stor8[arg1].field_768)
}

function sub_5fd98f38(?) {
    return sub_5fd98f38[arg1]
}

function sub_61ed368c(?) {
    return sub_61ed368c
}

function sub_698e2d57(?) {
    return sub_698e2d57[arg1]
}

function sub_8a39d998(?) {
    return sub_2cd53dd6[arg1][arg2]
}

function owner() {
    return owner
}

function sub_9152e555(?) {
    return sub_9152e555[arg1]
}

function sub_916df7e4(?) {
    return sub_916df7e4
}

function sub_930432da(?) {
    return sub_930432da
}

function sub_97905fc0(?) {
    return sub_97905fc0Address
}

function tokenAddress() {
    return tokenAddress
}

function price() {
    return price
}

function sub_a1579e73(?) {
    return sub_a1579e73
}

function sub_a18b5325(?) {
    return sub_a18b5325Address
}

function sub_b1cb7f29(?) {
    return sub_b1cb7f29
}

function sub_b51b9aaf(?) {
    return sub_b51b9aaf
}

function sub_c89421ad(?) {
    return sub_c89421ad
}

function sub_da0eac05(?) {
    return sub_da0eac05
}

function sub_e2603c30(?) {
    return sub_e2603c30
}

function sub_e343cf62(?) {
    return sub_e343cf62
}

function sub_eb391917(?) {
    return sub_eb391917
}

function sub_f51efd7a(?) {
    return sub_f51efd7a[arg1]
}

function sub_fcd667c4(?) {
    return sub_fcd667c4
}

function kill(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    if arg1 != 201901261442:
        revert with 0, 'password is not right'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_6b8c3248(?) {
    return sub_4b0177dc, sub_a1579e73, sub_e343cf62, sub_eb391917, sub_39509a8f
}

function sub_4c2adf31(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    owner = arg1
}

function sub_1b71d0f2(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    sub_f51efd7a[address(arg1)] = arg2
}

function sub_030b7d87(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[uint128(mem[192 len 16], 0)]:
        revert with 0, 'permission deny'
    sub_19aaaf01 = arg1
    sub_930432da = arg2
}

function sub_9003fbef(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(96, 0, mem[192 len 12], 0)]:
        revert with 0, 'permission deny'
    sub_a18b5325Address = arg1
    sub_2894fc00 = arg2
}

function sub_0535c99e(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[mem[192 len 6], 0 % 281474976710656]:
        revert with 0, 'permission deny'
    sub_da0eac05 = arg1
    sub_916df7e4 = arg2
    sub_e2603c30 = arg3
}

function sub_205c1c4b(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x69205798 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e56008b6(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd5078158 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8ecf4be0(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(120, 0, mem[192 len 15], 0)]:
        revert with 0, 'permission deny'
    tokenAddress = arg1
    sub_43af9232Address = arg2
    price = arg3
    sub_97905fc0Address = arg4
}

function sub_1933c4f0(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(96, 0, mem[192 len 12], 0)]:
        revert with 0, 'permission deny'
    sub_446c3295 = arg1
    sub_17af4fd1 = arg2
    sub_37594aa2 = arg3
    uint256(sub_02195d75) = arg4
}

function sub_bad4ae35(?) {
    if msg.sender == arg1:
        revert with 0, 'Can't refer self'
    if sub_29836cfa[msg.sender]:
        revert with 0, 'you have already set refer'
    sub_29836cfa[msg.sender] = arg1
    emit 0x6cbfe858: arg1, msg.sender
    sub_698e2d57[address(arg1)]++
}

function sub_03dc14fc(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(136, 0, mem[192 len 15], Mask(16, 120, 'setReferLevelNums') >> 120, 0)]:
        revert with 0, 'permission deny'
    sub_61ed368c = arg1
    sub_fcd667c4 = arg2
    sub_b1cb7f29 = arg3
}

function sub_b97f5768(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    call owner with:
       value sub_c89421ad wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c89421ad = 0
}

function sub_2bb47617(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[uint64(mem[192 len 8], 0)]:
        revert with 0, 'permission deny'
    sub_4b0177dc = arg1
    sub_a1579e73 = arg2
    sub_e343cf62 = arg3
    sub_eb391917 = arg4
    sub_39509a8f = arg5
    sub_02a34ee1 = uint8(arg7)
    sub_b51b9aaf = arg6
}

function sub_78a1bf05(?) {
    return sub_61ed368c, 
           sub_fcd667c4,
           sub_b1cb7f29,
           sub_446c3295,
           sub_17af4fd1,
           sub_37594aa2,
           uint256(sub_02195d75),
           sub_da0eac05,
           sub_916df7e4,
           sub_e2603c30,
           sub_b51b9aaf,
           sub_930432da,
           sub_19aaaf01
}

function sub_8a9b6632(?) {
    if sub_a18b5325Address != msg.sender:
        revert with 0, 'you are not contrDrawAcct'
    if arg1 > sub_2b2584bd:
        revert with 0, 'balance is not enough'
    sub_2b2584bd -= arg1
    call sub_a18b5325Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3a44b4a2 += arg1
    emit 0xbaf47cd1: arg1, block.timestamp, msg.sender
}

function sub_3291fa5f(?) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
    sub_585c5b83[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]] = arg2
}

function sub_8dbc5813(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[arg1.length + ceil32(arg1.length) + 160] = sub_585c5b83[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]]
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function sub_701b80ec(?) {
    if block.timestamp - sub_9152e555[msg.sender] < 3600 * sub_930432da:
        revert with 0, 'can not less than 24 hours'
    if arg1 <= 0:
        revert with 0, 'refer amt not right'
    if arg1 > sub_5fd98f38[msg.sender]:
        revert with 0, 'refer amt not right'
    if arg1 > sub_08dd9989[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amt can not bigger than refer balance'
    sub_08dd9989[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd5078158 with:
         gas gas_remaining wei
        args msg.sender, sub_97905fc0Address, arg1 * 10^decimals * sub_b51b9aaf / 10000 / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_9152e555[msg.sender] = block.timestamp
    emit 0xeec80507: arg1, block.timestamp, msg.sender
}

function sub_bf4b45de(?) payable {
    if msg.value < sub_916df7e4:
        revert with 0, 'msg value is not right'
    if msg.value > sub_e2603c30:
        revert with 0, 'msg value is not right'
    if eth.balance(this.address) > sub_da0eac05:
        revert with 0, 'no Amount'
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd5078158 with:
         gas gas_remaining wei
        args msg.sender, sub_97905fc0Address, msg.value * 10^decimals * sub_b51b9aaf / 10000 / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8.length++
    stor8[stor8.length].field_0 = msg.sender
    storF3F7[stor8.length] = msg.value
    storF3F7[stor8.length] = block.timestamp
    storF3F7[stor8.length] = 1
    emit 0xade0c822: stor8.length + 1, msg.value, block.timestamp, msg.sender
    sub_5fd98f38[msg.sender] += msg.value
    sub_2b2584bd += msg.value * sub_2894fc00 / 10000
    if sub_29836cfa[msg.sender]:
        sub_08dd9989[stor10[msg.sender]] += msg.value * sub_4b0177dc / 10000
        if sub_29836cfa[sub_29836cfa[msg.sender]]:
            sub_08dd9989[stor10[stor10[msg.sender]]] += msg.value * sub_a1579e73 / 10000
            if sub_02a34ee1:
                if sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]:
                    if sub_698e2d57[stor10[stor10[stor10[msg.sender]]]] >= sub_61ed368c:
                        sub_08dd9989[stor10[stor10[stor10[msg.sender]]]] += msg.value * sub_e343cf62 / 10000
                    if sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]]:
                        if sub_698e2d57[stor10[stor10[stor10[stor10[msg.sender]]]]] >= sub_fcd667c4:
                            sub_08dd9989[stor10[stor10[stor10[stor10[msg.sender]]]]] += msg.value * sub_eb391917 / 10000
                        if sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]]]:
                            if sub_698e2d57[stor10[stor10[stor10[stor10[stor10[msg.sender]]]]]] >= sub_b1cb7f29:
                                sub_08dd9989[stor10[stor10[stor10[stor10[stor10[msg.sender]]]]]] += msg.value * sub_39509a8f / 10000
}

function sub_aed420e6(?) payable {
    if msg.sender == arg1:
        revert with 0, 'Can't refer self'
    if sub_29836cfa[msg.sender]:
        revert with 0, 'you have already set refer'
    sub_29836cfa[msg.sender] = arg1
    emit 0x6cbfe858: arg1, msg.sender
    sub_698e2d57[address(arg1)]++
    if msg.value < sub_916df7e4:
        revert with 0, 'msg value is not right'
    if msg.value > sub_e2603c30:
        revert with 0, 'msg value is not right'
    if eth.balance(this.address) > sub_da0eac05:
        revert with 0, 'no Amount'
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd5078158 with:
         gas gas_remaining wei
        args msg.sender, sub_97905fc0Address, msg.value * 10^decimals * sub_b51b9aaf / 10000 / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8.length++
    stor8[stor8.length].field_0 = msg.sender
    storF3F7[stor8.length] = msg.value
    storF3F7[stor8.length] = block.timestamp
    storF3F7[stor8.length] = 1
    emit 0xade0c822: stor8.length + 1, msg.value, block.timestamp, msg.sender
    sub_5fd98f38[msg.sender] += msg.value
    sub_2b2584bd += msg.value * sub_2894fc00 / 10000
    if sub_29836cfa[msg.sender]:
        sub_08dd9989[stor10[msg.sender]] += msg.value * sub_4b0177dc / 10000
        if sub_29836cfa[sub_29836cfa[msg.sender]]:
            sub_08dd9989[stor10[stor10[msg.sender]]] += msg.value * sub_a1579e73 / 10000
            if sub_02a34ee1:
                if sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]:
                    if sub_698e2d57[stor10[stor10[stor10[msg.sender]]]] >= sub_61ed368c:
                        sub_08dd9989[stor10[stor10[stor10[msg.sender]]]] += msg.value * sub_e343cf62 / 10000
                    if sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]]:
                        if sub_698e2d57[stor10[stor10[stor10[stor10[msg.sender]]]]] >= sub_fcd667c4:
                            sub_08dd9989[stor10[stor10[stor10[stor10[msg.sender]]]]] += msg.value * sub_eb391917 / 10000
                        if sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]]]:
                            if sub_698e2d57[stor10[stor10[stor10[stor10[stor10[msg.sender]]]]]] >= sub_b1cb7f29:
                                sub_08dd9989[stor10[stor10[stor10[stor10[stor10[msg.sender]]]]]] += msg.value * sub_39509a8f / 10000
}

function sub_4ecc9779(?) payable {
    if arg2 <= 0:
        revert with 0, 'amt > 0'
    require arg1 < stor8.length
    if stor8[arg1].field_0 != msg.sender:
        revert with 0, 'it is not your invest'
    if not stor8[arg1].field_768:
        revert with 0, 'this order is finished'
    require ext_code.size(sub_43af9232Address)
    call sub_43af9232Address.0x6c1dc9fa with:
         gas gas_remaining wei
        args stor8[arg1].field_512, stor8[arg1].field_256, arg2, msg.value >> 768, Mask(1024, 0, stor27), sub_2cd53dd6[msg.sender][arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    sub_2cd53dd6[msg.sender][arg1] += ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[32]:
        stor8[arg1].field_768 = 0
        require price
        require ext_code.size(tokenAddress)
        call tokenAddress.0xd5078158 with:
             gas gas_remaining wei
            args msg.sender, sub_97905fc0Address, msg.value * 10^decimals * sub_b51b9aaf / 10000 / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor8.length++
        stor8[stor8.length].field_0 = msg.sender
        storF3F7[stor8.length] = msg.value
        storF3F7[stor8.length] = block.timestamp
        storF3F7[stor8.length] = 1
        emit 0xade0c822: stor8.length + 1, msg.value, block.timestamp, msg.sender
        sub_5fd98f38[msg.sender] += msg.value
        sub_2b2584bd += msg.value * sub_2894fc00 / 10000
        if sub_29836cfa[msg.sender]:
            sub_08dd9989[stor10[msg.sender]] += msg.value * sub_4b0177dc / 10000
            if sub_29836cfa[sub_29836cfa[msg.sender]]:
                sub_08dd9989[stor10[stor10[msg.sender]]] += msg.value * sub_a1579e73 / 10000
                if sub_02a34ee1:
                    if sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]:
                        if sub_698e2d57[stor10[stor10[stor10[msg.sender]]]] >= sub_61ed368c:
                            sub_08dd9989[stor10[stor10[stor10[msg.sender]]]] += msg.value * sub_e343cf62 / 10000
                        if sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]]:
                            if sub_698e2d57[stor10[stor10[stor10[stor10[msg.sender]]]]] >= sub_fcd667c4:
                                sub_08dd9989[stor10[stor10[stor10[stor10[msg.sender]]]]] += msg.value * sub_eb391917 / 10000
                            if sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[sub_29836cfa[msg.sender]]]]]:
                                if sub_698e2d57[stor10[stor10[stor10[stor10[stor10[msg.sender]]]]]] >= sub_b1cb7f29:
                                    sub_08dd9989[stor10[stor10[stor10[stor10[stor10[msg.sender]]]]]] += msg.value * sub_39509a8f / 10000
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd5078158 with:
         gas gas_remaining wei
        args msg.sender, sub_97905fc0Address, arg2 * 10^decimals * sub_b51b9aaf / 10000 / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x74ed5947: arg2, block.timestamp, msg.sender
}



}
