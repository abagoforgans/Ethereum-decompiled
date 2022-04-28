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
    return code.data[368 len 9716]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
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
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
mapping of uint8 stor13;
array of address stor14;
mapping of uint256 myTokenBalance;
mapping of uint256 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
array of uint256 stor20;
uint8 stor21;

function release() {
    return release
}

function size() {
    return size
}

function pricer() {
    return pricer
}

function getMyTokenBalance() {
    return myTokenBalance[address(msg.sender)]
}

function marketplace() {
    return marketplaceAddress
}

function start() {
    return start
}

function finish() {
    return finish
}

function _fallback() payable {
    revert
}

function setDelegate(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function setFinish(uint256 arg1) {
    require msg.sender == stor1
    require stor21
    finish = arg1
}

function pause() {
    require msg.sender == stor1
    Mask(248, 0, stor8.field_8) = 0
    emit Paused()
}

function setRelease(uint256 arg1) {
    require msg.sender == stor1
    require stor21
    release = arg1
}

function setRestricted(bool arg1) {
    require msg.sender == stor1
    uint8(stor8.field_0) = uint8(arg1)
}

function activate() {
    require msg.sender == stor1
    Mask(248, 0, stor8.field_8) = 1
    emit Activated()
}

function setMarketplace(address arg1) {
    require msg.sender == stor1
    require stor21
    marketplaceAddress = arg1
}

function cancel() {
    require msg.sender == stor0
    require not ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8))))))
    uint8(stor8.field_16) = 255
    emit Cancelled(stor9, stor10);
}

function sub_63f173ca(?) {
    require msg.sender == stor0
    require not ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8))))))
    require block.timestamp >= start
    uint8(stor8.field_16) = 1
    emit Certified(stor9, stor10);
}

function getBonusPercentage() {
    idx = 0
    s = 0
    while idx < stor20.length:
        require idx < stor20.length
        mem[0] = 20
        if not bool(idx):
            idx = idx + 1
            s = stor20[idx]
            continue 
        idx = idx + 1
        s = s
        continue 
    return 0
}

function list(address[] arg1) {
    require msg.sender == stor1
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
    require msg.sender == stor1
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
    require stor16[address(msg.sender)] > 0
    require not stor17[address(msg.sender)]
    stor17[address(msg.sender)] = 1
    emit Refunded(stor16[address(msg.sender)], msg.sender);
    call msg.sender with:
       value stor16[address(msg.sender)] wei
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
    require msg.sender == stor0
    require arg1
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) != 1:
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 2
    require eth.balance(this.address) >= arg2
    require stor11 + arg2 >= stor11
    require stor11 + arg2 >= arg2
    stor11 += arg2
    emit Withdrew(address(arg1), arg2);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setBonuses(uint256[] arg1) {
    require msg.sender == stor1
    require stor21
    stor20.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor20.length > idx:
            stor20[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor20[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor20.length > idx:
            stor20[idx] = 0
            idx = idx + 1
            continue 
}

function complete(uint256 arg1) {
    require msg.sender == stor0
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))):
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 1
    require eth.balance(this.address) >= arg1
    require block.timestamp >= finish
    uint8(stor8.field_16) = 2
    require stor12 + arg1 >= stor12
    require stor12 + arg1 >= arg1
    stor12 += arg1
    emit Completed(stor9, stor10, arg1);
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.0xf18ba98c with:
       value arg1 wei
         gas gas_remaining - 9710 wei
        args stor9
    require ext_call.success
}

function reverse(address arg1) {
    require msg.sender == stor1
    require arg1
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))):
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 1
    if myTokenBalance[address(arg1)] <= 0:
        require stor16[address(arg1)] > 0
    require myTokenBalance[address(arg1)] <= stor9
    stor9 -= myTokenBalance[address(arg1)]
    require stor16[address(arg1)] <= stor10
    stor10 -= stor16[address(arg1)]
    myTokenBalance[address(arg1)] = 0
    stor16[address(arg1)] = 0
    emit Reversed(myTokenBalance[address(arg1)], stor16[address(arg1)], arg1);
    if stor16[address(arg1)] > 0:
        call arg1 with:
           value stor16[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function grant(address arg1, uint256 arg2) {
    require msg.sender == stor1
    require arg1
    if ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))):
        require ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('name', 'stor8', 8)))))) == 1
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = stor14.length + 1
            while stor14.length > idx:
                uint256(stor14[idx]) = 0
                idx = idx + 1
                continue 
        address(stor14[stor14.length]) = arg1
    require myTokenBalance[address(arg1)] + arg2 >= myTokenBalance[address(arg1)]
    require myTokenBalance[address(arg1)] + arg2 >= arg2
    myTokenBalance[address(arg1)] += arg2
    require stor9 + arg2 >= stor9
    require stor9 + arg2 >= arg2
    stor9 += arg2
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
            s = stor20[idx]
            continue 
        idx = idx + 1
        s = s
        continue 
    if msg.value * pricer:
        require msg.value * pricer
        require not 0 / msg.value * pricer
    require msg.value * pricer >= msg.value * pricer
    require msg.value * pricer >= 0
    require stor9 + (msg.value * pricer) >= stor9
    require stor9 + (msg.value * pricer) >= msg.value * pricer
    require stor9 + (msg.value * pricer) <= size
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = stor14.length + 1
            while stor14.length > idx:
                uint256(stor14[idx]) = 0
                idx = idx + 1
                continue 
        address(stor14[stor14.length]) = arg1
    require myTokenBalance[address(arg1)] + (msg.value * pricer) >= myTokenBalance[address(arg1)]
    require myTokenBalance[address(arg1)] + (msg.value * pricer) >= msg.value * pricer
    myTokenBalance[address(arg1)] += msg.value * pricer
    require stor16[address(arg1)] + msg.value >= stor16[address(arg1)]
    require stor16[address(arg1)] + msg.value >= msg.value
    stor16[address(arg1)] += msg.value
    require stor9 + (msg.value * pricer) >= stor9
    require stor9 + (msg.value * pricer) >= msg.value * pricer
    stor9 += msg.value * pricer
    require stor10 + msg.value >= stor10
    require stor10 + msg.value >= msg.value
    stor10 += msg.value
    emit Bought(msg.value * pricer, msg.value, msg.sender, arg1);
}



}
