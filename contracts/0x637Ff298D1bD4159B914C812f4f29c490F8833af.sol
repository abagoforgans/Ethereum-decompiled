contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of address stor1;
uint8 stor4;
uint32 stor4; offset 8
uint8 stor11;
uint256 stor11; offset 16
uint256 stor11; offset 8
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    uint8(stor4.field_0) = 1
    stor4.field_8 % 16777216 = 0
    uint8(stor11.field_0) = 1
    Mask(248, 0, stor11.field_8) = 1
    Mask(240, 0, stor11.field_16) = 0
    stor12 = 0
    stor13 = 1000
    stor14 = 0
    require not msg.value
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = msg.sender
    stor0[address(msg.sender)] = 4
    return code.data[457 len 22862]
}



// =====================  Runtime code  =====================


#
#  - ask(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - bid(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
const get_this_balance = eth.balance(this.address) / 10^18, eth.balance(this.address) - (10^18 * eth.balance(this.address) / 10^18)


mapping of uint8 admin_typeOf;
array of struct stor1;
mapping of struct token_orderSheet;
uint8 isPayable;
uint8 isWithdrawable; offset 8
uint8 isRequireData; offset 16
uint256 stor11; offset 16
uint256 stor11; offset 8
uint256 minimalPayValue;
uint256 exFeeRate;
uint256 exFeeTotal;
mapping of struct members;
array of address memberArray;
uint32 order_number;
array of address tokensArray;
mapping of uint256 stor9;

function members(address arg1) {
    return bool(uint8(members[arg1].field_0)), 
           bool(uint8(members[arg1].field_8)),
           members[arg1].field_256,
           members[arg1].field_512,
           members[arg1].field_768,
           members[arg1].field_1024,
           members[arg1].field_1280,
           members[arg1].field_1536,
           members[arg1].field_1792,
           address(members[arg1].field_2048)
}

function isRequireData() {
    return bool(isRequireData)
}

function isWithdrawable() {
    return bool(isWithdrawable)
}

function order_number() {
    return order_number
}

function token_member_order(address arg1, address arg2, uint256 arg3) {
    require arg3 < stor9[arg1][arg2]
    return token_member_order[uint8(arg3)]
}

function token_ask(address arg1, uint256 arg2) {
    require arg2 < stor7[arg1].field_0
    return token_ask[uint8(arg2)]
}

function token_bid(address arg1, uint256 arg2) {
    require arg2 < stor8[arg1].field_0
    return token_bid[uint8(arg2)]
}

function exFeeTotal() {
    return exFeeTotal
}

function exFeeRate() {
    return exFeeRate
}

function admin_typeOf(address arg1) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    require admin_typeOf[address(arg1)] <= 4
    return admin_typeOf[address(arg1)]
}

function MinimalPayValue() {
    return minimalPayValue
}

function memberArray(uint256 arg1) {
    require arg1 < memberArray.length
    return address(memberArray[arg1])
}

function isPayable() {
    return bool(isPayable)
}

function token_orderSheet(address arg1, uint32 arg2) {
    return bool(uint8(token_orderSheet[arg1][arg2].field_0)), 
           uint32(token_orderSheet[arg1][arg2].field_0),
           address(token_orderSheet[arg1][arg2].field_0),
           token_orderSheet[arg1][arg2].field_256,
           token_orderSheet[arg1][arg2].field_512,
           token_orderSheet[arg1][arg2].field_768,
           token_orderSheet[arg1][arg2].field_1024,
           token_orderSheet[arg1][arg2].field_1280,
           bool(uint8(token_orderSheet[arg1][arg2].field_1536))
}

function tokensArray(uint256 arg1) {
    require arg1 < tokensArray.length
    return tokensArray[arg1]
}

function _fallback() payable {
    revert
}

function admin_exFeeRate(uint256 arg1) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    exFeeRate = arg1
}

function admin_isPayable(bool arg1) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    isPayable = uint8(arg1)
}

function admin_isRequireData(bool arg1) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    Mask(240, 0, stor11.field_16) = Mask(240, 0, arg1)
}

function admin_isWithdrawable(bool arg1) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg1)
}

function admin_MinimalPayValue(uint256 arg1, uint256 arg2) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    minimalPayValue = (180 * arg1) + arg2
}

function admin_member_isWithdraw(address arg1, bool arg2) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    if bool(uint8(members[address(arg1)].field_0)) != 1:
        emit Logs(Array(len=18, data='member not existes'));
    else:
        Mask(248, 0, members[address(arg1)].field_8) = Mask(248, 0, arg2)
}

