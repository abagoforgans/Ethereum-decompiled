contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8; offset 8
uint8 stor21;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    stor3 = 1514733300
    stor4 = 422184 * 24 * 3600
    stor5 = 422328 * 24 * 3600
    stor6 = 100000
    stor7 = 100000 * 10^18 * stor6
    stor21 = 1
    stor8 = 1
    emit Created()
    emit Activated()
    return code.data[368 len 13993]
}



// =====================  Runtime code  =====================


address sub_9e607a80Address;
address sub_0d279024Address;
address marketplaceAddress;
uint256 start;
uint256 finish;
uint256 release;
uint256 pricer;
uint256 size;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 sub_e0509151;
uint256 sub_210c1323;
uint256 sub_454e5d26;
uint256 sub_837e0e70;
mapping of uint8 stor13;
array of struct stor14;
mapping of uint256 myTokenBalance;
mapping of uint256 sub_7cfd4d6e;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
array of struct stor20;
uint8 sub_e840120c;

function sub_0d279024(?) {
    require msg.sender == sub_0d279024Address
    return sub_0d279024Address
}

function sub_210c1323(?) {
    require msg.sender == sub_0d279024Address
    return sub_210c1323
}

function sub_454e5d26(?) {
    require msg.sender == sub_0d279024Address
    return sub_454e5d26
}

function sub_5dc46b02(?) {
    require msg.sender == sub_0d279024Address
    return bool(uint8(stor8.field_0))
}

function sub_7cfd4d6e(?) {
    require msg.sender == sub_0d279024Address
    return sub_7cfd4d6e[address(arg1)]
}

function sub_837e0e70(?) {
    require msg.sender == sub_0d279024Address
    return sub_837e0e70
}

function release() {
    return release
}

function sub_88dea31e(?) {
    require msg.sender == sub_0d279024Address
    return marketplaceAddress
}

function size() {
    return size
}

function sub_9badcee9(?) {
    require msg.sender == sub_0d279024Address
    return bool(stor17[address(arg1)])
}

function sub_9cb63b16(?) {
    require msg.sender == sub_0d279024Address
    return bool(stor18[address(arg1)])
}

function sub_9e607a80(?) {
    require msg.sender == sub_0d279024Address
    return sub_9e607a80Address
}

function pricer() {
    return pricer
}

function getMyTokenBalance() {
    return myTokenBalance[address(msg.sender)]
}

function sub_a7b88d5a(?) {
    require msg.sender == sub_0d279024Address
    return bool(stor13[address(arg1)])
}

function marketplace() {
    return marketplaceAddress
}

function start() {
    return start
}

function sub_c9dbfbd4(?) {
    require msg.sender == sub_0d279024Address
    return bool(stor19[address(arg1)])
}

function sub_cbc9ab93(?) {
    require msg.sender == sub_0d279024Address
    return bool(uint8(stor8.field_8))
}

function finish() {
    return finish
}

function sub_e0509151(?) {
    require msg.sender == sub_0d279024Address
    return sub_e0509151
}

function sub_e76a6605(?) {
    require msg.sender == sub_0d279024Address
    return myTokenBalance[address(arg1)]
}

function sub_e840120c(?) {
    require msg.sender == sub_0d279024Address
    return bool(sub_e840120c)
}

function _fallback() payable {
    revert
}

function setDelegate(address arg1) {
    require msg.sender == sub_9e607a80Address
    sub_0d279024Address = arg1
}

function pause() {
    require msg.sender == sub_0d279024Address
    Mask(248, 0, stor8.field_8) = 0
    emit Paused()
}

function setRestricted(bool arg1) {
    require msg.sender == sub_0d279024Address
    uint8(stor8.field_0) = uint8(arg1)
}

function setFinish(uint256 arg1) {
    require msg.sender == sub_0d279024Address
    require sub_e840120c
    finish = arg1
}

function activate() {
    require msg.sender == sub_0d279024Address
    Mask(248, 0, stor8.field_8) = 1
    emit Activated()
}

function setRelease(uint256 arg1) {
    require msg.sender == sub_0d279024Address
    require sub_e840120c
    release = arg1
}

function setMarketplace(address arg1) {
    require msg.sender == sub_0d279024Address
    require sub_e840120c
    marketplaceAddress = arg1
}

