contract main {




// =====================  Runtime code  =====================


#
#  - sub_03987512(?)
#
address owner;
address pendingOwner;
address datacoinAddress;
address currencyUpdateAgentAddress;
address stor4;
mapping of struct sub_79054391;
uint256 dataPerUsd;
uint8 stor7;

function sub_79054391(?) {
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_1280 <= 1:
        if sub_79054391[arg1].field_1792 <= 1:
            return sub_79054391[arg1].field_0, 
                   Array(len=sub_79054391[arg1][1].length, data=mem[128 len sub_79054391[arg1][1].length]),
                   sub_79054391[arg1].field_512,
                   sub_79054391[arg1].field_768,
                   sub_79054391[arg1].field_1024,
                   sub_79054391[arg1].field_1280,
                   sub_79054391[arg1].field_1536,
                   sub_79054391[arg1].field_1792,
                   sub_79054391[arg1].field_2304
    revert
}

function datacoin() {
    return datacoinAddress
}

function currencyUpdateAgent() {
    return currencyUpdateAgentAddress
}

function owner() {
    return owner
}

function halted() {
    return bool(stor7)
}

function dataPerUsd() {
    return dataPerUsd
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function halt() {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    stor7 = 1
    emit Halted()
}

function resume() {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    stor7 = 0
    emit Resumed()
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    pendingOwner = arg1
}

function sub_a4b138b0(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    currencyUpdateAgentAddress = arg2
    datacoinAddress = arg1
    stor4 = arg3
}

function claimOwnership() {
    if pendingOwner != msg.sender:
        revert with 0, 'onlyPendingOwner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function updateExchangeRates(uint256 arg1, uint256 arg2) {
    if currencyUpdateAgentAddress != msg.sender:
        revert with 0, 'error_notPermitted'
    require arg2 > 0
    dataPerUsd = arg2
    emit ExchangeRatesUpdated(arg1, arg2);
}

function sub_bee7d433(?) {
    require arg3 <= 1
    if not arg2:
        return 0
    require arg2
    if not arg3:
        require arg2 * arg1 / arg2 == arg1
        return (arg2 * arg1)
    require arg2 * dataPerUsd / arg2 == dataPerUsd
    if not arg2 * dataPerUsd / 10^18:
        return 0
    require arg2 * dataPerUsd / 10^18
    require arg2 * dataPerUsd / 10^18 * arg1 / arg2 * dataPerUsd / 10^18 == arg1
    return (arg2 * dataPerUsd / 10^18 * arg1)
}

function hasValidSubscription(bytes32 arg1, address arg2) {
    mem[96] = sub_79054391[arg1][1].length
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        if not sub_79054391[arg1].field_0:
            revert with 0, 'error_notFound'
        if sub_79054391[arg1][8][address(arg2)].field_0:
            return sub_79054391[arg1][8][address(arg2)].field_0 >= block.timestamp
        mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
        require return_data.size >= 224
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
        if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
            return sub_79054391[arg1][8][address(arg2)].field_0 >= block.timestamp
    require ext_code.size(stor4)
    call stor4.0x5f28cb74 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return bool(ext_call.return_data[0])
}

function getSubscription(bytes32 arg1, address arg2) {
    mem[96] = sub_79054391[arg1][1].length
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        if not sub_79054391[arg1].field_0:
            revert with 0, 'error_notFound'
        if sub_79054391[arg1][8][address(arg2)].field_0:
            return sub_79054391[arg1][8][address(arg2)].field_0 >= block.timestamp, sub_79054391[arg1][8][address(arg2)].field_0
        mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
        require return_data.size >= 224
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
        if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
            return sub_79054391[arg1][8][address(arg2)].field_0 >= block.timestamp, sub_79054391[arg1][8][address(arg2)].field_0
    require ext_code.size(stor4)
    call stor4.0x5f28cb74 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getSubscriptionTo(bytes32 arg1) {
    mem[96] = sub_79054391[arg1][1].length
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        if not sub_79054391[arg1].field_0:
            revert with 0, 'error_notFound'
        if sub_79054391[arg1][8][address(msg.sender)].field_0:
            return sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp, 
                   sub_79054391[arg1][8][address(msg.sender)].field_0
        mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
        require return_data.size >= 224
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
        if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
            return sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp, 
                   sub_79054391[arg1][8][address(msg.sender)].field_0
    require ext_code.size(stor4)
    call stor4.0x5f28cb74 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function claimProductOwnership(bytes32 arg1) {
    if stor7:
        if owner != msg.sender:
            revert with 0, 'error_halted'
    mem[32] = 5
    if not sub_79054391[arg1].field_0:
        mem[96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 224
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
        if mem[140 len 20]:
            sub_79054391[arg1].field_0 = arg1
            mem[0] = sha3(arg1, 5) + 1
            sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96], data=mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]])
            sub_79054391[arg1].field_512 = mem[140 len 20]
            sub_79054391[arg1].field_768 = mem[172 len 20]
            sub_79054391[arg1].field_1024 = mem[192]
            require mem[224] <= 1
            sub_79054391[arg1].field_1280 = mem[224]
            sub_79054391[arg1].field_1536 = mem[256]
            require mem[288] <= 1
            sub_79054391[arg1].field_1792 = mem[288]
            require sub_79054391[arg1].field_1280 <= 1
            mem[ceil32(return_data.size) + 288] = sub_79054391[arg1][1].field_0
            idx = ceil32(return_data.size) + 288
            s = 0
            while ceil32(return_data.size) + sub_79054391[arg1][1].length + 288 > idx + 32:
                mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(return_data.size) + 288 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
    if sub_79054391[arg1].field_2304 != msg.sender:
        revert with 0, 'error_notPermitted'
    emit ProductOwnershipChanged(msg.sender, arg1, sub_79054391[arg1].field_512);
    sub_79054391[arg1].field_512 = msg.sender
    sub_79054391[arg1].field_2304 = 0
}

function createProduct(bytes32 arg1, string arg2, address arg3, uint256 arg4, uint8 arg5, uint256 arg6) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if stor7:
        if owner != msg.sender:
            revert with 0, 'error_halted'
    if not arg1:
        revert with 0, 'error_nullProductId'
    if arg4 <= 0:
        revert with 0, 'error_freeProductsNotSupported'
    mem[32] = 5
    mem[ceil32(arg2.length) + 128] = sub_79054391[arg1][1].length
    mem[ceil32(arg2.length) + 160] = sub_79054391[arg1][1].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + sub_79054391[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        revert with 0, 'error_alreadyExists'
    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 164] = arg1
    require ext_code.size(stor4)
    call stor4.0x3a20e9df with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160
    require return_data.size >= 224
    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] + 32 <= return_data.size
    if mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 204 len 20]:
        revert with 0, 'error_alreadyExists'
    require arg5 <= 1
    sub_79054391[arg1].field_0 = arg1
    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_79054391[arg1].field_512 = msg.sender
    sub_79054391[arg1].field_768 = arg3
    sub_79054391[arg1].field_1024 = arg4
    require arg5 <= 1
    sub_79054391[arg1].field_1280 = arg5
    sub_79054391[arg1].field_1536 = arg6
    sub_79054391[arg1].field_1792 = 1
    sub_79054391[arg1].field_2304 = 0
    sub_79054391[arg1].field_2560 = 0
    require arg5 <= 1
    emit 0x397627c8: Array(len=arg2.length, data=arg2[all]), address(arg3), arg4, arg5 << 248, arg6, msg.sender, arg1
}

function getProduct(bytes32 arg1) {
    mem[32] = 5
    mem[96] = sub_79054391[arg1][1].length
    mem[0] = sha3(arg1, 5) + 1
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        require sub_79054391[arg1].field_1280 <= 1
        require sub_79054391[arg1].field_1792 <= 1
        return Array(len=sub_79054391[arg1][1].length, data=mem[128 len sub_79054391[arg1][1].length]), 
               sub_79054391[arg1].field_512,
               sub_79054391[arg1].field_768,
               sub_79054391[arg1].field_1024,
               sub_79054391[arg1].field_1280,
               sub_79054391[arg1].field_1536,
               sub_79054391[arg1].field_1792
    mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
    mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
    require ext_code.size(stor4)
    call stor4.0x3a20e9df with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
    require return_data.size >= 224
    _105 = mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
    _110 = mem[ceil32(sub_79054391[arg1][1].length) + 192]
    _111 = mem[ceil32(sub_79054391[arg1][1].length) + 224]
    _112 = mem[ceil32(sub_79054391[arg1][1].length) + 256]
    _113 = mem[ceil32(sub_79054391[arg1][1].length) + 288]
    _114 = mem[ceil32(sub_79054391[arg1][1].length) + 320]
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160] = mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 192] = address(_110)
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224] = _111
    require _112 <= 1
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] = uint8(_112)
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288] = _113
    require _114 <= 1
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = uint8(_114)
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 224
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352] = mem[_105 + ceil32(sub_79054391[arg1][1].length) + 128]
    _121 = mem[_105 + ceil32(sub_79054391[arg1][1].length) + 128]
    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 384 len ceil32(mem[_105 + ceil32(sub_79054391[arg1][1].length) + 128])] = mem[_105 + ceil32(sub_79054391[arg1][1].length) + 160 len ceil32(mem[_105 + ceil32(sub_79054391[arg1][1].length) + 128])]
    if not _121 % 32:
        return 224, 
               mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160],
               address(_110),
               _111,
               _112 << 248,
               _113,
               _114 << 248,
               mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352 len _121 + 32]
    mem[floor32(_121) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 384] = mem[floor32(_121) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + -(_121 % 32) + 416 len _121 % 32]
    return 224, 
           mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160],
           address(_110),
           _111,
           _112 << 248,
           _113,
           _114 << 248,
           mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352 len floor32(_121) + 64]
}