function admin_withdraw(uint256 arg1, uint256 arg2) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 3
    require eth.balance(this.address) >= (10^18 * arg1) + arg2
    call msg.sender with:
       value (10^18 * arg1) + arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function admin_add_modify(address arg1, uint8 arg2) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    require admin_typeOf[address(arg1)] <= 4
    require admin_typeOf[address(arg1)] > 2
    require admin_typeOf[address(arg1)] <= 4
    if admin_typeOf[address(arg1)] < 1:
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
        address(stor1[stor1.length].field_0) = arg1
    require arg2 <= 4
    admin_typeOf[address(arg1)] = arg2
}

function admin_list() {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    if not stor1.length:
        mem[(32 * stor1.length) + 160] = 32
        mem[(32 * stor1.length) + 192] = stor1.length
        mem[(32 * stor1.length) + 224 len floor32(stor1.length)] = mem[160 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 160
           len (96 * stor1.length) + 64
    mem[160] = address(stor1.field_0)
    idx = 160
    s = 0
    while (32 * stor1.length) + 128 > idx:
        mem[idx + 32] = address(stor1[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 224 len floor32(stor1.length)] = mem[160 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[160 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 224 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function admin_del(address arg1) {
    require admin_typeOf[address(msg.sender)] <= 4
    require admin_typeOf[address(msg.sender)] > 2
    require arg1 != msg.sender
    require admin_typeOf[address(arg1)] <= 4
    require admin_typeOf[address(arg1)] > 2
    require admin_typeOf[address(arg1)] <= 4
    if admin_typeOf[address(arg1)] > 0:
        admin_typeOf[address(arg1)] = 0
        idx = 0
        while idx < stor1.length - 1:
            mem[0] = 1
            if address(stor1[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            require stor1.length - 1 < stor1.length
            require idx < stor1.length
            address(stor1[idx].field_0) = address(stor1[stor1.length].field_0)
            stor1.length--
            if not stor1.length <= stor1.length - 1:
                idx = sha3(1) + stor1.length - 1
                while sha3(1) + stor1.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function pay() payable {
    require msg.value > minimalPayValue
    require isPayable
    require admin_typeOf[address(msg.sender)] <= 4
    if admin_typeOf[address(msg.sender)] != 4:
        if isRequireData:
            require 0 < calldata.size
            require admin_typeOf[call.func_hash << 248] <= 4
            require admin_typeOf[call.func_hash << 248] > 0
        if bool(uint8(members[address(msg.sender)].field_0)) != 1:
            uint8(members[address(msg.sender)].field_0) = 1
            Mask(248, 0, members[address(msg.sender)].field_8) = 1
            members[address(msg.sender)].field_256 = 0
            members[address(msg.sender)].field_512 = 0
            members[address(msg.sender)].field_768 = 0
            members[address(msg.sender)].field_1280 = 0
            members[address(msg.sender)].field_1024 = 0
            members[address(msg.sender)].field_1536 = 0
            members[address(msg.sender)].field_1792 = 0
            address(members[address(msg.sender)].field_2048) = 0
            memberArray.length++
            if not memberArray.length <= memberArray.length + 1:
                idx = memberArray.length + 1
                while memberArray.length > idx:
                    uint256(memberArray[idx]) = 0
                    idx = idx + 1
                    continue 
            address(memberArray[memberArray.length]) = msg.sender
        members[address(msg.sender)].field_768 += msg.value
        members[address(msg.sender)].field_256 += msg.value
        require 0 < calldata.size
        require admin_typeOf[call.func_hash << 248] <= 4
        if admin_typeOf[call.func_hash << 248] > 0:
            require 0 < calldata.size
            uint8(members[address(msg.sender)].field_2048) = uint8(call.func_hash)
            Mask(152, 0, members[address(msg.sender)].field_2056) = 0
        emit Paydata(msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), members[address(msg.sender)].field_768, msg.sender);
    return 1
}

function list_token_ask(address arg1) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    s = 0
    idx = 0
    while idx < stor7[address(arg1)].field_0:
        mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7)))[uint8(idx)]
        mem[32] = sha3(address(arg1), 10)
        mem[mem[64]] = address(token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_40)
        mem[mem[64] + 32] = uint32(token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_8)
        mem[mem[64] + 64] = token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_256
        mem[mem[64] + 96] = token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_512
        mem[mem[64] + 128] = token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1280
        mem[mem[64] + 160] = bool(uint8(token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1536))
        mem[mem[64] + 192] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7)))[uint8(idx)]
        emit Println(address(token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_0), uint32(token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_0), token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_256, token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_512, token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1280, bool(uint8(token_orderSheet[address(arg1)][uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1536)), stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7)))[uint8(idx)]);
        s = sha3(uint32(stor7[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224), sha3(address(arg1), 10))
        s = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7)))[uint8(idx)]
        idx = idx + 1
        continue 
}

