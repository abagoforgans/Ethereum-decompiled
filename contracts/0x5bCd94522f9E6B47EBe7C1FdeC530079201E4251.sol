contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 10
    require not msg.value
    stor0 = 0x815ae236aa5c17f131203815672d34894f472b19
    return code.data[108 len 13507]
}



// =====================  Runtime code  =====================


#
#  - trade(string arg1, uint256 arg2, uint256 arg3)
#
address stor0;
uint256 stor1;
uint256 _maker_fee;
uint256 _taker_fee;
uint256 _deploy_fee;
uint256 stor5;
uint256 stor6;
array of struct stor7;
mapping of address stor8;
mapping of uint8 stor9;
mapping of uint256 _price;
array of struct _order;
mapping of uint256 _order_book_length;
mapping of uint256 _etc_balance;
mapping of uint256 stor14;

function get_etc_balance(address arg1) {
    return _etc_balance[address(arg1)]
}

function get_coins_count() {
    return stor7.length
}

function get_price(string arg1) {
    require 1 == bool(stor9[arg1[all]])
    return _price[arg1[all]]
}

function get_taker_fee() {
    return _taker_fee
}

function get_order_book_length(string arg1) {
    require 1 == bool(stor9[arg1[all]])
    return _order_book_length[arg1[all]]
}

function get_deploy_fee() {
    return _deploy_fee
}

function get_maker_fee() {
    return _maker_fee
}

function get_order(string arg1, uint256 arg2) {
    require 1 == bool(stor9[arg1[all]])
    require arg2 < _order_book_length[arg1[all]]
    require arg2 < uint256(_order[arg1[all]].field_0)
    return uint256(_order[arg1[all]][arg2].field_0), 
           address(_order[arg1[all]][arg2].field_256),
           uint256(_order[arg1[all]][arg2].field_512),
           uint256(_order[arg1[all]][arg2].field_768),
           uint256(_order[arg1[all]][arg2].field_1024)
}

function _fallback() payable {
    revert 
}

function stop() {
    require stor0 == msg.sender
    stor5 = 1
}

function sub_cbc6921f(?) {
    require stor0 == msg.sender
    stor6 = arg1
}

function sub_9ae0c27b(?) {
    require stor0 == msg.sender
    require arg1 < stor7.length
    uint256(stor7[arg1].field_768) = arg2
}

function safe_mul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg1)
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function set_fee(uint256 arg1, uint256 arg2, uint256 arg3) {
    require stor0 == msg.sender
    _maker_fee = arg1
    _taker_fee = arg2
    _deploy_fee = arg3
}

function get_balance(address arg1, string arg2) {
    require 1 == bool(stor9[arg2[all]])
    require ext_code.size(stor8[arg2[all]])
    call stor8[arg2[all]].0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function deposit(string arg1, uint256 arg2) {
    require 1 == bool(stor9[arg1[all]])
    require ext_code.size(stor8[arg1[all]])
    call stor8[arg1[all]].0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_code.size(stor8[arg1[all]])
    call stor8[arg1[all]].approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), arg2 + ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function withdraw(string arg1, uint256 arg2) {
    require 1 == bool(stor9[arg1[all]])
    require ext_code.size(stor8[arg1[all]])
    call stor8[arg1[all]].0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_code.size(stor8[arg1[all]])
    if ext_call.return_data[0] < arg2:
        call stor8[arg1[all]].approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0
    else:
        call stor8[arg1[all]].0xdd62ed3e with:
             gas gas_remaining - 50 wei
            args msg.sender, this.address
        require ext_call.success
        require ext_code.size(stor8[arg1[all]])
        call stor8[arg1[all]].approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), ext_call.return_data[0] - arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function buy(string arg1, uint256 arg2, uint256 arg3) payable {
    require 0 == stor5
    require 1 == bool(stor9[arg1[all]])
    if arg2:
        require arg3 * arg2 / arg2 == arg3
    require msg.value == arg3 * arg2
    _etc_balance[address(msg.sender)] += msg.value
    if _order_book_length[arg1[all]] < uint256(_order[arg1[all]].field_0):
        stor1++
        require _order_book_length[arg1[all]] < uint256(_order[arg1[all]].field_0)
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_0) = 1
        address(_order[arg1[all]][stor12[arg1[all]]].field_256) = msg.sender
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_512) = arg2
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_768) = arg3
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_1024) = stor1
    else:
        uint256(_order[arg1[all]].field_0)++
        stor1++
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_0) = 1
        address(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_256) = msg.sender
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_512) = arg2
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_768) = arg3
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_1024) = stor1
    _order_book_length[arg1[all]]++
}