function offerProductOwnership(bytes32 arg1, address arg2) {
    mem[32] = 5
    mem[96] = sub_79054391[arg1][1].length
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        if sub_79054391[arg1].field_512 != msg.sender:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
        if not sub_79054391[arg1].field_0:
            mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
            mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
            require ext_code.size(stor4)
            call stor4.0x3a20e9df with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
            require return_data.size >= 224
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
            if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                sub_79054391[arg1].field_0 = arg1
                mem[0] = sha3(arg1, 5) + 1
                sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128], data=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 160 len mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128]])
                sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]
                sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + 204 len 20]
                sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + 224]
                require mem[ceil32(sub_79054391[arg1][1].length) + 256] <= 1
                sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + 256]
                sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + 288]
                require mem[ceil32(sub_79054391[arg1][1].length) + 320] <= 1
                sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + 320]
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
    else:
        mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
        require return_data.size >= 224
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
        if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
            revert with 0, 'error_notFound'
        if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20] == msg.sender:
            mem[0] = arg1
            mem[32] = 5
            if not sub_79054391[arg1].field_0:
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                if mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                    sub_79054391[arg1].field_0 = arg1
                    _1467 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_1467, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _1467])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
        else:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
            mem[0] = arg1
            mem[32] = 5
            if not sub_79054391[arg1].field_0:
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                if mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                    sub_79054391[arg1].field_0 = arg1
                    _1476 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_1476, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _1476])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
    sub_79054391[arg1].field_2304 = arg2
    emit ProductOwnershipOffered(sub_79054391[arg1].field_512, arg1, arg2);
}