function list_token_bid(address arg1) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    s = 0
    idx = 0
    while idx < stor8[address(arg1)].field_0:
        mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx)]
        mem[32] = sha3(address(arg1), 10)
        mem[mem[64]] = address(token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_40)
        mem[mem[64] + 32] = uint32(token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_8)
        mem[mem[64] + 64] = token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_256
        mem[mem[64] + 96] = token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_512
        mem[mem[64] + 128] = token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1280
        mem[mem[64] + 160] = bool(uint8(token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1536))
        mem[mem[64] + 192] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx)]
        emit Println(address(token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_0), uint32(token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_0), token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_256, token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_512, token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1280, bool(uint8(token_orderSheet[address(arg1)][uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224)].field_1536)), stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx)]);
        s = sha3(uint32(stor8[address(arg1)][0.125 / idx].field_(32 * idx % 8) - 224), sha3(address(arg1), 10))
        s = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx)]
        idx = idx + 1
        continue 
}

function cancel(address arg1, uint32 arg2) {
    if address(token_orderSheet[address(arg1)][arg2 << 224].field_40) != msg.sender:
        emit Logs(Array(len=25, data='The order owner not match'));
    else:
        mem[0] = arg1
        if not uint8(token_orderSheet[address(arg1)][arg2 << 224].field_0):
            idx = 0
            while idx < stor8[address(arg1)].field_0:
                require idx < stor8[address(arg1)].field_0
                if stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx)] != arg2:
                    mem[0] = arg1
                    mem[32] = 8
                    idx = idx + 1
                    continue 
                uint8(token_orderSheet[address(arg1)][arg2 << 224].field_1536) = 1
                s = idx
                while s < stor8[address(arg1)].field_0 - 2:
                    require s + 1 < stor8[address(arg1)].field_0
                    require s < stor8[address(arg1)].field_0
                    stor8[address(arg1)][0.125 / s].field_0 = stor('array', ('div', 0.125, ('add', 1, ('var', 1))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(s + 1)] * 256^(4 * s % 8) or !(test266151307() * 256^(4 * s % 8)) and stor8[address(arg1)][0.125 / s].field_0
                    mem[0] = arg1
                    mem[32] = 8
                    s = s + 1
                    continue 
                stor8[address(arg1)].field_0--
                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 - 1:
                    mem[0] = sha3(address(arg1), 8)
                    idx = sha3(mem[0]) + (stor8[address(arg1)].field_0 + 6 / 8)
                    while sha3(sha3(address(arg1), 8)) + (stor8[address(arg1)].field_0 + 7 / 8) > idx:
                        stor[idx] = 0
                        mem[0] = arg1
                        mem[32] = 8
                        idx = idx + 1
                        continue 
                mem[0] = msg.sender
                s = 0
                while 0 < stor9[address(arg1)][address(msg.sender)] - 1:
                    require s < stor9[address(arg1)][address(msg.sender)]
                    if stor('array', ('div', 0.125, ('var', 1)), ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9))))[uint8(s)] != arg2:
                        mem[0] = msg.sender
                        mem[32] = sha3(address(arg1), 9)
                        s = s + 1
                        continue 
                    idx = s
                    while idx < stor9[address(arg1)][address(msg.sender)] - 2:
                        require idx + 1 < stor8[address(arg1)].field_0
                        require idx < stor8[address(arg1)].field_0
                        stor8[address(arg1)][0.125 / idx].field_0 = stor('array', ('div', 0.125, ('add', 1, ('var', 0))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx + 1)] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and stor8[address(arg1)][0.125 / idx].field_0
                        mem[0] = msg.sender
                        mem[32] = sha3(address(arg1), 9)
                        idx = idx + 1
                        continue 
                    stor9[address(arg1)][address(msg.sender)]--
                    if not stor9[address(arg1)][address(msg.sender)] <= stor9[address(arg1)][address(msg.sender)] - 1:
                        mem[0] = sha3(address(msg.sender), sha3(address(arg1), 9))
                        idx = sha3(mem[0]) + (stor9[address(arg1)][address(msg.sender)] + 6 / 8)
                        while sha3(sha3(address(msg.sender), sha3(address(arg1), 9))) + (stor9[address(arg1)][address(msg.sender)] + 7 / 8) > idx:
                            stor[idx] = 0
                            mem[0] = msg.sender
                            mem[32] = sha3(address(arg1), 9)
                            idx = idx + 1
                            continue 
        else:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                require idx < stor7[address(arg1)].field_0
                if stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7)))[uint8(idx)] != arg2:
                    mem[0] = arg1
                    mem[32] = 7
                    idx = idx + 1
                    continue 
                uint8(token_orderSheet[address(arg1)][arg2 << 224].field_1536) = 1
                s = idx
                while s < stor7[address(arg1)].field_0 - 2:
                    require s + 1 < stor7[address(arg1)].field_0
                    require s < stor7[address(arg1)].field_0
                    stor7[address(arg1)][0.125 / s].field_0 = stor('array', ('div', 0.125, ('add', 1, ('var', 1))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7)))[uint8(s + 1)] * 256^(4 * s % 8) or !(test266151307() * 256^(4 * s % 8)) and stor7[address(arg1)][0.125 / s].field_0
                    mem[0] = arg1
                    mem[32] = 7
                    s = s + 1
                    continue 
                stor7[address(arg1)].field_0--
                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 - 1:
                    mem[0] = sha3(address(arg1), 7)
                    idx = sha3(mem[0]) + (stor7[address(arg1)].field_0 + 6 / 8)
                    while sha3(sha3(address(arg1), 7)) + (stor7[address(arg1)].field_0 + 7 / 8) > idx:
                        stor[idx] = 0
                        mem[0] = arg1
                        mem[32] = 7
                        idx = idx + 1
                        continue 
                mem[0] = msg.sender
                s = 0
                while 0 < stor9[address(arg1)][address(msg.sender)] - 1:
                    require s < stor9[address(arg1)][address(msg.sender)]
                    if stor('array', ('div', 0.125, ('var', 1)), ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9))))[uint8(s)] != arg2:
                        mem[0] = msg.sender
                        mem[32] = sha3(address(arg1), 9)
                        s = s + 1
                        continue 
                    idx = s
                    while idx < stor9[address(arg1)][address(msg.sender)] - 2:
                        require idx + 1 < stor8[address(arg1)].field_0
                        require idx < stor8[address(arg1)].field_0
                        stor8[address(arg1)][0.125 / idx].field_0 = stor('array', ('div', 0.125, ('add', 1, ('var', 0))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx + 1)] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and stor8[address(arg1)][0.125 / idx].field_0
                        mem[0] = msg.sender
                        mem[32] = sha3(address(arg1), 9)
                        idx = idx + 1
                        continue 
                    stor9[address(arg1)][address(msg.sender)]--
                    if not stor9[address(arg1)][address(msg.sender)] <= stor9[address(arg1)][address(msg.sender)] - 1:
                        mem[0] = sha3(address(msg.sender), sha3(address(arg1), 9))
                        idx = sha3(mem[0]) + (stor9[address(arg1)][address(msg.sender)] + 6 / 8)
                        while sha3(sha3(address(msg.sender), sha3(address(arg1), 9))) + (stor9[address(arg1)][address(msg.sender)] + 7 / 8) > idx:
                            stor[idx] = 0
                            mem[0] = msg.sender
                            mem[32] = sha3(address(arg1), 9)
                            idx = idx + 1
                            continue 
        mem[0] = msg.sender
        s = 0
        while 0 < stor9[address(arg1)][address(msg.sender)] - 1:
            require s < stor9[address(arg1)][address(msg.sender)]
            if stor('array', ('div', 0.125, ('var', 1)), ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9))))[uint8(s)] != arg2:
                mem[0] = msg.sender
                mem[32] = sha3(address(arg1), 9)
                s = s + 1
                continue 
            idx = s
            while idx < stor9[address(arg1)][address(msg.sender)] - 2:
                require idx + 1 < stor8[address(arg1)].field_0
                require idx < stor8[address(arg1)].field_0
                stor8[address(arg1)][0.125 / idx].field_0 = stor('array', ('div', 0.125, ('add', 1, ('var', 0))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor8', 8)))[uint8(idx + 1)] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and stor8[address(arg1)][0.125 / idx].field_0
                mem[0] = msg.sender
                mem[32] = sha3(address(arg1), 9)
                idx = idx + 1
                continue 
            stor9[address(arg1)][address(msg.sender)]--
            if not stor9[address(arg1)][address(msg.sender)] <= stor9[address(arg1)][address(msg.sender)] - 1:
                mem[0] = sha3(address(msg.sender), sha3(address(arg1), 9))
                idx = sha3(mem[0]) + (stor9[address(arg1)][address(msg.sender)] + 6 / 8)
                while sha3(sha3(address(msg.sender), sha3(address(arg1), 9))) + (stor9[address(arg1)][address(msg.sender)] + 7 / 8) > idx:
                    stor[idx] = 0
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 9)
                    idx = idx + 1
                    continue 
}



}