function cancel(string arg1, uint256 arg2) {
    require 1 == bool(stor9[arg1[all]])
    require arg2 < _order_book_length[arg1[all]]
    require arg2 < uint256(_order[arg1[all]].field_0)
    require address(_order[arg1[all]][arg2].field_256) == msg.sender
    require arg2 < uint256(_order[arg1[all]].field_0)
    if uint256(_order[arg1[all]][arg2].field_0) != 1:
        require ext_code.size(stor8[arg1[all]])
        call stor8[arg1[all]].0xa9059cbb with:
             gas gas_remaining - 50 wei
            args address(_order[arg1[all]][arg2].field_256), uint256(_order[arg1[all]][arg2].field_512)
        require ext_call.success
    else:
        if not uint256(_order[arg1[all]][arg2].field_512):
            _etc_balance[address(msg.sender)] += -1 * uint256(_order[arg1[all]][arg2].field_768) * uint256(_order[arg1[all]][arg2].field_512)
        else:
            require uint256(_order[arg1[all]][arg2].field_768) * uint256(_order[arg1[all]][arg2].field_512) / uint256(_order[arg1[all]][arg2].field_512) == uint256(_order[arg1[all]][arg2].field_768)
            _etc_balance[address(msg.sender)] += -1 * uint256(_order[arg1[all]][arg2].field_768) * uint256(_order[arg1[all]][arg2].field_512)
            if uint256(_order[arg1[all]][arg2].field_512):
                require uint256(_order[arg1[all]][arg2].field_768) * uint256(_order[arg1[all]][arg2].field_512) / uint256(_order[arg1[all]][arg2].field_512) == uint256(_order[arg1[all]][arg2].field_768)
        call address(_order[arg1[all]][arg2].field_256) with:
           value uint256(_order[arg1[all]][arg2].field_768) * uint256(_order[arg1[all]][arg2].field_512) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require arg2 < uint256(_order[arg1[all]].field_0)
    uint256(_order[arg1[all]][arg2].field_512) = 0
    stor14[arg1[all]]++
}

function sub_4d0ce4f0(?) {
    require 0 == stor5
    require 1 == bool(stor9[arg1[all]])
    require ext_code.size(stor8[arg1[all]])
    call stor8[arg1[all]].0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor8[arg1[all]])
    call stor8[arg1[all]].0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    if _order_book_length[arg1[all]] < uint256(_order[arg1[all]].field_0):
        stor1++
        require _order_book_length[arg1[all]] < uint256(_order[arg1[all]].field_0)
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_0) = 0
        address(_order[arg1[all]][stor12[arg1[all]]].field_256) = msg.sender
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_512) = arg2
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_768) = arg3
        uint256(_order[arg1[all]][stor12[arg1[all]]].field_1024) = stor1
    else:
        uint256(_order[arg1[all]].field_0)++
        if not uint256(_order[arg1[all]].field_0) <= uint256(_order[arg1[all]].field_0) + 1:
            idx = (5 * uint256(_order[arg1[all]].field_0)) + 5
            while 5 * uint256(_order[arg1[all]].field_0) > idx:
                uint256(_order[arg1[all]][idx].field_0) = 0
                address(_order[arg1[all]][idx].field_256) = 0
                uint256(_order[arg1[all]][idx].field_512) = 0
                uint256(_order[arg1[all]][idx].field_768) = 0
                uint256(_order[arg1[all]][idx].field_1024) = 0
                idx = idx + 5
                continue 
        stor1++
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_0) = 0
        address(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_256) = msg.sender
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_512) = arg2
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_768) = arg3
        uint256(_order[arg1[all]][uint256(_order[arg1[all]].field_0)].field_1024) = stor1
    _order_book_length[arg1[all]]++
}