function deleteProduct(bytes32 arg1) {
    mem[32] = 5
    mem[96] = sub_79054391[arg1][1].length
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        if sub_79054391[arg1].field_512 != msg.sender:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
        if sub_79054391[arg1].field_0:
            require sub_79054391[arg1].field_1792 <= 1
            if sub_79054391[arg1].field_1792 != 1:
                revert with 0, 'error_notDeployed'
            sub_79054391[arg1].field_1792 = 0
            require sub_79054391[arg1].field_1280 <= 1
            mem[ceil32(sub_79054391[arg1][1].length) + 320] = sub_79054391[arg1][1].field_0
            idx = ceil32(sub_79054391[arg1][1].length) + 320
            s = 0
            while ceil32(sub_79054391[arg1][1].length) + sub_79054391[arg1][1].length + 320 > idx + 32:
                mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xfc64345d: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
        else:
            mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
            mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
            require ext_code.size(stor4)
            call stor4.0x3a20e9df with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
            require return_data.size >= 224
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
            if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                sub_79054391[arg1].field_0 = arg1
                mem[0] = sha3(arg1, 5) + 1
                sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128], data=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 160 len mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128]])
                sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]
                sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + 204 len 20]
                sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + 224]
                require mem[ceil32(sub_79054391[arg1][1].length) + 256] <= 1
                sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + 256]
                sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + 288]
                require mem[ceil32(sub_79054391[arg1][1].length) + 320] <= 1
                sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + 320]
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
            require sub_79054391[arg1].field_1792 <= 1
            if sub_79054391[arg1].field_1792 != 1:
                revert with 0, 'error_notDeployed'
            sub_79054391[arg1].field_1792 = 0
            require sub_79054391[arg1].field_1280 <= 1
            mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
            idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
            s = 0
            while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xfc64345d: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
    else:
        mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
        require return_data.size >= 224
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
        if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
            revert with 0, 'error_notFound'
        if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20] == msg.sender:
            mem[0] = arg1
            mem[32] = 5
            if sub_79054391[arg1].field_0:
                require sub_79054391[arg1].field_1792 <= 1
                if sub_79054391[arg1].field_1792 != 1:
                    revert with 0, 'error_notDeployed'
                sub_79054391[arg1].field_1792 = 0
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xfc64345d: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
            else:
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792 != 1:
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                        revert with memory
                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                           len ceil32(return_data.size) + 100
                else:
                    sub_79054391[arg1].field_0 = arg1
                    _2249 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_2249, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _2249])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792 != 1:
                        revert with 0, 'error_notDeployed'
                ('eq', ('field', 1792, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_79054391', 5)))), 1)
                sub_79054391[arg1].field_1792 = 0
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xfc64345d: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
        else:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
            mem[0] = arg1
            mem[32] = 5
            if sub_79054391[arg1].field_0:
                require sub_79054391[arg1].field_1792 <= 1
                if sub_79054391[arg1].field_1792 != 1:
                    revert with 0, 'error_notDeployed'
                sub_79054391[arg1].field_1792 = 0
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xfc64345d: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
            else:
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792 != 1:
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                        revert with memory
                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                           len ceil32(return_data.size) + 100
                else:
                    sub_79054391[arg1].field_0 = arg1
                    _2288 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_2288, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _2288])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792 != 1:
                        revert with 0, 'error_notDeployed'
                ('eq', ('field', 1792, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_79054391', 5)))), 1)
                sub_79054391[arg1].field_1792 = 0
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xfc64345d: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
}

function redeployProduct(bytes32 arg1) {
    mem[32] = 5
    mem[96] = sub_79054391[arg1][1].length
    mem[128] = sub_79054391[arg1][1].field_0
    idx = 128
    s = 0
    while sub_79054391[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        if sub_79054391[arg1].field_512 != msg.sender:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
        if sub_79054391[arg1].field_0:
            require sub_79054391[arg1].field_1792 <= 1
            if sub_79054391[arg1].field_1792:
                revert with 0, 'error_mustBeNotDeployed'
            sub_79054391[arg1].field_1792 = 1
            require sub_79054391[arg1].field_1280 <= 1
            mem[ceil32(sub_79054391[arg1][1].length) + 320] = sub_79054391[arg1][1].field_0
            idx = ceil32(sub_79054391[arg1][1].length) + 320
            s = 0
            while ceil32(sub_79054391[arg1][1].length) + sub_79054391[arg1][1].length + 320 > idx + 32:
                mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x7ace6911: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
        else:
            mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
            mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
            require ext_code.size(stor4)
            call stor4.0x3a20e9df with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
            require return_data.size >= 224
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
            if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                sub_79054391[arg1].field_0 = arg1
                mem[0] = sha3(arg1, 5) + 1
                sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128], data=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 160 len mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128]])
                sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]
                sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + 204 len 20]
                sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + 224]
                require mem[ceil32(sub_79054391[arg1][1].length) + 256] <= 1
                sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + 256]
                sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + 288]
                require mem[ceil32(sub_79054391[arg1][1].length) + 320] <= 1
                sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + 320]
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
            require sub_79054391[arg1].field_1792 <= 1
            if sub_79054391[arg1].field_1792:
                revert with 0, 'error_mustBeNotDeployed'
            sub_79054391[arg1].field_1792 = 1
            require sub_79054391[arg1].field_1280 <= 1
            mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
            idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
            s = 0
            while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x7ace6911: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
    else:
        mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
        require return_data.size >= 224
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
        if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
            revert with 0, 'error_notFound'
        if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20] == msg.sender:
            mem[0] = arg1
            mem[32] = 5
            if sub_79054391[arg1].field_0:
                require sub_79054391[arg1].field_1792 <= 1
                if sub_79054391[arg1].field_1792:
                    revert with 0, 'error_mustBeNotDeployed'
                sub_79054391[arg1].field_1792 = 1
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7ace6911: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
            else:
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792:
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 23
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_mustBeNotDeployed'
                        revert with memory
                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                           len ceil32(return_data.size) + 100
                else:
                    sub_79054391[arg1].field_0 = arg1
                    _2249 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_2249, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _2249])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792:
                        revert with 0, 'error_mustBeNotDeployed'
                ('iszero', ('field', 1792, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_79054391', 5)))))
                sub_79054391[arg1].field_1792 = 1
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7ace6911: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
        else:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
            mem[0] = arg1
            mem[32] = 5
            if sub_79054391[arg1].field_0:
                require sub_79054391[arg1].field_1792 <= 1
                if sub_79054391[arg1].field_1792:
                    revert with 0, 'error_mustBeNotDeployed'
                sub_79054391[arg1].field_1792 = 1
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7ace6911: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
            else:
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792:
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 23
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_mustBeNotDeployed'
                        revert with memory
                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                           len ceil32(return_data.size) + 100
                else:
                    sub_79054391[arg1].field_0 = arg1
                    _2288 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_2288, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _2288])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792:
                        revert with 0, 'error_mustBeNotDeployed'
                ('iszero', ('field', 1792, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_79054391', 5)))))
                sub_79054391[arg1].field_1792 = 1
                require sub_79054391[arg1].field_1280 <= 1
                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                s = 0
                while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                    mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7ace6911: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, arg1
}

function transferSubscription(bytes32 arg1, address arg2) {
    if stor7:
        if owner != msg.sender:
            revert with 0, 'error_halted'
    mem[32] = 5
    if sub_79054391[arg1].field_0:
        if not sub_79054391[arg1].field_0:
            revert with 0, 'error_notFound'
        if not sub_79054391[arg1][8][address(msg.sender)].field_0:
            mem[96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(stor4)
            call stor4.0x3a20e9df with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 224
            require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
            if mem[140 len 20]:
                require ext_code.size(stor4)
                call stor4.0x5f28cb74 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32]:
                    sub_79054391[arg1][8][address(msg.sender)].field_0 = ext_call.return_data[32]
                    emit 0x9a2546e5: ext_call.return_data[32], arg1, msg.sender
        if not sub_79054391[arg1].field_0:
            revert with 0, 'error_notFound'
        if sub_79054391[arg1][8][address(msg.sender)].field_0 < block.timestamp:
            revert with 0, 'error_subscriptionNotValid'
        require block.timestamp <= sub_79054391[arg1][8][address(msg.sender)].field_0
        if sub_79054391[arg1][8][address(arg2)].field_0 <= block.timestamp:
            if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp < sub_79054391[arg1].field_1536:
                revert with 0, 'error_newSubscriptionTooSmall'
            require sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp
            sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(msg.sender)].field_0
            emit NewSubscription(sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_0, arg2);
            emit Subscribed(sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_0, arg2);
        else:
            if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp <= 0:
                revert with 0, 'error_topUpTooSmall'
            require sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp >= sub_79054391[arg1][8][address(arg2)].field_0
            sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), sub_79054391[arg1].field_0, arg2);
            emit Subscribed((sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), sub_79054391[arg1].field_0, arg2);
        sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
        emit SubscriptionTransferred((sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), arg1, msg.sender, arg2);
    else:
        mem[96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 224
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
        if mem[140 len 20]:
            sub_79054391[arg1].field_0 = arg1
            mem[0] = sha3(arg1, 5) + 1
            sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96], data=mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]])
            sub_79054391[arg1].field_512 = mem[140 len 20]
            sub_79054391[arg1].field_768 = mem[172 len 20]
            sub_79054391[arg1].field_1024 = mem[192]
            require mem[224] <= 1
            sub_79054391[arg1].field_1280 = mem[224]
            sub_79054391[arg1].field_1536 = mem[256]
            require mem[288] <= 1
            sub_79054391[arg1].field_1792 = mem[288]
            require sub_79054391[arg1].field_1280 <= 1
            mem[ceil32(return_data.size) + 288] = sub_79054391[arg1][1].field_0
            idx = ceil32(return_data.size) + 288
            s = 0
            while ceil32(return_data.size) + sub_79054391[arg1][1].length + 288 > idx + 32:
                mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(return_data.size) + 288 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
            if not sub_79054391[arg1].field_0:
                revert with 0, 'error_notFound'
            if not sub_79054391[arg1][8][address(msg.sender)].field_0:
                require ext_code.size(stor4)
                call stor4.0x5f28cb74 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32]:
                    sub_79054391[arg1][8][address(msg.sender)].field_0 = ext_call.return_data[32]
                    emit 0x9a2546e5: ext_call.return_data[32], arg1, msg.sender
            if not sub_79054391[arg1].field_0:
                revert with 0, 'error_notFound'
            if sub_79054391[arg1][8][address(msg.sender)].field_0 < block.timestamp:
                revert with 0, 'error_subscriptionNotValid'
            require block.timestamp <= sub_79054391[arg1][8][address(msg.sender)].field_0
            if sub_79054391[arg1][8][address(arg2)].field_0 <= block.timestamp:
                if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp < sub_79054391[arg1].field_1536:
                    revert with 0, 'error_newSubscriptionTooSmall'
                require sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp
                sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(msg.sender)].field_0
                emit NewSubscription(sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_0, arg2);
                emit Subscribed(sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_0, arg2);
            else:
                if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp <= 0:
                    revert with 0, 'error_topUpTooSmall'
                require sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp >= sub_79054391[arg1][8][address(arg2)].field_0
                sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                emit SubscriptionExtended((sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), sub_79054391[arg1].field_0, arg2);
                emit Subscribed((sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), sub_79054391[arg1].field_0, arg2);
            sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
            emit SubscriptionTransferred((sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), arg1, msg.sender, arg2);
        else:
            if not sub_79054391[arg1].field_0:
                revert with 0, 'error_notFound'
            mem[0] = msg.sender
            mem[32] = sha3(arg1, 5) + 8
            if sub_79054391[arg1][8][address(msg.sender)].field_0:
                if not sub_79054391[arg1].field_0:
                    revert with 0, 'error_notFound'
                if sub_79054391[arg1][8][address(msg.sender)].field_0 < block.timestamp:
                    revert with 0, 'error_subscriptionNotValid'
                require block.timestamp <= sub_79054391[arg1][8][address(msg.sender)].field_0
                if sub_79054391[arg1][8][address(arg2)].field_0 <= block.timestamp:
                    if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp < sub_79054391[arg1].field_1536:
                        revert with 0, 'error_newSubscriptionTooSmall'
                    require sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp
                    sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(msg.sender)].field_0
                    emit NewSubscription(sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_0, arg2);
                    emit Subscribed(sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_0, arg2);
                else:
                    if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp <= 0:
                        revert with 0, 'error_topUpTooSmall'
                    require sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp >= sub_79054391[arg1][8][address(arg2)].field_0
                    sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                    emit SubscriptionExtended((sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), sub_79054391[arg1].field_0, arg2);
                    emit Subscribed((sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), sub_79054391[arg1].field_0, arg2);
                sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
                emit SubscriptionTransferred((sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp), arg1, msg.sender, arg2);
            else:
                mem[ceil32(return_data.size) + 96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 224
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 96] + 32 <= return_data.size
                if not mem[ceil32(return_data.size) + 140 len 20]:
                    if not sub_79054391[arg1].field_0:
                        mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 32
                        mem[(2 * ceil32(return_data.size)) + 132] = 14
                        mem[(2 * ceil32(return_data.size)) + 164] = 'error_notFound'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 96
                           len ceil32(return_data.size) + 100
                    if sub_79054391[arg1][8][address(msg.sender)].field_0 < block.timestamp:
                        mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 32
                        mem[(2 * ceil32(return_data.size)) + 132] = 26
                        mem[(2 * ceil32(return_data.size)) + 164] = 'error_subscriptionNotValid'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 96
                           len ceil32(return_data.size) + 100
                    require block.timestamp <= sub_79054391[arg1][8][address(msg.sender)].field_0
                    if sub_79054391[arg1][8][address(arg2)].field_0 <= block.timestamp:
                        if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp < sub_79054391[arg1].field_1536:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 29
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_newSubscriptionTooSmall'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        require sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp
                        sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(msg.sender)].field_0
                        mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0
                        emit NewSubscription(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                        mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0
                        emit Subscribed(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                        sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
                        mem[(2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                        emit SubscriptionTransferred(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], arg1, msg.sender, arg2);
                    else:
                        if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp <= 0:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 19
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_topUpTooSmall'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        require sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp >= sub_79054391[arg1][8][address(arg2)].field_0
                        sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                        emit SubscriptionExtended(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                        mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                        emit Subscribed(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                        sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
                        mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                        emit SubscriptionTransferred(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, msg.sender, arg2);
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = arg1
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    require ext_code.size(stor4)
                    call stor4.0x5f28cb74 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[32]:
                        if not sub_79054391[arg1].field_0:
                            mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = 32
                            mem[(2 * ceil32(return_data.size)) + 132] = 14
                            mem[(2 * ceil32(return_data.size)) + 164] = 'error_notFound'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 96
                               len ceil32(return_data.size) + 100
                        if sub_79054391[arg1][8][address(msg.sender)].field_0 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = 32
                            mem[(2 * ceil32(return_data.size)) + 132] = 26
                            mem[(2 * ceil32(return_data.size)) + 164] = 'error_subscriptionNotValid'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 96
                               len ceil32(return_data.size) + 100
                        require block.timestamp <= sub_79054391[arg1][8][address(msg.sender)].field_0
                        if sub_79054391[arg1][8][address(arg2)].field_0 <= block.timestamp:
                            if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp < sub_79054391[arg1].field_1536:
                                mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 132] = 32
                                mem[(2 * ceil32(return_data.size)) + 164] = 29
                                mem[(2 * ceil32(return_data.size)) + 196] = 'error_newSubscriptionTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp
                            sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(msg.sender)].field_0
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0
                            emit NewSubscription(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
                            mem[(2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit SubscriptionTransferred(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], arg1, msg.sender, arg2);
                        else:
                            if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp <= 0:
                                mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 132] = 32
                                mem[(2 * ceil32(return_data.size)) + 164] = 19
                                mem[(2 * ceil32(return_data.size)) + 196] = 'error_topUpTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp >= sub_79054391[arg1][8][address(arg2)].field_0
                            sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit SubscriptionExtended(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit SubscriptionTransferred(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, msg.sender, arg2);
                    else:
                        sub_79054391[arg1][8][address(msg.sender)].field_0 = ext_call.return_data[32]
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                        emit 0x9a2546e5: mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], arg1, msg.sender
                        if not sub_79054391[arg1].field_0:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 14
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        if sub_79054391[arg1][8][address(msg.sender)].field_0 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 26
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_subscriptionNotValid'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        require block.timestamp <= sub_79054391[arg1][8][address(msg.sender)].field_0
                        if sub_79054391[arg1][8][address(arg2)].field_0 <= block.timestamp:
                            if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp < sub_79054391[arg1].field_1536:
                                mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 164] = 32
                                mem[(2 * ceil32(return_data.size)) + 196] = 29
                                mem[(2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 160
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1][8][address(msg.sender)].field_0 >= block.timestamp
                            sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(msg.sender)].field_0
                            mem[(2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(msg.sender)].field_0
                            emit NewSubscription(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            mem[(2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(msg.sender)].field_0
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
                            mem[(2 * ceil32(return_data.size)) + 224] = sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit SubscriptionTransferred(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], arg1, msg.sender, arg2);
                        else:
                            if sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp <= 0:
                                mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 164] = 32
                                mem[(2 * ceil32(return_data.size)) + 196] = 19
                                mem[(2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 160
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp >= sub_79054391[arg1][8][address(arg2)].field_0
                            sub_79054391[arg1][8][address(arg2)].field_0 = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit SubscriptionExtended(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg2)].field_0 + sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg2);
                            sub_79054391[arg1][8][address(msg.sender)].field_0 = 1
                            mem[(2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(msg.sender)].field_0 - block.timestamp
                            emit SubscriptionTransferred(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], arg1, msg.sender, arg2);
}

function updateProduct(bytes32 arg1, string arg2, address arg3, uint256 arg4, uint8 arg5, uint256 arg6) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[32] = 5
    mem[ceil32(arg2.length) + 128] = sub_79054391[arg1][1].length
    mem[ceil32(arg2.length) + 160] = sub_79054391[arg1][1].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + sub_79054391[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_79054391[arg1].field_512:
        if sub_79054391[arg1].field_512 == msg.sender:
            if arg4 <= 0:
                revert with 0, 'error_freeProductsNotSupported'
            if sub_79054391[arg1].field_0:
                sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                sub_79054391[arg1].field_768 = arg3
                sub_79054391[arg1].field_1024 = arg4
                require arg5 <= 1
                sub_79054391[arg1].field_1280 = arg5
                sub_79054391[arg1].field_1536 = arg6
                var42001 = ceil32(arg2.length)
            else:
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 164] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160
                require return_data.size >= 224
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] + 32 <= return_data.size
                if not mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 204 len 20]:
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
                    var49001 = ceil32(arg2.length)
                else:
                    sub_79054391[arg1].field_0 = arg1
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160], data=mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 192 len mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160]])
                    sub_79054391[arg1].field_512 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 204 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 236 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 256]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 288] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 288]
                    sub_79054391[arg1].field_1536 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 320]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 352] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 352]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352] = sub_79054391[arg1][1].field_0
                    idx = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352
                    s = 0
                    while ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 352 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
        else:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
            if arg4 <= 0:
                revert with 0, 'error_freeProductsNotSupported'
            if sub_79054391[arg1].field_0:
                sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                sub_79054391[arg1].field_768 = arg3
                sub_79054391[arg1].field_1024 = arg4
                require arg5 <= 1
                sub_79054391[arg1].field_1280 = arg5
                sub_79054391[arg1].field_1536 = arg6
                var43001 = ceil32(arg2.length)
            else:
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 164] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160
                require return_data.size >= 224
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] + 32 <= return_data.size
                if not mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 204 len 20]:
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
                    var50001 = ceil32(arg2.length)
                else:
                    sub_79054391[arg1].field_0 = arg1
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160], data=mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 192 len mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160]])
                    sub_79054391[arg1].field_512 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 204 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 236 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 256]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 288] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 288]
                    sub_79054391[arg1].field_1536 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 320]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 352] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 352]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352] = sub_79054391[arg1][1].field_0
                    idx = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352
                    s = 0
                    while ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 352 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
        emit 0x21953ef6: Array(len=arg2.length, data=arg2[all]), address(arg3), arg4, arg5 << 248, arg6, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
    else:
        mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 164] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160
        require return_data.size >= 224
        require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 160] + 32 <= return_data.size
        if not mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 204 len 20]:
            revert with 0, 'error_notFound'
        if mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + 204 len 20] == msg.sender:
            if arg4 <= 0:
                revert with 0, 'error_freeProductsNotSupported'
            mem[0] = arg1
            mem[32] = 5
            if sub_79054391[arg1].field_0:
                sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                sub_79054391[arg1].field_768 = arg3
                sub_79054391[arg1].field_1024 = arg4
                require arg5 <= 1
                sub_79054391[arg1].field_1280 = arg5
                sub_79054391[arg1].field_1536 = arg6
                var48001 = ceil32(arg2.length)
                emit 0x21953ef6: Array(len=arg2.length, data=arg2[all]), address(arg3), arg4, arg5 << 248, arg6, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
            else:
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 164] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 224
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                if not mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]:
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = arg3
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = arg4
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 256] = arg5
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 288] = arg6
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 160
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    var55001 = ceil32(arg2.length)
                    if not arg2.length % 32:
                        emit 0x21953ef6: mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len arg2.length + ceil32(return_data.size) + 192], sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + -(arg2.length % 32) + 384 len arg2.length % 32]
                        emit 0x21953ef6: mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg2.length) + ceil32(return_data.size) + 224], sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                else:
                    sub_79054391[arg1].field_0 = arg1
                    _5304 = mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_5304, data=mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 192 len _5304])
                    sub_79054391[arg1].field_512 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 236 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    sub_79054391[arg1].field_1536 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352] = sub_79054391[arg1][1].field_0
                    idx = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352
                    s = 0
                    while ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 352 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
                    emit 0x21953ef6: Array(len=arg2.length, data=arg2[all]), address(arg3), arg4, arg5 << 248, arg6, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
        else:
            if owner != msg.sender:
                revert with 0, 'error_productOwnersOnly'
            if arg4 <= 0:
                revert with 0, 'error_freeProductsNotSupported'
            mem[0] = arg1
            mem[32] = 5
            if sub_79054391[arg1].field_0:
                sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                sub_79054391[arg1].field_768 = arg3
                sub_79054391[arg1].field_1024 = arg4
                require arg5 <= 1
                sub_79054391[arg1].field_1280 = arg5
                sub_79054391[arg1].field_1536 = arg6
                var49001 = ceil32(arg2.length)
                emit 0x21953ef6: Array(len=arg2.length, data=arg2[all]), address(arg3), arg4, arg5 << 248, arg6, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
            else:
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 164] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 224
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160] + 32 <= return_data.size
                if not mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]:
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = arg3
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = arg4
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 256] = arg5
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 288] = arg6
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 160
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    var56001 = ceil32(arg2.length)
                    if not arg2.length % 32:
                        emit 0x21953ef6: mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len arg2.length + ceil32(return_data.size) + 192], sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + -(arg2.length % 32) + 384 len arg2.length % 32]
                        emit 0x21953ef6: mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len floor32(arg2.length) + ceil32(return_data.size) + 224], sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                else:
                    sub_79054391[arg1].field_0 = arg1
                    _5472 = mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160]
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=_5472, data=mem[mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 192 len _5472])
                    sub_79054391[arg1].field_512 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 236 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                    sub_79054391[arg1].field_1536 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                    require mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 352]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352] = sub_79054391[arg1][1].field_0
                    idx = ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352
                    s = 0
                    while ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 352 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(arg2.length) + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 352 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    sub_79054391[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    sub_79054391[arg1].field_768 = arg3
                    sub_79054391[arg1].field_1024 = arg4
                    require arg5 <= 1
                    sub_79054391[arg1].field_1280 = arg5
                    sub_79054391[arg1].field_1536 = arg6
                    emit 0x21953ef6: Array(len=arg2.length, data=arg2[all]), address(arg3), arg4, arg5 << 248, arg6, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
}