function sub_b2ab63d1(?) {
    require msg.sender == sub_0d279024Address
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))))
}

function cancel() {
    require msg.sender == sub_9e607a80Address
    require not ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8))))))
    uint8(stor8.field_16) = 255
    emit Cancelled(sub_e0509151, sub_210c1323);
}

function sub_63f173ca(?) {
    require msg.sender == sub_9e607a80Address
    require not ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8))))))
    require block.timestamp >= start
    uint8(stor8.field_16) = 1
    emit Certified(sub_e0509151, sub_210c1323);
}

function getBonusPercentage() {
    idx = 0
    s = 0
    while idx < stor20.length:
        require idx < stor20.length
        mem[0] = 20
        if not bool(idx):
            idx = idx + 1
            s = stor20[idx].field_0
            continue 
        idx = idx + 1
        s = s
        continue 
    return 0
}

function list(address[] arg1) {
    require msg.sender == sub_0d279024Address
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 19
        stor19[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        emit Listed(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function delist(address[] arg1) {
    require msg.sender == sub_0d279024Address
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 19
        stor19[address(cd[((32 * idx) + arg1 + 36)])] = 0
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        emit Delisted(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function refund() {
    require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == -1
    require sub_7cfd4d6e[address(msg.sender)] > 0
    require not stor17[address(msg.sender)]
    stor17[address(msg.sender)] = 1
    emit Refunded(sub_7cfd4d6e[address(msg.sender)], msg.sender);
    call msg.sender with:
       value sub_7cfd4d6e[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function claim() {
    require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 2
    require block.timestamp >= release
    require myTokenBalance[address(msg.sender)] > 0
    require not stor18[address(msg.sender)]
    stor18[address(msg.sender)] = 1
    emit Claimed(myTokenBalance[address(msg.sender)], msg.sender);
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.0xbb57349c with:
         gas gas_remaining - 710 wei
        args msg.sender, myTokenBalance[address(msg.sender)]
    require ext_call.success
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == sub_9e607a80Address
    require arg1
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) != 1:
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 2
    require eth.balance(this.address) >= arg2
    require sub_454e5d26 + arg2 >= sub_454e5d26
    require sub_454e5d26 + arg2 >= arg2
    sub_454e5d26 += arg2
    emit Withdrew(address(arg1), arg2);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setBonuses(uint256[] arg1) {
    require msg.sender == sub_0d279024Address
    require sub_e840120c
    stor20.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor20.length > idx:
            stor20[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor20[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor20.length > idx:
            stor20[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function complete(uint256 arg1) {
    require msg.sender == sub_9e607a80Address
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))):
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 1
    require eth.balance(this.address) >= arg1
    require block.timestamp >= finish
    uint8(stor8.field_16) = 2
    require sub_837e0e70 + arg1 >= sub_837e0e70
    require sub_837e0e70 + arg1 >= arg1
    sub_837e0e70 += arg1
    emit Completed(sub_e0509151, sub_210c1323, arg1);
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.0xf18ba98c with:
       value arg1 wei
         gas gas_remaining - 9710 wei
        args sub_e0509151
    require ext_call.success
}

function sub_04dab7ff(?) {
    require msg.sender == sub_0d279024Address
    if not stor20.length:
        mem[(32 * stor20.length) + 160] = 32
        mem[(32 * stor20.length) + 192] = stor20.length
        mem[(32 * stor20.length) + 224 len floor32(stor20.length)] = mem[160 len floor32(stor20.length)]
        return memory
          from (32 * stor20.length) + 160
           len (96 * stor20.length) + 64
    mem[160] = uint256(stor20.field_0)
    idx = 160
    s = 0
    while (32 * stor20.length) + 128 > idx:
        mem[idx + 32] = stor20[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor20.length) + 224 len floor32(stor20.length)] = mem[160 len floor32(stor20.length)]
    return Array(len=stor20.length, data=mem[160 len floor32(stor20.length)], mem[(32 * stor20.length) + floor32(stor20.length) + 224 len (32 * stor20.length) - floor32(stor20.length)]), 
}

function sub_0fd2a460(?) {
    require msg.sender == sub_0d279024Address
    if not stor14.length:
        mem[(32 * stor14.length) + 160] = 32
        mem[(32 * stor14.length) + 192] = stor14.length
        mem[(32 * stor14.length) + 224 len floor32(stor14.length)] = mem[160 len floor32(stor14.length)]
        return memory
          from (32 * stor14.length) + 160
           len (96 * stor14.length) + 64
    mem[160] = address(stor14.field_0)
    idx = 160
    s = 0
    while (32 * stor14.length) + 128 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 224 len floor32(stor14.length)] = mem[160 len floor32(stor14.length)]
    return Array(len=stor14.length, data=mem[160 len floor32(stor14.length)], mem[(32 * stor14.length) + floor32(stor14.length) + 224 len (32 * stor14.length) - floor32(stor14.length)]), 
}

function reverse(address arg1) {
    require msg.sender == sub_0d279024Address
    require arg1
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))):
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 1
    if myTokenBalance[address(arg1)] <= 0:
        require sub_7cfd4d6e[address(arg1)] > 0
    require myTokenBalance[address(arg1)] <= sub_e0509151
    sub_e0509151 -= myTokenBalance[address(arg1)]
    require sub_7cfd4d6e[address(arg1)] <= sub_210c1323
    sub_210c1323 -= sub_7cfd4d6e[address(arg1)]
    myTokenBalance[address(arg1)] = 0
    sub_7cfd4d6e[address(arg1)] = 0
    emit Reversed(myTokenBalance[address(arg1)], sub_7cfd4d6e[address(arg1)], arg1);
    if sub_7cfd4d6e[address(arg1)] > 0:
        call arg1 with:
           value sub_7cfd4d6e[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function grant(address arg1, uint256 arg2) {
    require msg.sender == sub_0d279024Address
    require arg1
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))):
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 1
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = stor14.length + 1
            while stor14.length > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor14[stor14.length].field_0 = arg1
    require myTokenBalance[address(arg1)] + arg2 >= myTokenBalance[address(arg1)]
    require myTokenBalance[address(arg1)] + arg2 >= arg2
    myTokenBalance[address(arg1)] += arg2
    require sub_e0509151 + arg2 >= sub_e0509151
    require sub_e0509151 + arg2 >= arg2
    sub_e0509151 += arg2
    emit Granted(arg2, arg1);
}

function buy(address arg1) payable {
    require arg1
    require msg.value >= 10^15
    require uint8(stor8.field_8)
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))):
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 1
    require block.timestamp >= start
    require block.timestamp < finish
    if uint8(stor8.field_0):
        require stor19[address(msg.sender)]
        if uint8(stor8.field_0):
            require stor19[address(arg1)]
    if msg.value:
        require msg.value
        require msg.value * pricer / msg.value == pricer
    idx = 0
    s = 0
    while idx < stor20.length:
        require idx < stor20.length
        mem[0] = 20
        if not bool(idx):
            idx = idx + 1
            s = stor20[idx].field_0
            continue 
        idx = idx + 1
        s = s
        continue 
    if msg.value * pricer:
        require msg.value * pricer
        require not 0 / msg.value * pricer
    require msg.value * pricer >= msg.value * pricer
    require msg.value * pricer >= 0
    require sub_e0509151 + (msg.value * pricer) >= sub_e0509151
    require sub_e0509151 + (msg.value * pricer) >= msg.value * pricer
    require sub_e0509151 + (msg.value * pricer) <= size
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = stor14.length + 1
            while stor14.length > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor14[stor14.length].field_0 = arg1
    require myTokenBalance[address(arg1)] + (msg.value * pricer) >= myTokenBalance[address(arg1)]
    require myTokenBalance[address(arg1)] + (msg.value * pricer) >= msg.value * pricer
    myTokenBalance[address(arg1)] += msg.value * pricer
    require sub_7cfd4d6e[address(arg1)] + msg.value >= sub_7cfd4d6e[address(arg1)]
    require sub_7cfd4d6e[address(arg1)] + msg.value >= msg.value
    sub_7cfd4d6e[address(arg1)] += msg.value
    require sub_e0509151 + (msg.value * pricer) >= sub_e0509151
    require sub_e0509151 + (msg.value * pricer) >= msg.value * pricer
    sub_e0509151 += msg.value * pricer
    require sub_210c1323 + msg.value >= sub_210c1323
    require sub_210c1323 + msg.value >= msg.value
    sub_210c1323 += msg.value
    emit Bought(msg.value * pricer, msg.value, msg.sender, arg1);
}



}