function get_coin(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    require arg1 < stor7.length
    mem[160] = stor7[arg1].length
    mem[0] = (4 * arg1) + sha3(7)
    mem[192] = uint256(stor7[arg1].field_0)
    idx = 192
    s = 0
    while stor7[arg1].length + 160 > idx:
        mem[idx + 32] = uint256(stor7[(4 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 224
    mem[ceil32(stor7[arg1].length) + 192] = stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length
    mem[ceil32(stor7[arg1].length) + 224] = uint256(stor[sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_0)
    idx = ceil32(stor7[arg1].length) + 224
    s = 0
    while ceil32(stor7[arg1].length) + stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor7', 7) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 288] = address(stor7[arg1].field_512)
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 320] = uint256(stor7[arg1].field_768)
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 224] = 128
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 352] = stor7[arg1].length
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 384 len stor7[arg1].length] = mem[192 len stor7[arg1].length]
    mem[ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 256] = stor7[arg1].length + 160
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 384] = stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 416 len stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length] = mem[ceil32(stor7[arg1].length) + 224 len stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length]
    if not stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length % 32:
        return Array(len=stor7[arg1].length, data=mem[192 len stor7[arg1].length], stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length, mem[ceil32(stor7[arg1].length) + 224 len stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length]), 
               stor7[arg1].length + 160,
               address(stor7[arg1].field_512),
               uint256(stor7[arg1].field_768)
    mem[floor32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 416] = mem[floor32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + -stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length % 32 + 448 len stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length % 32]
    return Array(len=stor7[arg1].length, data=mem[192 len stor7[arg1].length], stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length, mem[ceil32(stor7[arg1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + stor7[arg1].length + 416 len floor32(stor[(4 * arg1) + ('name', 'stor7', 7) + 1].length) + 32]), 
           stor7[arg1].length + 160,
           address(stor7[arg1].field_512),
           uint256(stor7[arg1].field_768)
}

function sub_5750a041(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require stor0 == msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    require 0 == bool(stor9[arg1[all]])
    require arg1.length <= 20
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require Mask(8, 248, mem[idx + 128]) >= 'A'
        require idx < arg1.length
        require Mask(8, 248, mem[idx + 128]) <= 'Z'
        idx = idx + 1
        continue 
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        mem[0] = 7
        idx = 4 * stor7.length + 1
        while sha3(7) + (4 * stor7.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > arg1.length:
                uint256(stor[arg1.length]) = 0
                s = arg1.length + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            if 31 < stor[s + sha3(mem[0]) + 1].length:
                mem[0] = s + sha3(mem[0]) + 1
                if sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > sha3(s + sha3(mem[0]) + 1):
                    uint256(stor[sha3(s + sha3(mem[0]) + 1)]) = 0
                    t = sha3(s + sha3(mem[0]) + 1) + 1
                    while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
            address(stor[s + sha3(mem[0]) + 2]) = 0
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            s = s + 4
            continue 
    uint256(stor7[stor7.length].field_0) = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        uint256(stor7[(4 * stor7.length) + s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor7[stor7.length].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        uint256(stor[('array', ('mul', 4, ('stor', ('length', ('name', 'stor7', 7)))), ('name', 'stor7', 7)) + (Mask(251, 0, arg1.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while stor7[stor7.length].length + 31 / 32 > idx:
            uint256(stor7[(4 * stor7.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor7[stor7.length].field_256) = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        uint256(stor[s + sha3((4 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(4 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        uint256(stor[sha3((4 * stor7.length) + ('name', 'stor7', 7) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor[(4 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    address(stor7[stor7.length].field_512) = arg3
    uint256(stor7[stor7.length].field_768) = arg4
    stor8[arg1[all]] = arg3
    stor9[arg1[all]] = 1
}

function sub_c1bc30f1(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.value >= _deploy_fee
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    require 0 == bool(stor9[arg1[all]])
    require arg1.length <= 20
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require Mask(8, 248, mem[idx + 128]) >= 'A'
        require idx < arg1.length
        require Mask(8, 248, mem[idx + 128]) <= 'Z'
        idx = idx + 1
        continue 
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        mem[0] = 7
        idx = 4 * stor7.length + 1
        while sha3(7) + (4 * stor7.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > arg1.length:
                uint256(stor[arg1.length]) = 0
                s = arg1.length + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            if 31 < stor[s + sha3(mem[0]) + 1].length:
                mem[0] = s + sha3(mem[0]) + 1
                if sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > sha3(s + sha3(mem[0]) + 1):
                    uint256(stor[sha3(s + sha3(mem[0]) + 1)]) = 0
                    t = sha3(s + sha3(mem[0]) + 1) + 1
                    while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
            address(stor[s + sha3(mem[0]) + 2]) = 0
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            s = s + 4
            continue 
    uint256(stor7[stor7.length].field_0) = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        uint256(stor7[(4 * stor7.length) + s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor7[stor7.length].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        uint256(stor[('array', ('mul', 4, ('stor', ('length', ('name', 'stor7', 7)))), ('name', 'stor7', 7)) + (Mask(251, 0, arg1.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while stor7[stor7.length].length + 31 / 32 > idx:
            uint256(stor7[(4 * stor7.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor7[stor7.length].field_256) = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        uint256(stor[s + sha3((4 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(4 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        uint256(stor[sha3((4 * stor7.length) + ('name', 'stor7', 7) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor[(4 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    address(stor7[stor7.length].field_512) = arg3
    uint256(stor7[stor7.length].field_768) = 0
    stor8[arg1[all]] = arg3
    stor9[arg1[all]] = 1
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
}

function sub_bce4bb4f(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require stor0 == msg.sender
    require 1 == bool(stor9[arg1[all]])
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 12
    s = 0
    idx = 0
    while idx < _order_book_length[arg1[all]]:
        _69 = mem[64]
        _70 = mem[96]
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        mem[_70 + mem[64]] = 11
        require idx < uint256(stor[sha3(mem[mem[64] len _70 + _69 + -mem[64] + 32])])
        mem[0] = sha3(mem[mem[64] len _70 + _69 + -mem[64] + 32])
        _73 = sha3(mem[0])
        if 1 == uint256(stor[(5 * idx) + sha3(mem[0])]):
            if not uint256(stor[(5 * idx) + sha3(mem[0]) + 2]):
                mem[32] = 13
                _etc_balance[address(msg.sender)] += -1 * uint256(stor[(5 * idx) + sha3(mem[0]) + 3]) * uint256(stor[(5 * idx) + sha3(mem[0]) + 2])
                call address(stor[(5 * idx) + sha3(mem[0]) + 1]) with:
                   value uint256(stor[(5 * idx) + sha3(mem[0]) + 3]) * uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                _97 = mem[64]
                _98 = mem[96]
                mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                mem[_98 + mem[64]] = 11
                require idx < uint256(stor[sha3(mem[mem[64] len _98 + _97 + -mem[64] + 32])])
                mem[0] = sha3(mem[mem[64] len _98 + _97 + -mem[64] + 32])
                uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) = 0
                _103 = mem[96]
                mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                mem[_103 + mem[64]] = 14
                uint256(stor[sha3(mem[mem[64] len _103 + 32])])++
            else:
                require uint256(stor[(5 * idx) + sha3(mem[0]) + 3]) * uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) / uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) == uint256(stor[(5 * idx) + sha3(mem[0]) + 3])
                mem[32] = 13
                _etc_balance[address(msg.sender)] += -1 * uint256(stor[(5 * idx) + sha3(mem[0]) + 3]) * uint256(stor[(5 * idx) + sha3(mem[0]) + 2])
                if not uint256(stor[(5 * idx) + sha3(mem[0]) + 2]):
                    call address(stor[(5 * idx) + sha3(mem[0]) + 1]) with:
                       value uint256(stor[(5 * idx) + sha3(mem[0]) + 3]) * uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    _107 = mem[96]
                    mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                    mem[_107 + mem[64]] = 11
                    require idx < uint256(stor[sha3(mem[mem[64] len _107 + 32])])
                    mem[0] = sha3(mem[mem[64] len _107 + 32])
                    uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) = 0
                    _112 = mem[96]
                    mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                    mem[_112 + mem[64]] = 14
                    uint256(stor[sha3(mem[mem[64] len _112 + 32])])++
                else:
                    require uint256(stor[(5 * idx) + sha3(mem[0]) + 3]) * uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) / uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) == uint256(stor[(5 * idx) + sha3(mem[0]) + 3])
                    call address(stor[(5 * idx) + sha3(mem[0]) + 1]) with:
                       value uint256(stor[(5 * idx) + sha3(mem[0]) + 3]) * uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    _116 = mem[96]
                    mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                    mem[_116 + mem[64]] = 11
                    require idx < uint256(stor[sha3(mem[mem[64] len _116 + 32])])
                    mem[0] = sha3(mem[mem[64] len _116 + 32])
                    uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) = 0
                    _120 = mem[64]
                    _121 = mem[96]
                    mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                    mem[_121 + mem[64]] = 14
                    uint256(stor[sha3(mem[mem[64] len _121 + _120 + -mem[64] + 32])])++
        else:
            _75 = mem[96]
            mem[mem[64] len mem[96]] = mem[128 len mem[96]]
            mem[_75 + mem[64]] = 8
            _77 = sha3(mem[mem[64] len _75 + 32])
            mem[mem[64] + 4] = address(stor[(5 * idx) + sha3(mem[0]) + 1])
            mem[mem[64] + 36] = uint256(stor[(5 * idx) + sha3(mem[0]) + 2])
            require ext_code.size(address(stor[_77]))
            call address(stor[_77]).0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args address(stor[(5 * idx) + sha3(mem[0]) + 1]), uint256(stor[(5 * idx) + sha3(mem[0]) + 2])
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            _83 = mem[64]
            _84 = mem[96]
            mem[mem[64] len mem[96]] = mem[128 len mem[96]]
            mem[_84 + mem[64]] = 11
            require idx < uint256(stor[sha3(mem[mem[64] len _84 + _83 + -mem[64] + 32])])
            mem[0] = sha3(mem[mem[64] len _84 + _83 + -mem[64] + 32])
            uint256(stor[(5 * idx) + sha3(mem[0]) + 2]) = 0
            _89 = mem[64]
            _90 = mem[96]
            mem[mem[64] len mem[96]] = mem[128 len mem[96]]
            mem[_90 + mem[64]] = 14
            uint256(stor[sha3(mem[mem[64] len _90 + _89 + -mem[64] + 32])])++
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        mem[arg1.length + ceil32(arg1.length) + 128] = 12
        s = (5 * idx) + _73
        idx = idx + 1
        continue 
}



}