function buy(bytes32 arg1, uint256 arg2) {
    if stor7:
        if owner != msg.sender:
            revert with 0, 'error_halted'
        if stor7:
            if owner != msg.sender:
                revert with 0, 'error_halted'
    mem[32] = 5
    if sub_79054391[arg1].field_0:
        if not sub_79054391[arg1].field_0:
            revert with 0, 'error_notFound'
        if not sub_79054391[arg1][8][address(msg.sender)].field_0:
            mem[96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(stor4)
            call stor4.0x3a20e9df with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 224
            require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
            if mem[140 len 20]:
                require ext_code.size(stor4)
                call stor4.0x5f28cb74 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32]:
                    sub_79054391[arg1][8][address(msg.sender)].field_0 = ext_call.return_data[32]
                    emit 0x9a2546e5: ext_call.return_data[32], arg1, msg.sender
        if not sub_79054391[arg1].field_0:
            revert with 0, 'error_notFound'
        require sub_79054391[arg1].field_1792 <= 1
        if sub_79054391[arg1].field_1792 != 1:
            revert with 0, 'error_notDeployed'
        if sub_79054391[arg1][8][address(msg.sender)].field_0 <= block.timestamp:
            if arg2 < sub_79054391[arg1].field_1536:
                revert with 0, 'error_newSubscriptionTooSmall'
            require block.timestamp + arg2 >= block.timestamp
            sub_79054391[arg1][8][address(msg.sender)].field_0 = block.timestamp + arg2
            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, msg.sender);
            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, msg.sender);
        else:
            if arg2 <= 0:
                revert with 0, 'error_topUpTooSmall'
            require sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2 >= sub_79054391[arg1][8][address(msg.sender)].field_0
            sub_79054391[arg1][8][address(msg.sender)].field_0 += arg2
            emit SubscriptionExtended((sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2), sub_79054391[arg1].field_0, msg.sender);
            emit Subscribed((sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2), sub_79054391[arg1].field_0, msg.sender);
        require sub_79054391[arg1].field_1280 <= 1
        if not sub_79054391[arg1].field_1280:
            if not sub_79054391[arg1].field_1024:
                require ext_code.size(datacoinAddress)
                call datacoinAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_79054391[arg1].field_768, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'error_paymentFailed'
                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                    require ext_code.size(sub_79054391[arg1].field_768)
                    call sub_79054391[arg1].field_768.0x91517bdd with:
                         gas gas_remaining wei
                        args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            else:
                require sub_79054391[arg1].field_1024
                require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                require ext_code.size(datacoinAddress)
                call datacoinAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024 * arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'error_paymentFailed'
                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                    require ext_code.size(sub_79054391[arg1].field_768)
                    call sub_79054391[arg1].field_768.0x91517bdd with:
                         gas gas_remaining wei
                        args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_1024 * arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
        else:
            if not sub_79054391[arg1].field_1024:
                require ext_code.size(datacoinAddress)
                call datacoinAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_79054391[arg1].field_768, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'error_paymentFailed'
                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                    require ext_code.size(sub_79054391[arg1].field_768)
                    call sub_79054391[arg1].field_768.0x91517bdd with:
                         gas gas_remaining wei
                        args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            else:
                require sub_79054391[arg1].field_1024
                require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                    require ext_code.size(datacoinAddress)
                    call datacoinAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_79054391[arg1].field_768, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'error_paymentFailed'
                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                        require ext_code.size(sub_79054391[arg1].field_768)
                        call sub_79054391[arg1].field_768.0x91517bdd with:
                             gas gas_remaining wei
                            args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                    require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                    require ext_code.size(datacoinAddress)
                    call datacoinAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'error_paymentFailed'
                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                        require ext_code.size(sub_79054391[arg1].field_768)
                        call sub_79054391[arg1].field_768.0x91517bdd with:
                             gas gas_remaining wei
                            args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
    else:
        mem[96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor4)
        call stor4.0x3a20e9df with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 224
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
        if mem[140 len 20]:
            sub_79054391[arg1].field_0 = arg1
            mem[0] = sha3(arg1, 5) + 1
            sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96], data=mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]])
            sub_79054391[arg1].field_512 = mem[140 len 20]
            sub_79054391[arg1].field_768 = mem[172 len 20]
            sub_79054391[arg1].field_1024 = mem[192]
            require mem[224] <= 1
            sub_79054391[arg1].field_1280 = mem[224]
            sub_79054391[arg1].field_1536 = mem[256]
            require mem[288] <= 1
            sub_79054391[arg1].field_1792 = mem[288]
            require sub_79054391[arg1].field_1280 <= 1
            mem[ceil32(return_data.size) + 288] = sub_79054391[arg1][1].field_0
            idx = ceil32(return_data.size) + 288
            s = 0
            while ceil32(return_data.size) + sub_79054391[arg1][1].length + 288 > idx + 32:
                mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(return_data.size) + 288 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
            if not sub_79054391[arg1].field_0:
                revert with 0, 'error_notFound'
            if not sub_79054391[arg1][8][address(msg.sender)].field_0:
                require ext_code.size(stor4)
                call stor4.0x5f28cb74 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32]:
                    sub_79054391[arg1][8][address(msg.sender)].field_0 = ext_call.return_data[32]
                    emit 0x9a2546e5: ext_call.return_data[32], arg1, msg.sender
            if not sub_79054391[arg1].field_0:
                revert with 0, 'error_notFound'
            require sub_79054391[arg1].field_1792 <= 1
            if sub_79054391[arg1].field_1792 != 1:
                revert with 0, 'error_notDeployed'
            if sub_79054391[arg1][8][address(msg.sender)].field_0 <= block.timestamp:
                if arg2 < sub_79054391[arg1].field_1536:
                    revert with 0, 'error_newSubscriptionTooSmall'
                require block.timestamp + arg2 >= block.timestamp
                sub_79054391[arg1][8][address(msg.sender)].field_0 = block.timestamp + arg2
                emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, msg.sender);
                emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, msg.sender);
            else:
                if arg2 <= 0:
                    revert with 0, 'error_topUpTooSmall'
                require sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2 >= sub_79054391[arg1][8][address(msg.sender)].field_0
                sub_79054391[arg1][8][address(msg.sender)].field_0 += arg2
                emit SubscriptionExtended((sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2), sub_79054391[arg1].field_0, msg.sender);
                emit Subscribed((sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2), sub_79054391[arg1].field_0, msg.sender);
            require sub_79054391[arg1].field_1280 <= 1
            if not sub_79054391[arg1].field_1280:
                if not sub_79054391[arg1].field_1024:
                    require ext_code.size(datacoinAddress)
                    call datacoinAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_79054391[arg1].field_768, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'error_paymentFailed'
                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                        require ext_code.size(sub_79054391[arg1].field_768)
                        call sub_79054391[arg1].field_768.0x91517bdd with:
                             gas gas_remaining wei
                            args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    require sub_79054391[arg1].field_1024
                    require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                    require ext_code.size(datacoinAddress)
                    call datacoinAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024 * arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'error_paymentFailed'
                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                        require ext_code.size(sub_79054391[arg1].field_768)
                        call sub_79054391[arg1].field_768.0x91517bdd with:
                             gas gas_remaining wei
                            args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_1024 * arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            else:
                if not sub_79054391[arg1].field_1024:
                    require ext_code.size(datacoinAddress)
                    call datacoinAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, sub_79054391[arg1].field_768, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'error_paymentFailed'
                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                        require ext_code.size(sub_79054391[arg1].field_768)
                        call sub_79054391[arg1].field_768.0x91517bdd with:
                             gas gas_remaining wei
                            args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    require sub_79054391[arg1].field_1024
                    require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                    if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                        require ext_code.size(datacoinAddress)
                        call datacoinAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_79054391[arg1].field_768, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'error_paymentFailed'
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                        require ext_code.size(datacoinAddress)
                        call datacoinAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'error_paymentFailed'
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
        else:
            if not sub_79054391[arg1].field_0:
                revert with 0, 'error_notFound'
            mem[0] = msg.sender
            mem[32] = sha3(arg1, 5) + 8
            if sub_79054391[arg1][8][address(msg.sender)].field_0:
                if not sub_79054391[arg1].field_0:
                    revert with 0, 'error_notFound'
                require sub_79054391[arg1].field_1792 <= 1
                if sub_79054391[arg1].field_1792 != 1:
                    revert with 0, 'error_notDeployed'
                if sub_79054391[arg1][8][address(msg.sender)].field_0 <= block.timestamp:
                    if arg2 < sub_79054391[arg1].field_1536:
                        revert with 0, 'error_newSubscriptionTooSmall'
                    require block.timestamp + arg2 >= block.timestamp
                    sub_79054391[arg1][8][address(msg.sender)].field_0 = block.timestamp + arg2
                    emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, msg.sender);
                    emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, msg.sender);
                else:
                    if arg2 <= 0:
                        revert with 0, 'error_topUpTooSmall'
                    require sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2 >= sub_79054391[arg1][8][address(msg.sender)].field_0
                    sub_79054391[arg1][8][address(msg.sender)].field_0 += arg2
                    emit SubscriptionExtended((sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2), sub_79054391[arg1].field_0, msg.sender);
                    emit Subscribed((sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2), sub_79054391[arg1].field_0, msg.sender);
                require sub_79054391[arg1].field_1280 <= 1
                if not sub_79054391[arg1].field_1280:
                    if not sub_79054391[arg1].field_1024:
                        require ext_code.size(datacoinAddress)
                        call datacoinAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_79054391[arg1].field_768, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'error_paymentFailed'
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        require sub_79054391[arg1].field_1024
                        require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                        require ext_code.size(datacoinAddress)
                        call datacoinAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024 * arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'error_paymentFailed'
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_1024 * arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                else:
                    if not sub_79054391[arg1].field_1024:
                        require ext_code.size(datacoinAddress)
                        call datacoinAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_79054391[arg1].field_768, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'error_paymentFailed'
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        require sub_79054391[arg1].field_1024
                        require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                        if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                            require ext_code.size(datacoinAddress)
                            call datacoinAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_79054391[arg1].field_768, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'error_paymentFailed'
                            if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                require ext_code.size(sub_79054391[arg1].field_768)
                                call sub_79054391[arg1].field_768.0x91517bdd with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                            require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                            require ext_code.size(datacoinAddress)
                            call datacoinAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'error_paymentFailed'
                            if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                require ext_code.size(sub_79054391[arg1].field_768)
                                call sub_79054391[arg1].field_768.0x91517bdd with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, sub_79054391[arg1][8][address(msg.sender)].field_0, sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 96] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 224
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 96] + 32 <= return_data.size
                if not mem[ceil32(return_data.size) + 140 len 20]:
                    if not sub_79054391[arg1].field_0:
                        mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 32
                        mem[(2 * ceil32(return_data.size)) + 132] = 14
                        mem[(2 * ceil32(return_data.size)) + 164] = 'error_notFound'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 96
                           len ceil32(return_data.size) + 100
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792 != 1:
                        mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 32
                        mem[(2 * ceil32(return_data.size)) + 132] = 17
                        mem[(2 * ceil32(return_data.size)) + 164] = 'error_notDeployed'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 96
                           len ceil32(return_data.size) + 100
                    if sub_79054391[arg1][8][address(msg.sender)].field_0 <= block.timestamp:
                        if arg2 < sub_79054391[arg1].field_1536:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 29
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_newSubscriptionTooSmall'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        require block.timestamp + arg2 >= block.timestamp
                        sub_79054391[arg1][8][address(msg.sender)].field_0 = block.timestamp + arg2
                        mem[(2 * ceil32(return_data.size)) + 160] = block.timestamp + arg2
                        emit NewSubscription(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                        mem[(2 * ceil32(return_data.size)) + 160] = block.timestamp + arg2
                        emit Subscribed(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                        require sub_79054391[arg1].field_1280 <= 1
                        if not sub_79054391[arg1].field_1280:
                            if not sub_79054391[arg1].field_1024:
                                mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                require ext_code.size(datacoinAddress)
                                call datacoinAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 164] = 32
                                    mem[(2 * ceil32(return_data.size)) + 196] = 19
                                    mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                require sub_79054391[arg1].field_1024
                                require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                                mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * arg2
                                require ext_code.size(datacoinAddress)
                                call datacoinAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 164] = 32
                                    mem[(2 * ceil32(return_data.size)) + 196] = 19
                                    mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                    mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * arg2
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            if not sub_79054391[arg1].field_1024:
                                mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                mem[(2 * ceil32(return_data.size)) + 228] = 0
                                require ext_code.size(datacoinAddress)
                                call datacoinAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 164] = 32
                                    mem[(2 * ceil32(return_data.size)) + 196] = 19
                                    mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                require sub_79054391[arg1].field_1024
                                require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                                if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                    else:
                        if arg2 <= 0:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 19
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_topUpTooSmall'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        require sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2 >= sub_79054391[arg1][8][address(msg.sender)].field_0
                        sub_79054391[arg1][8][address(msg.sender)].field_0 += arg2
                        mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2
                        emit SubscriptionExtended(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                        mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2
                        emit Subscribed(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                        require sub_79054391[arg1].field_1280 <= 1
                        if not sub_79054391[arg1].field_1280:
                            if not sub_79054391[arg1].field_1024:
                                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                mem[(2 * ceil32(return_data.size)) + 196] = 0
                                require ext_code.size(datacoinAddress)
                                call datacoinAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 132] = 32
                                    mem[(2 * ceil32(return_data.size)) + 164] = 19
                                    mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                require sub_79054391[arg1].field_1024
                                require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_1024 * arg2
                                require ext_code.size(datacoinAddress)
                                call datacoinAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 132] = 32
                                    mem[(2 * ceil32(return_data.size)) + 164] = 19
                                    mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * arg2
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            if not sub_79054391[arg1].field_1024:
                                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                mem[(2 * ceil32(return_data.size)) + 196] = 0
                                require ext_code.size(datacoinAddress)
                                call datacoinAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 132] = 32
                                    mem[(2 * ceil32(return_data.size)) + 164] = 19
                                    mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                require sub_79054391[arg1].field_1024
                                require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                                if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 132] = 32
                                        mem[(2 * ceil32(return_data.size)) + 164] = 19
                                        mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 128
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 132] = 32
                                        mem[(2 * ceil32(return_data.size)) + 164] = 19
                                        mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 128
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = arg1
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    require ext_code.size(stor4)
                    call stor4.0x5f28cb74 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[32]:
                        if not sub_79054391[arg1].field_0:
                            mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = 32
                            mem[(2 * ceil32(return_data.size)) + 132] = 14
                            mem[(2 * ceil32(return_data.size)) + 164] = 'error_notFound'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 96
                               len ceil32(return_data.size) + 100
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            mem[(2 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = 32
                            mem[(2 * ceil32(return_data.size)) + 132] = 17
                            mem[(2 * ceil32(return_data.size)) + 164] = 'error_notDeployed'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 96
                               len ceil32(return_data.size) + 100
                        if sub_79054391[arg1][8][address(msg.sender)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 132] = 32
                                mem[(2 * ceil32(return_data.size)) + 164] = 29
                                mem[(2 * ceil32(return_data.size)) + 196] = 'error_newSubscriptionTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(msg.sender)].field_0 = block.timestamp + arg2
                            mem[(2 * ceil32(return_data.size)) + 160] = block.timestamp + arg2
                            emit NewSubscription(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            mem[(2 * ceil32(return_data.size)) + 160] = block.timestamp + arg2
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            require sub_79054391[arg1].field_1280 <= 1
                            if not sub_79054391[arg1].field_1280:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * arg2
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * arg2
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                                    if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 164] = 32
                                            mem[(2 * ceil32(return_data.size)) + 196] = 19
                                            mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 160
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 164] = 32
                                            mem[(2 * ceil32(return_data.size)) + 196] = 19
                                            mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 160
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                        else:
                            if arg2 <= 0:
                                mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 132] = 32
                                mem[(2 * ceil32(return_data.size)) + 164] = 19
                                mem[(2 * ceil32(return_data.size)) + 196] = 'error_topUpTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2 >= sub_79054391[arg1][8][address(msg.sender)].field_0
                            sub_79054391[arg1][8][address(msg.sender)].field_0 += arg2
                            mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2
                            emit SubscriptionExtended(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            mem[(2 * ceil32(return_data.size)) + 128] = sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            require sub_79054391[arg1].field_1280 <= 1
                            if not sub_79054391[arg1].field_1280:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 132] = 32
                                        mem[(2 * ceil32(return_data.size)) + 164] = 19
                                        mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 128
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_1024 * arg2
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 132] = 32
                                        mem[(2 * ceil32(return_data.size)) + 164] = 19
                                        mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 128
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * arg2
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 132] = 32
                                        mem[(2 * ceil32(return_data.size)) + 164] = 19
                                        mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 128
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                                    if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                                            mem[(2 * ceil32(return_data.size)) + 164] = 19
                                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 128
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 228] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 164] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                                            mem[(2 * ceil32(return_data.size)) + 164] = 19
                                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 128
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 132] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                    else:
                        sub_79054391[arg1][8][address(msg.sender)].field_0 = ext_call.return_data[32]
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
                        emit 0x9a2546e5: mem[(2 * ceil32(return_data.size)) + 128 len ceil32(return_data.size) + 32], arg1, msg.sender
                        if not sub_79054391[arg1].field_0:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 14
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 132] = 32
                            mem[(2 * ceil32(return_data.size)) + 164] = 17
                            mem[(2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        if sub_79054391[arg1][8][address(msg.sender)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 164] = 32
                                mem[(2 * ceil32(return_data.size)) + 196] = 29
                                mem[(2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 160
                                   len ceil32(return_data.size) + 100
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(msg.sender)].field_0 = block.timestamp + arg2
                            mem[(2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                            emit NewSubscription(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            mem[(2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            require sub_79054391[arg1].field_1280 <= 1
                            if not sub_79054391[arg1].field_1280:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                                        mem[(2 * ceil32(return_data.size)) + 228] = 19
                                        mem[(2 * ceil32(return_data.size)) + 260] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                                    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * arg2
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                                        mem[(2 * ceil32(return_data.size)) + 228] = 19
                                        mem[(2 * ceil32(return_data.size)) + 260] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1].field_1024 * arg2
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                                        mem[(2 * ceil32(return_data.size)) + 228] = 19
                                        mem[(2 * ceil32(return_data.size)) + 260] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                                    if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                                            mem[(2 * ceil32(return_data.size)) + 228] = 19
                                            mem[(2 * ceil32(return_data.size)) + 260] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 192
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 196] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                                            mem[(2 * ceil32(return_data.size)) + 228] = 19
                                            mem[(2 * ceil32(return_data.size)) + 260] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 192
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 196] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                        else:
                            if arg2 <= 0:
                                mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 164] = 32
                                mem[(2 * ceil32(return_data.size)) + 196] = 19
                                mem[(2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 160
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2 >= sub_79054391[arg1][8][address(msg.sender)].field_0
                            sub_79054391[arg1][8][address(msg.sender)].field_0 += arg2
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2
                            emit SubscriptionExtended(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(msg.sender)].field_0 + arg2
                            emit Subscribed(mem[(2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, msg.sender);
                            require sub_79054391[arg1].field_1280 <= 1
                            if not sub_79054391[arg1].field_1280:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * arg2 / sub_79054391[arg1].field_1024 == arg2
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * arg2
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * arg2
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                if not sub_79054391[arg1].field_1024:
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                                    require ext_code.size(datacoinAddress)
                                    call datacoinAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 164] = 32
                                        mem[(2 * ceil32(return_data.size)) + 196] = 19
                                        mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    require sub_79054391[arg1].field_1024
                                    require sub_79054391[arg1].field_1024 * dataPerUsd / sub_79054391[arg1].field_1024 == dataPerUsd
                                    if not sub_79054391[arg1].field_1024 * dataPerUsd / 10^18:
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 164] = 32
                                            mem[(2 * ceil32(return_data.size)) + 196] = 19
                                            mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 160
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18
                                        require sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2 / sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 == arg2
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = sub_79054391[arg1].field_768
                                        mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                        require ext_code.size(datacoinAddress)
                                        call datacoinAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 164] = 32
                                            mem[(2 * ceil32(return_data.size)) + 196] = 19
                                            mem[(2 * ceil32(return_data.size)) + 228] = 'error_paymentFailed'
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 160
                                               len ceil32(return_data.size) + 100
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[(2 * ceil32(return_data.size)) + 164] = arg1
                                            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(msg.sender)].field_0
                                            mem[(2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1].field_1024 * dataPerUsd / 10^18 * arg2
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
}

function sub_1f4e09af(?) {
    if not stor7:
        mem[32] = 5
        mem[96] = sub_79054391[arg1][1].length
        mem[128] = sub_79054391[arg1][1].field_0
        idx = 128
        s = 0
        while sub_79054391[arg1][1].length + 96 > idx:
            mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sub_79054391[arg1].field_512:
            if sub_79054391[arg1].field_512 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'error_productOwnersOnly'
            if sub_79054391[arg1].field_0:
                if not sub_79054391[arg1].field_0:
                    revert with 0, 'error_notFound'
                if not sub_79054391[arg1][8][address(arg3)].field_0:
                    mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
                    require ext_code.size(stor4)
                    call stor4.0x3a20e9df with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
                    require return_data.size >= 224
                    require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
                    if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                        require ext_code.size(stor4)
                        call stor4.0x5f28cb74 with:
                             gas gas_remaining wei
                            args arg1, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32]:
                            sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                            emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                if not sub_79054391[arg1].field_0:
                    revert with 0, 'error_notFound'
                require sub_79054391[arg1].field_1792 <= 1
                if sub_79054391[arg1].field_1792 != 1:
                    revert with 0, 'error_notDeployed'
                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                    if arg2 < sub_79054391[arg1].field_1536:
                        revert with 0, 'error_newSubscriptionTooSmall'
                    require block.timestamp + arg2 >= block.timestamp
                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                    emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                    emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                else:
                    if arg2 <= 0:
                        revert with 0, 'error_topUpTooSmall'
                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                    emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                    emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                    require ext_code.size(sub_79054391[arg1].field_768)
                    call sub_79054391[arg1].field_768.0x91517bdd with:
                         gas gas_remaining wei
                        args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            else:
                mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
                if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                    sub_79054391[arg1].field_0 = arg1
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128], data=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 160 len mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128]])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    if not sub_79054391[arg1][8][address(arg3)].field_0:
                        require ext_code.size(stor4)
                        call stor4.0x5f28cb74 with:
                             gas gas_remaining wei
                            args arg1, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32]:
                            sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                            emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792 != 1:
                        revert with 0, 'error_notDeployed'
                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                        if arg2 < sub_79054391[arg1].field_1536:
                            revert with 0, 'error_newSubscriptionTooSmall'
                        require block.timestamp + arg2 >= block.timestamp
                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                        emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                    else:
                        if arg2 <= 0:
                            revert with 0, 'error_topUpTooSmall'
                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                        emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                        require ext_code.size(sub_79054391[arg1].field_768)
                        call sub_79054391[arg1].field_768.0x91517bdd with:
                             gas gas_remaining wei
                            args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    mem[0] = arg3
                    mem[32] = sha3(arg1, 5) + 8
                    if sub_79054391[arg1][8][address(arg3)].field_0:
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                        require ext_code.size(stor4)
                        call stor4.0x3a20e9df with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 224
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                        if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg3
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, arg3
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
        else:
            mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
            mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
            require ext_code.size(stor4)
            call stor4.0x3a20e9df with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
            require return_data.size >= 224
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
            if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                revert with 0, 'error_notFound'
            if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20] == msg.sender:
                mem[0] = arg1
                mem[32] = 5
                if sub_79054391[arg1].field_0:
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    mem[0] = arg3
                    mem[32] = sha3(arg1, 5) + 8
                    if sub_79054391[arg1][8][address(arg3)].field_0:
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                        require ext_code.size(stor4)
                        call stor4.0x3a20e9df with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 224
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                        if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg3
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, arg3
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                else:
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                    require ext_code.size(stor4)
                    call stor4.0x3a20e9df with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 224
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                    if mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                        sub_79054391[arg1].field_0 = arg1
                        _33941 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                        mem[0] = sha3(arg1, 5) + 1
                        sub_79054391[arg1][1][].field_0 = Array(len=_33941, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _33941])
                        sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                        sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                        sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                        sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                        sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                        sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                        require sub_79054391[arg1].field_1280 <= 1
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                        idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                        s = 0
                        while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                            mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        if not sub_79054391[arg1][8][address(arg3)].field_0:
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args arg1, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[32]:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if not sub_79054391[arg1].field_0:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                            revert with memory
                              from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        mem[0] = arg3
                        mem[32] = sha3(arg1, 5) + 8
                        if sub_79054391[arg1][8][address(arg3)].field_0:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            require ext_code.size(stor4)
                            call stor4.0x3a20e9df with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 224
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                            require mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] + 32 <= return_data.size
                            if not mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 172 len 20]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = arg1
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg3
                                require ext_code.size(stor4)
                                call stor4.0x5f28cb74 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if not ext_call.return_data[32]:
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                else:
                                    sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                    emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], arg1, arg3
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 324] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
            else:
                if owner != msg.sender:
                    revert with 0, 'error_productOwnersOnly'
                mem[0] = arg1
                mem[32] = 5
                if sub_79054391[arg1].field_0:
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    mem[0] = arg3
                    mem[32] = sha3(arg1, 5) + 8
                    if sub_79054391[arg1][8][address(arg3)].field_0:
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                        require ext_code.size(stor4)
                        call stor4.0x3a20e9df with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 224
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                        if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg3
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, arg3
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                else:
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                    require ext_code.size(stor4)
                    call stor4.0x3a20e9df with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 224
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                    if mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                        sub_79054391[arg1].field_0 = arg1
                        _34360 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                        mem[0] = sha3(arg1, 5) + 1
                        sub_79054391[arg1][1][].field_0 = Array(len=_34360, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _34360])
                        sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                        sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                        sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                        sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                        sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                        sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                        require sub_79054391[arg1].field_1280 <= 1
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                        idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                        s = 0
                        while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                            mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        if not sub_79054391[arg1][8][address(arg3)].field_0:
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args arg1, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[32]:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if not sub_79054391[arg1].field_0:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                            revert with memory
                              from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        mem[0] = arg3
                        mem[32] = sha3(arg1, 5) + 8
                        if sub_79054391[arg1][8][address(arg3)].field_0:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            require ext_code.size(stor4)
                            call stor4.0x3a20e9df with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 224
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                            require mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] + 32 <= return_data.size
                            if not mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 172 len 20]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = arg1
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg3
                                require ext_code.size(stor4)
                                call stor4.0x5f28cb74 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if not ext_call.return_data[32]:
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                else:
                                    sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                    emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], arg1, arg3
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 324] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
    else:
        if owner != msg.sender:
            revert with 0, 'error_halted'
        mem[32] = 5
        mem[96] = sub_79054391[arg1][1].length
        mem[128] = sub_79054391[arg1][1].field_0
        idx = 128
        s = 0
        while sub_79054391[arg1][1].length + 96 > idx:
            mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sub_79054391[arg1].field_512:
            if sub_79054391[arg1].field_512 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'error_productOwnersOnly'
            if sub_79054391[arg1].field_0:
                if not sub_79054391[arg1].field_0:
                    revert with 0, 'error_notFound'
                if not sub_79054391[arg1][8][address(arg3)].field_0:
                    mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
                    require ext_code.size(stor4)
                    call stor4.0x3a20e9df with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
                    require return_data.size >= 224
                    require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
                    if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                        require ext_code.size(stor4)
                        call stor4.0x5f28cb74 with:
                             gas gas_remaining wei
                            args arg1, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32]:
                            sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                            emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                if not sub_79054391[arg1].field_0:
                    revert with 0, 'error_notFound'
                require sub_79054391[arg1].field_1792 <= 1
                if sub_79054391[arg1].field_1792 != 1:
                    revert with 0, 'error_notDeployed'
                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                    if arg2 < sub_79054391[arg1].field_1536:
                        revert with 0, 'error_newSubscriptionTooSmall'
                    require block.timestamp + arg2 >= block.timestamp
                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                    emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                    emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                else:
                    if arg2 <= 0:
                        revert with 0, 'error_topUpTooSmall'
                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                    emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                    emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                    require ext_code.size(sub_79054391[arg1].field_768)
                    call sub_79054391[arg1].field_768.0x91517bdd with:
                         gas gas_remaining wei
                        args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            else:
                mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
                require ext_code.size(stor4)
                call stor4.0x3a20e9df with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
                require return_data.size >= 224
                require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
                if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                    sub_79054391[arg1].field_0 = arg1
                    mem[0] = sha3(arg1, 5) + 1
                    sub_79054391[arg1][1][].field_0 = Array(len=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128], data=mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 160 len mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128]])
                    sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]
                    sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + 204 len 20]
                    sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + 224]
                    require mem[ceil32(sub_79054391[arg1][1].length) + 256] <= 1
                    sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + 256]
                    sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + 288]
                    require mem[ceil32(sub_79054391[arg1][1].length) + 320] <= 1
                    sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + 320]
                    require sub_79054391[arg1].field_1280 <= 1
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] = sub_79054391[arg1][1].field_0
                    idx = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320
                    s = 0
                    while ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + sub_79054391[arg1][1].length + 320 > idx + 32:
                        mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    if not sub_79054391[arg1][8][address(arg3)].field_0:
                        require ext_code.size(stor4)
                        call stor4.0x5f28cb74 with:
                             gas gas_remaining wei
                            args arg1, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32]:
                            sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                            emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    require sub_79054391[arg1].field_1792 <= 1
                    if sub_79054391[arg1].field_1792 != 1:
                        revert with 0, 'error_notDeployed'
                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                        if arg2 < sub_79054391[arg1].field_1536:
                            revert with 0, 'error_newSubscriptionTooSmall'
                        require block.timestamp + arg2 >= block.timestamp
                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                        emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                    else:
                        if arg2 <= 0:
                            revert with 0, 'error_topUpTooSmall'
                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                        emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                        require ext_code.size(sub_79054391[arg1].field_768)
                        call sub_79054391[arg1].field_768.0x91517bdd with:
                             gas gas_remaining wei
                            args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                else:
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    mem[0] = arg3
                    mem[32] = sha3(arg1, 5) + 8
                    if sub_79054391[arg1][8][address(arg3)].field_0:
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                        require ext_code.size(stor4)
                        call stor4.0x3a20e9df with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 224
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                        if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg3
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, arg3
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
        else:
            mem[ceil32(sub_79054391[arg1][1].length) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
            mem[ceil32(sub_79054391[arg1][1].length) + 132] = arg1
            require ext_code.size(stor4)
            call stor4.0x3a20e9df with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(sub_79054391[arg1][1].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128
            require return_data.size >= 224
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + 128] + 32 <= return_data.size
            if not mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20]:
                revert with 0, 'error_notFound'
            if mem[ceil32(sub_79054391[arg1][1].length) + 172 len 20] == msg.sender:
                mem[0] = arg1
                mem[32] = 5
                if sub_79054391[arg1].field_0:
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    mem[0] = arg3
                    mem[32] = sha3(arg1, 5) + 8
                    if sub_79054391[arg1][8][address(arg3)].field_0:
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                        require ext_code.size(stor4)
                        call stor4.0x3a20e9df with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 224
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                        if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg3
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, arg3
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                else:
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                    require ext_code.size(stor4)
                    call stor4.0x3a20e9df with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 224
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                    if mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                        sub_79054391[arg1].field_0 = arg1
                        _34110 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                        mem[0] = sha3(arg1, 5) + 1
                        sub_79054391[arg1][1][].field_0 = Array(len=_34110, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _34110])
                        sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                        sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                        sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                        sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                        sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                        sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                        require sub_79054391[arg1].field_1280 <= 1
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                        idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                        s = 0
                        while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                            mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        if not sub_79054391[arg1][8][address(arg3)].field_0:
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args arg1, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[32]:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if not sub_79054391[arg1].field_0:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                            revert with memory
                              from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        mem[0] = arg3
                        mem[32] = sha3(arg1, 5) + 8
                        if sub_79054391[arg1][8][address(arg3)].field_0:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            require ext_code.size(stor4)
                            call stor4.0x3a20e9df with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 224
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                            require mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] + 32 <= return_data.size
                            if not mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 172 len 20]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = arg1
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg3
                                require ext_code.size(stor4)
                                call stor4.0x5f28cb74 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if not ext_call.return_data[32]:
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                else:
                                    sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                    emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], arg1, arg3
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 324] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
            else:
                if owner != msg.sender:
                    revert with 0, 'error_productOwnersOnly'
                mem[0] = arg1
                mem[32] = 5
                if sub_79054391[arg1].field_0:
                    if not sub_79054391[arg1].field_0:
                        revert with 0, 'error_notFound'
                    mem[0] = arg3
                    mem[32] = sha3(arg1, 5) + 8
                    if sub_79054391[arg1][8][address(arg3)].field_0:
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                        require ext_code.size(stor4)
                        call stor4.0x3a20e9df with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 224
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                        if not mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg3
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[32]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], arg1, arg3
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192
                                           len ceil32(return_data.size) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                else:
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 132] = arg1
                    require ext_code.size(stor4)
                    call stor4.0x3a20e9df with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 224
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128] + 32 <= return_data.size
                    if mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]:
                        sub_79054391[arg1].field_0 = arg1
                        _34686 = mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128]
                        mem[0] = sha3(arg1, 5) + 1
                        sub_79054391[arg1][1][].field_0 = Array(len=_34686, data=mem[mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 160 len _34686])
                        sub_79054391[arg1].field_512 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 172 len 20]
                        sub_79054391[arg1].field_768 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 204 len 20]
                        sub_79054391[arg1].field_1024 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 224]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256] <= 1
                        sub_79054391[arg1].field_1280 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 256]
                        sub_79054391[arg1].field_1536 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 288]
                        require mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320] <= 1
                        sub_79054391[arg1].field_1792 = mem[ceil32(sub_79054391[arg1][1].length) + ceil32(return_data.size) + 320]
                        require sub_79054391[arg1].field_1280 <= 1
                        mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320] = sub_79054391[arg1][1].field_0
                        idx = ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320
                        s = 0
                        while ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + sub_79054391[arg1][1].length + 320 > idx + 32:
                            mem[idx + 32] = sub_79054391[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xd608cf60: Array(len=sub_79054391[arg1][1].length, data=mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 320 len sub_79054391[arg1][1].length + (floor32(sub_79054391[arg1][1].length - 1) + -sub_79054391[arg1][1].length + 32 % 32)]), sub_79054391[arg1].field_768, sub_79054391[arg1].field_1024, sub_79054391[arg1].field_1280, sub_79054391[arg1].field_1536, sub_79054391[arg1].field_512, sub_79054391[arg1].field_0
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        if not sub_79054391[arg1][8][address(arg3)].field_0:
                            require ext_code.size(stor4)
                            call stor4.0x5f28cb74 with:
                                 gas gas_remaining wei
                                args arg1, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[32]:
                                sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                emit 0x9a2546e5: ext_call.return_data[32], arg1, arg3
                        if not sub_79054391[arg1].field_0:
                            revert with 0, 'error_notFound'
                        require sub_79054391[arg1].field_1792 <= 1
                        if sub_79054391[arg1].field_1792 != 1:
                            revert with 0, 'error_notDeployed'
                        if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                            if arg2 < sub_79054391[arg1].field_1536:
                                revert with 0, 'error_newSubscriptionTooSmall'
                            require block.timestamp + arg2 >= block.timestamp
                            sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                            emit NewSubscription((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((block.timestamp + arg2), sub_79054391[arg1].field_0, arg3);
                        else:
                            if arg2 <= 0:
                                revert with 0, 'error_topUpTooSmall'
                            require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                            sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                            emit SubscriptionExtended((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                            emit Subscribed((sub_79054391[arg1][8][address(arg3)].field_0 + arg2), sub_79054391[arg1].field_0, arg3);
                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                            require ext_code.size(sub_79054391[arg1].field_768)
                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                 gas gas_remaining wei
                                args arg1, address(arg3), sub_79054391[arg1][8][address(arg3)].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if not sub_79054391[arg1].field_0:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                            revert with memory
                              from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                               len ceil32(return_data.size) + 100
                        mem[0] = arg3
                        mem[32] = sha3(arg1, 5) + 8
                        if sub_79054391[arg1][8][address(arg3)].field_0:
                            if not sub_79054391[arg1].field_0:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 14
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            require sub_79054391[arg1].field_1792 <= 1
                            if sub_79054391[arg1].field_1792 != 1:
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = 32
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 17
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                revert with memory
                                  from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128
                                   len ceil32(return_data.size) + 100
                            if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                if arg2 < sub_79054391[arg1].field_1536:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 29
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require block.timestamp + arg2 >= block.timestamp
                                sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 292] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if arg2 <= 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = 19
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160
                                       len ceil32(return_data.size) + 100
                                require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 32], sub_79054391[arg1].field_0, arg3);
                                if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164] = arg1
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 196] = arg3
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                    mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 260] = 0
                                    require ext_code.size(sub_79054391[arg1].field_768)
                                    call sub_79054391[arg1].field_768.0x91517bdd with:
                                         gas gas_remaining wei
                                        args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                        else:
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] = 0x3a20e9df00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132] = arg1
                            require ext_code.size(stor4)
                            call stor4.0x3a20e9df with:
                                 gas gas_remaining wei
                                args mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 224
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                            require mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                            require mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] <= 4294967296 and mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 128] + 32 <= return_data.size
                            if not mem[ceil32(sub_79054391[arg1][1].length) + (2 * ceil32(return_data.size)) + 172 len 20]:
                                if not sub_79054391[arg1].field_0:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                require sub_79054391[arg1].field_1792 <= 1
                                if sub_79054391[arg1].field_1792 != 1:
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                    revert with memory
                                      from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                       len (5 * ceil32(return_data.size)) + 100
                                if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                    if arg2 < sub_79054391[arg1].field_1536:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require block.timestamp + arg2 >= block.timestamp
                                    sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                else:
                                    if arg2 <= 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                    sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                    emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                    if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                        require ext_code.size(sub_79054391[arg1].field_768)
                                        call sub_79054391[arg1].field_768.0x91517bdd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                            else:
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = arg1
                                mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg3
                                require ext_code.size(stor4)
                                call stor4.0x5f28cb74 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if not ext_call.return_data[32]:
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 132] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 128
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                else:
                                    sub_79054391[arg1][8][address(arg3)].field_0 = ext_call.return_data[32]
                                    mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
                                    emit 0x9a2546e5: mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 32], arg1, arg3
                                    if not sub_79054391[arg1].field_0:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 14
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notFound'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    require sub_79054391[arg1].field_1792 <= 1
                                    if sub_79054391[arg1].field_1792 != 1:
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 164] = 32
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 17
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 'error_notDeployed'
                                        revert with memory
                                          from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 160
                                           len (5 * ceil32(return_data.size)) + 100
                                    if sub_79054391[arg1][8][address(arg3)].field_0 <= block.timestamp:
                                        if arg2 < sub_79054391[arg1].field_1536:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 29
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_newSubscriptionTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require block.timestamp + arg2 >= block.timestamp
                                        sub_79054391[arg1][8][address(arg3)].field_0 = block.timestamp + arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit NewSubscription(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224] = block.timestamp + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 324] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                    else:
                                        if arg2 <= 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = 32
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = 19
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = 'error_topUpTooSmall'
                                            revert with memory
                                              from ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192
                                               len (5 * ceil32(return_data.size)) + 100
                                        require sub_79054391[arg1][8][address(arg3)].field_0 + arg2 >= sub_79054391[arg1][8][address(arg3)].field_0
                                        sub_79054391[arg1][8][address(arg3)].field_0 += arg2
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit SubscriptionExtended(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192] = sub_79054391[arg1][8][address(arg3)].field_0 + arg2
                                        emit Subscribed(mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], sub_79054391[arg1].field_0, arg3);
                                        if ext_code.size(sub_79054391[arg1].field_768) > 0:
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196] = arg1
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 228] = arg3
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 260] = sub_79054391[arg1][8][address(arg3)].field_0
                                            mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 292] = 0
                                            require ext_code.size(sub_79054391[arg1].field_768)
                                            call sub_79054391[arg1].field_768.0x91517bdd with:
                                                 gas gas_remaining wei
                                                args mem[ceil32(sub_79054391[arg1][1].length) + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
}



}
