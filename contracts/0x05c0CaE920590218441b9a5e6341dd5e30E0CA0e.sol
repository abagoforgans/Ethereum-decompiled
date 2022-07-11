contract main {




// =====================  Runtime code  =====================


#
#  - sub_432299f9(?)
#  - sub_e3ab7094(?)
#  - sub_f4e8e517(?)
#
address owner;
address targetAddress;
mapping of uint8 stor2;
array of struct sub_1a170712;
array of struct stor4;
mapping of uint8 stor5;
mapping of uint256 sub_dbbd9eed;
mapping of address warriorToOwner;
mapping of uint256 sub_602493ab;
mapping of uint256 balanceOf;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of uint256 sub_3fdf2aeb;
mapping of uint256 sub_90818542;
mapping of uint256 sub_0a44dbc7;
mapping of uint256 sub_10c3a81d;
mapping of uint256 sub_c0d583f8;
mapping of uint256 sub_ad0bff3b;
mapping of address sub_8ff1d5eb;
mapping of uint256 sub_f0d1269e;
mapping of uint256 stor23;

function sub_0a44dbc7(?) {
    require calldata.size - 4 >= 32
    return sub_0a44dbc7[arg1]
}

function sub_10c3a81d(?) {
    require calldata.size - 4 >= 32
    return sub_10c3a81d[arg1]
}

function sub_1a170712(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1a170712.length
    mem[128] = stor[sha3((9 * arg1) + ('name', 'sub_1a170712', 3) + 1)].field_0
    idx = 128
    s = 0
    while stor[(9 * arg1) + ('name', 'sub_1a170712', 3) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'sub_1a170712', 3) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_1a170712[arg1].field_0, 
           Array(len=stor[(9 * arg1) + ('name', 'sub_1a170712', 3) + 1].length, data=mem[128 len stor[(9 * arg1) + ('name', 'sub_1a170712', 3) + 1].length]),
           sub_1a170712[arg1].field_512,
           sub_1a170712[arg1].field_768,
           sub_1a170712[arg1].field_1024,
           sub_1a170712[arg1].field_1280,
           sub_1a170712[arg1].field_1280,
           sub_1a170712[arg1].field_1280,
           sub_1a170712[arg1].field_1280,
           sub_1a170712[arg1].field_1536,
           sub_1a170712[arg1].field_1792,
           sub_1a170712[arg1].field_2048
}

function sub_2a879867(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_3fdf2aeb(?) {
    require calldata.size - 4 >= 32
    return sub_3fdf2aeb[arg1]
}

function sub_602493ab(?) {
    require calldata.size - 4 >= 32
    return sub_602493ab[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return warriorToOwner[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_8ff1d5eb(?) {
    require calldata.size - 4 >= 32
    return sub_8ff1d5eb[arg1]
}

function sub_90818542(?) {
    require calldata.size - 4 >= 32
    return sub_90818542[arg1]
}

function warriorToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    return warriorToOwner[arg1]
}

function sub_ad0bff3b(?) {
    require calldata.size - 4 >= 32
    return sub_ad0bff3b[arg1]
}

function sub_c0d583f8(?) {
    require calldata.size - 4 >= 32
    return sub_c0d583f8[arg1]
}

function initialized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function target() {
    return targetAddress
}

function sub_dbbd9eed(?) {
    require calldata.size - 4 >= 32
    return sub_dbbd9eed[arg1]
}

function sub_f0d1269e(?) {
    require calldata.size - 4 >= 32
    return sub_f0d1269e[arg1]
}

function killContract() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function upgradeTo(address arg1) {
    require calldata.size - 4 < 32
    revert
}

function initialize() {
    require not stor2[stor1]
    stor2[stor1] = 1
    emit EventInitialized(targetAddress);
}

function sub_e35147ff(?) {
    require calldata.size - 4 >= 32
    mem[416 len 0] = None
    return Array(len=7, data=mem[416 len 224])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_131a3353(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == warriorToOwner[arg1]
    require msg.value == 5 * 10^15
    require arg1 < sub_1a170712.length
    sub_1a170712[arg1].field_1312 = 0
    emit 0x760cd978: arg1
}

function sub_687689c7(?) {
    require calldata.size - 4 >= 64
    require msg.sender == warriorToOwner[arg1]
    require balanceOf[address(msg.sender)] > 1
    require arg1 < sub_1a170712.length
    sub_1a170712[arg1].field_1792 = arg2
    emit 0x13d1d2c8: arg1, arg2
}

function sub_34e1778f(?) {
    require calldata.size - 4 >= 64
    require msg.sender == warriorToOwner[arg1]
    require balanceOf[address(msg.sender)] > 1
    require arg1 < sub_1a170712.length
    sub_1a170712[arg1].field_2048 = arg2 / 10^18
    emit 0x60061f25: arg1, arg2
}

function sub_460be93d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == warriorToOwner[arg1]
    require arg1 < sub_1a170712.length
    sub_1a170712[arg1].field_1792 = 0
    sub_1a170712[arg1].field_2048 = 0
    emit 0xfd01ee47: arg1
    emit 0xe2e4f49c: arg1
}

function sub_2f1030dd(?) {
    require calldata.size - 4 >= 32
    require msg.sender == warriorToOwner[arg1]
    require sub_602493ab[address(msg.sender)] >= 40
    sub_602493ab[address(msg.sender)] -= 40
    require arg1 < sub_1a170712.length
    sub_1a170712[arg1].field_1312 = 0
    emit 0x760cd978: arg1
}

function sub_40f53ae4(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        require msg.value == 5 * 10^13 * 3600
        sub_602493ab[address(msg.sender)] += 1000
    else:
        require msg.value == 2 * 10^16
        sub_602493ab[address(msg.sender)] += 100
    emit buyGold(msg.sender);
}

function sub_6aa4487b(?) {
    require calldata.size - 4 >= 96
    require sub_602493ab[address(msg.sender)] >= sub_dbbd9eed[arg1]
    sub_602493ab[address(msg.sender)] -= sub_dbbd9eed[arg1]
    if not arg3:
        sub_ad0bff3b[arg2] = arg1
    else:
        sub_c0d583f8[arg2] = arg1
    emit 0xe38313bd: msg.sender
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == warriorToOwner[arg2]
    require balanceOf[address(msg.sender)] > 1
    balanceOf[address(arg1)]++
    balanceOf[address(msg.sender)]--
    warriorToOwner[arg2] = arg1
    emit Transfer(arg2, msg.sender, arg1);
}

function changeName(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg1 < sub_1a170712.length
    require sub_1a170712[arg1].field_1280 >= 2
    require msg.sender == warriorToOwner[arg1]
    require msg.value == 10^16
    require arg1 < sub_1a170712.length
    stor[sha3((9 * arg1) + ('name', 'sub_1a170712', 3) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_4a5285ea(?) payable {
    require calldata.size - 4 >= 32
    require warriorToOwner[arg1] != msg.sender
    require arg1 < sub_1a170712.length
    require sub_602493ab[address(msg.sender)] >= sub_1a170712[arg1].field_2048
    require sub_1a170712[arg1].field_2048
    sub_1a170712[arg1].field_2048 = 0
    sub_602493ab[address(msg.sender)] -= sub_1a170712[arg1].field_2048
    sub_602493ab[stor7[arg1]] += sub_1a170712[arg1].field_2048
    balanceOf[address(msg.sender)]++
    balanceOf[stor7[arg1]]--
    warriorToOwner[arg1] = msg.sender
    emit Transfer(arg1, warriorToOwner[arg1], msg.sender);
    emit 0xe2e4f49c: arg1
}

function sub_7a1da2cc(?) {
    if sub_1a170712.length:
        mem[128 len 32 * sub_1a170712.length] = code.data[24403 len 32 * sub_1a170712.length]
    idx = 0
    while idx < sub_1a170712.length:
        mem[0] = idx
        mem[32] = 23
        require idx < sub_1a170712.length
        mem[(32 * idx) + 128] = stor23[idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_1a170712.length) + 192 len floor32(sub_1a170712.length)] = mem[128 len floor32(sub_1a170712.length)]
    return Array(len=sub_1a170712.length, data=mem[128 len floor32(sub_1a170712.length)], mem[(32 * sub_1a170712.length) + floor32(sub_1a170712.length) + 192 len (32 * sub_1a170712.length) - floor32(sub_1a170712.length)]), 
}

function sub_6f29743e(?) {
    require calldata.size - 4 >= 32
    if stor10[arg1]:
        mem[128 len 32 * stor10[arg1]] = code.data[24403 len 32 * stor10[arg1]]
    idx = 0
    s = 0
    while idx < sub_1a170712.length:
        mem[0] = idx
        mem[32] = 11
        if stor11[idx] != arg1:
            mem[0] = idx
            mem[32] = 12
            if stor12[idx] != arg1:
                idx = idx + 1
                s = s
                continue 
        require s < stor10[arg1]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * stor10[arg1]) + 192 len floor32(stor10[arg1])] = mem[128 len floor32(stor10[arg1])]
    return Array(len=stor10[arg1], data=mem[128 len floor32(stor10[arg1])], mem[(32 * stor10[arg1]) + floor32(stor10[arg1]) + 192 len (32 * stor10[arg1]) - floor32(stor10[arg1])]), 
}

function sub_574bd50c(?) {
    require calldata.size - 4 >= 32
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[24403 len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx < sub_1a170712.length:
        mem[0] = idx
        mem[32] = 7
        if warriorToOwner[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function buyItem(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require sub_602493ab[address(msg.sender)] >= sub_dbbd9eed[arg1]
    sub_602493ab[address(msg.sender)] -= sub_dbbd9eed[arg1]
    require arg1 < stor4.length
    require arg2 < sub_1a170712.length
    require stor4[arg1].field_1024 <= sub_1a170712[arg2].field_1280
    if not arg3:
        sub_0a44dbc7[arg2] = arg1
    else:
        sub_3fdf2aeb[arg2] = arg1
    mem[165] = stor[sha3((6 * arg1) + ('name', 'stor4', 4) + 2)].field_0
    idx = 165
    s = 0
    while stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length + 133 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor4', 4) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[165 len stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length]) == sha3('items'):
        if not stor4[arg1].field_768:
            if not arg3:
                sub_10c3a81d[arg2] = 0
            else:
                sub_90818542[arg2] = 0
        else:
            if not arg3:
                sub_10c3a81d[arg2] = stor4[arg1].field_768
            else:
                sub_90818542[arg2] = stor4[arg1].field_768
    emit 0xe38313bd: msg.sender
}

function sub_c5052b5e(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    sub_1a170712.length++
    sub_1a170712[sub_1a170712.length].field_0 = sub_1a170712.length
    stor[sha3((9 * sub_1a170712.length) + ('name', 'sub_1a170712', 3) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_1a170712[sub_1a170712.length].field_512 = arg2
    sub_1a170712[sub_1a170712.length].field_768 = 0
    sub_1a170712[sub_1a170712.length].field_1024 = 0
    sub_1a170712[sub_1a170712.length].field_1280 = arg4
    sub_1a170712[sub_1a170712.length].field_1312 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1344 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1376 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1792 = arg3
    sub_1a170712[sub_1a170712.length].field_2048 = 0
    warriorToOwner[stor3.length] = msg.sender
    sub_3fdf2aeb[stor3.length] = 0
    sub_0a44dbc7[stor3.length] = 0
    sub_90818542[stor3.length] = 0
    sub_10c3a81d[stor3.length] = 0
    stor23[stor3.length] = 0
    balanceOf[address(msg.sender)]++
    emit 0xd5cf0d6a: sub_1a170712.length, arg3
}

function buyWarrior(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require warriorToOwner[arg1] != msg.sender
    require arg1 < sub_1a170712.length
    require msg.value == sub_1a170712[arg1].field_1792
    require sub_1a170712[arg1].field_1792
    sub_1a170712[arg1].field_1792 = 0
    if warriorToOwner[arg1] == owner:
        balanceOf[address(msg.sender)]++
        balanceOf[stor7[arg1]]--
        warriorToOwner[arg1] = msg.sender
        emit Transfer(arg1, warriorToOwner[arg1], msg.sender);
        if warriorToOwner[arg1] != owner:
            call warriorToOwner[arg1] with:
               value sub_1a170712[arg1].field_1792 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require 300 * sub_1a170712[arg1].field_1792 / 10000 <= sub_1a170712[arg1].field_1792 - (300 * sub_1a170712[arg1].field_1792 / 10000)
        balanceOf[address(msg.sender)]++
        balanceOf[stor7[arg1]]--
        warriorToOwner[arg1] = msg.sender
        emit Transfer(arg1, warriorToOwner[arg1], msg.sender);
        if warriorToOwner[arg1] != owner:
            call warriorToOwner[arg1] with:
               value sub_1a170712[arg1].field_1792 - (300 * sub_1a170712[arg1].field_1792 / 10000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xfd01ee47: arg1
}

function sub_27e8ebe3(?) {
    require calldata.size - 4 >= 64
    require msg.sender == warriorToOwner[arg1]
    require sub_602493ab[address(msg.sender)] >= 35
    sub_602493ab[address(msg.sender)] -= 35
    require arg1 < sub_1a170712.length
    require sub_1a170712[arg1].field_1312 <= block.timestamp
    if arg2 != 1:
        if arg2 != 2:
            if arg2 != 3:
                sub_1a170712[arg1].field_512 = 0
            else:
                sub_1a170712[arg1].field_512 = (1000 * sub_1a170712[arg1].field_512 / 1000) + (block.timestamp % 1000 % 99)
        else:
            if arg2 != 3:
                sub_1a170712[arg1].field_512 = (10^6 * sub_1a170712[arg1].field_512 / 10^6) + (1000 * block.timestamp % 1000 % 99) + (sub_1a170712[arg1].field_512 % 1000)
            else:
                sub_1a170712[arg1].field_512 = (1000 * sub_1a170712[arg1].field_512 / 1000) + (block.timestamp % 1000 % 99)
    else:
        if arg2 != 2:
            if arg2 != 3:
                sub_1a170712[arg1].field_512 = (10^9 * sub_1a170712[arg1].field_512 / 10^9) + (10^6 * block.timestamp % 1000 % 99) + (1000 * sub_1a170712[arg1].field_512 / 1000 % 1000) + (sub_1a170712[arg1].field_512 % 1000)
            else:
                sub_1a170712[arg1].field_512 = (1000 * sub_1a170712[arg1].field_512 / 1000) + (block.timestamp % 1000 % 99)
        else:
            if arg2 != 3:
                sub_1a170712[arg1].field_512 = (10^6 * sub_1a170712[arg1].field_512 / 10^6) + (1000 * block.timestamp % 1000 % 99) + (sub_1a170712[arg1].field_512 % 1000)
            else:
                sub_1a170712[arg1].field_512 = (1000 * sub_1a170712[arg1].field_512 / 1000) + (block.timestamp % 1000 % 99)
    emit 0x572e0331: arg1, arg2
}

function sub_0558febe(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg6
    stor4.length++
    stor4[stor4.length].field_0 = stor4.length
    stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor4[stor4.length].field_768 = arg3
    stor4[stor4.length].field_1024 = arg4
    stor4[stor4.length].field_1056 = Mask(224, 0, arg5)
    stor4[stor4.length].field_1280 = arg6
    stor5[stor4.length] = uint8(arg5)
    sub_dbbd9eed[stor4.length] = arg6
}

function sub_d07aeef2(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require not balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    sub_602493ab[address(msg.sender)] = 210
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    _106 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    sub_1a170712.length++
    sub_1a170712[sub_1a170712.length].field_0 = sub_1a170712.length
    stor[sha3((9 * sub_1a170712.length) + ('name', 'sub_1a170712', 3) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_1a170712[sub_1a170712.length].field_512 = (10^17 * sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % 10^10 / 10^10 % 5) + (10^15 * sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % 10^10 / 100 * 10^6 % 100 % 5) + (10^13 * sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % 10^10 / 10^6 % 100 % 5) + (10^11 * sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % 10^10 / 10000 % 100 % 5) + (10^9 * sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % 10^10 / 100 % 100 % 5) + (10000 * block.timestamp / 100 % 10) + (10 * block.timestamp % 10) + 101010101345005005
    sub_1a170712[sub_1a170712.length].field_768 = 0
    sub_1a170712[sub_1a170712.length].field_1024 = 0
    sub_1a170712[sub_1a170712.length].field_1280 = 1
    sub_1a170712[sub_1a170712.length].field_1288 = 0
    sub_1a170712[sub_1a170712.length].field_1312 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1344 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1376 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1536 = 0
    sub_1a170712[sub_1a170712.length].field_1792 = 0
    sub_1a170712[sub_1a170712.length].field_2048 = 0
    warriorToOwner[stor3.length] = msg.sender
    sub_3fdf2aeb[stor3.length] = 0
    sub_0a44dbc7[stor3.length] = 0
    sub_90818542[stor3.length] = 0
    sub_10c3a81d[stor3.length] = 0
    stor23[stor3.length] = 0
    emit 0x7cd9d1b3: sub_1a170712.length, Array(len=arg1.length, data=arg1[all]), (10^17 * _106 % 10^10 / 10^10 % 5) + (10^15 * _106 % 10^10 / 100 * 10^6 % 100 % 5) + (10^13 * _106 % 10^10 / 10^6 % 100 % 5) + (10^11 * _106 % 10^10 / 10000 % 100 % 5) + (10^9 * _106 % 10^10 / 100 % 100 % 5) + (10000 * block.timestamp / 100 % 10) + (10 * block.timestamp % 10) + 101010101345005005
    emit 0xa0f519fd: msg.sender
}

function items(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    mem[96] = stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length
    mem[128] = stor[sha3((6 * arg1) + ('name', 'stor4', 4) + 1)].field_0
    idx = 128
    s = 0
    while stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor4', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 160
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + 128] = stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length
    mem[0] = (6 * arg1) + sha3(4) + 2
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + 160] = stor[sha3((6 * arg1) + ('name', 'stor4', 4) + 2)].field_0
    idx = ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + 160
    s = 0
    while ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor4', 4) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 160] = stor4[arg1].field_0
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 256] = stor4[arg1].field_768
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 288] = stor4[arg1].field_1024
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 320] = bool(stor4[arg1].field_1056)
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 352] = stor4[arg1].field_1280
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 192] = 224
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 384] = stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 416 len ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length)] = mem[128 len ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length)]
    mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 224] = stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + 256
    mem[stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 416] = stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length
    mem[stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 448 len ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length)] = mem[ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + 160 len ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length)]
    if not stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length % 32:
        return stor4[arg1].field_0, 
               Array(len=stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length, data=mem[128 len ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length)], mem[(2 * ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length)) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 416 len stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length + stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + -ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + 32]),
               stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + 256,
               stor4[arg1].field_768,
               stor4[arg1].field_1024,
               bool(stor4[arg1].field_1056),
               stor4[arg1].field_1280
    mem[floor32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 448] = mem[floor32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + -stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length % 32 + 480 len stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length % 32]
    return stor4[arg1].field_0, 
           Array(len=stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length, data=mem[128 len ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length)], mem[(2 * ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length)) + ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + 416 len floor32(stor[(6 * arg1) + ('name', 'stor4', 4) + 2].length) + stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + -ceil32(stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length) + 64]),
           stor[(6 * arg1) + ('name', 'stor4', 4) + 1].length + 256,
           stor4[arg1].field_768,
           stor4[arg1].field_1024,
           bool(stor4[arg1].field_1056),
           stor4[arg1].field_1280
}



}
