contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor5;
array of address stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    mem[352] = 9
    mem[384] = 'NOT_EXIST'
    mem[96] = 352
    mem[416] = 12
    mem[448] = 'BEFORE_START'
    mem[128] = 416
    mem[480] = 4
    mem[512] = 'PAID'
    mem[160] = 480
    mem[544] = 10
    mem[576] = 'CHARGEABLE'
    mem[192] = 544
    mem[608] = 7
    mem[640] = 'ON_HOLD'
    mem[224] = 608
    mem[672] = 8
    mem[704] = 'CANCELED'
    mem[256] = 672
    mem[736] = 7
    mem[768] = 'EXPIRED'
    mem[288] = 736
    mem[64] = 864
    mem[800] = 9
    mem[832] = 'FINALIZED'
    mem[320] = 800
    stor0 = 8
    mem[0] = 0
    s = 0
    idx = 96
    while 352 > idx:
        _34 = mem[idx]
        _35 = mem[mem[idx]]
        mem[0] = s + sha3(mem[0])
        stor[s + sha3(mem[0])] = (2 * _35) + 1
        u = sha3(s + sha3(mem[0]))
        t = _34 + 32
        while _34 + _35 + 32 > t:
            stor[u] = mem[t]
            u = u + 1
            t = t + 32
            continue 
        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _35 + 31) >> 5)
        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while sha3(0) + stor0 > idx:
        stor[idx] = 0
        if 31 < stor[idx].length:
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    mem[1056] = 9
    mem[1088] = 'NOT_EXIST'
    mem[864] = 1056
    mem[1120] = 12
    mem[1152] = 'BEFORE_START'
    mem[896] = 1120
    mem[1184] = 6
    mem[1216] = 'ACTIVE'
    mem[928] = 1184
    mem[1248] = 8
    mem[1280] = 'SOLD_OUT'
    mem[960] = 1248
    mem[1312] = 7
    mem[1344] = 'ON_HOLD'
    mem[992] = 1312
    mem[64] = 1440
    mem[1376] = 7
    mem[1408] = 'EXPIRED'
    mem[1024] = 1376
    stor1 = 6
    mem[0] = 1
    s = 0
    idx = 864
    while 1056 > idx:
        _76 = mem[idx]
        _77 = mem[mem[idx]]
        mem[0] = s + sha3(mem[0])
        stor[s + sha3(mem[0])] = (2 * _77) + 1
        u = sha3(s + sha3(mem[0]))
        t = _76 + 32
        while _76 + _77 + 32 > t:
            stor[u] = mem[t]
            u = u + 1
            t = t + 32
            continue 
        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _77 + 31) >> 5)
        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while sha3(1) + stor1 > idx:
        stor[idx] = 0
        if 31 < stor[idx].length:
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    stor2 = 0
    stor5 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor3 = msg.sender
    stor3 = msg.sender
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor9.length]) = this.address
    return code.data[1594 len 13981]
}



// =====================  Runtime code  =====================


const VERSION = '0.2.0'


array of uint256 state;
bool stor2;
uint8 stor2;
uint256 stor2;
address owner;
address newOwner;
uint256 suspendedUntil;
mapping of uint8 stor6;
mapping of struct subscriptionStatus;
mapping of struct deposits;
array of address xrateProviders;
uint256 subscriptionCounter;
uint256 depositCounter;
address sanAddress;

function suspendedUntil() {
    return suspendedUntil
}

function subscriptions(uint256 arg1) {
    mem[576] = subscriptionStatus[arg1][10].field_0
    idx = 576
    s = 0
    while subscriptionStatus[arg1][10].length + 576 > idx + 32:
        mem[idx + 32] = subscriptionStatus[arg1][s + 10].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return subscriptionStatus[arg1].field_0, 
           subscriptionStatus[arg1].field_256,
           subscriptionStatus[arg1].field_512,
           subscriptionStatus[arg1].field_768,
           subscriptionStatus[arg1].field_768,
           subscriptionStatus[arg1].field_768,
           subscriptionStatus[arg1].field_1024,
           subscriptionStatus[arg1].field_1280,
           subscriptionStatus[arg1].field_1536,
           subscriptionStatus[arg1].field_1792,
           subscriptionStatus[arg1].field_2048,
           subscriptionStatus[arg1].field_2304,
           Array(len=subscriptionStatus[arg1][10].length, data=mem[576 len subscriptionStatus[arg1][10].length + (floor32(subscriptionStatus[arg1][10].length - 1) + -subscriptionStatus[arg1][10].length + 32 % 32)]),
           subscriptionStatus[arg1].field_2816
}

function subscriptionDetails(uint256 arg1) {
    mem[160] = subscriptionStatus[arg1][10].field_0
    idx = 160
    s = 0
    while subscriptionStatus[arg1][10].length + 128 > idx:
        mem[idx + 32] = subscriptionStatus[arg1][s + 10].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return subscriptionStatus[arg1].field_0, 
           subscriptionStatus[arg1].field_256,
           subscriptionStatus[arg1].field_512,
           subscriptionStatus[arg1].field_768,
           subscriptionStatus[arg1].field_768,
           subscriptionStatus[arg1].field_768,
           subscriptionStatus[arg1].field_1280,
           subscriptionStatus[arg1].field_1792,
           Array(len=subscriptionStatus[arg1][10].length, data=mem[160 len subscriptionStatus[arg1][10].length])
}

function state(uint256 arg1) {
    return state[0 len state.length]
}

function subscriptionStatus(uint256 arg1) {
    return subscriptionStatus[arg1].field_1536, 
           subscriptionStatus[arg1].field_2048,
           subscriptionStatus[arg1].field_2304,
           subscriptionStatus[arg1].field_1024,
           subscriptionStatus[arg1].field_2816
}

function owner() {
    return owner
}

function subscriptionCounter() {
    return subscriptionCounter
}

function deposits(uint256 arg1) {
    mem[288] = deposits[arg1][4].field_0
    idx = 288
    s = 0
    while deposits[arg1][4].length + 288 > idx + 32:
        mem[idx + 32] = deposits[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return deposits[arg1].field_0, 
           deposits[arg1].field_256,
           deposits[arg1].field_512,
           deposits[arg1].field_768,
           Array(len=deposits[arg1][4].length, data=mem[288 len deposits[arg1][4].length + (floor32(deposits[arg1][4].length - 1) + -deposits[arg1][4].length + 32 % 32)])
}

function providerRegistry(address arg1) {
    return bool(stor6[arg1])
}

function san() {
    return sanAddress
}

function newOwner() {
    return newOwner
}

function xrateProviders(uint256 arg1) {
    require arg1 < xrateProviders.length
    return address(xrateProviders[arg1])
}

function depositCounter() {
    return depositCounter
}

function getXRateProviderLength() {
    return xrateProviders.length
}

function _fallback() {
    revert
}

function isSuspended() {
    return (suspendedUntil > block.timestamp)
}

function attachToken(address arg1) {
    require not sanAddress
    sanAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function max(uint256 arg1, uint256 arg2) {
    if arg1 >= arg2:
        return arg1
    return arg2
}

function min(uint256 arg1, uint256 arg2) {
    if arg1 <= arg2:
        return arg1
    return arg2
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function suspend(uint256 arg1) {
    require owner == msg.sender
    suspendedUntil = arg1 + block.timestamp
    emit SubModuleSuspended((arg1 + block.timestamp));
}

function disableServiceProvider(address arg1, bytes arg2) {
    require suspendedUntil <= block.timestamp
    require owner == msg.sender
    stor6[address(arg1)] = 0
    emit ServiceProviderDisabled(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function updateSubscriptionOffer(uint256 arg1, uint256 arg2) {
    require suspendedUntil <= block.timestamp
    require not subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    require subscriptionStatus[arg1].field_256 == msg.sender
    subscriptionStatus[arg1].field_2304 = arg2
}

function postponeDueDate(uint256 arg1, uint256 arg2) {
    require suspendedUntil <= block.timestamp
    require subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    require subscriptionStatus[arg1].field_256 == msg.sender
    if subscriptionStatus[arg1].field_1024 < arg2:
        subscriptionStatus[arg1].field_1024 = arg2
        return 1
    require msg.sender
    require ext_code.size(msg.sender) > 0
    return 0
}

function unholdSubscriptionOffer(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require not subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require owner == msg.sender
    if subscriptionStatus[arg1].field_2816 <= 0:
        require msg.sender
        require ext_code.size(msg.sender) > 0
        return 0
    subscriptionStatus[arg1].field_2816 = 0
    emit OfferOnHold(arg1, 0, msg.sender);
    return 1
}

function holdSubscriptionOffer(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require not subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require owner == msg.sender
    if subscriptionStatus[arg1].field_2816:
        require msg.sender
        require ext_code.size(msg.sender) > 0
        return 0
    subscriptionStatus[arg1].field_2816 = block.timestamp
    emit OfferOnHold(arg1, 1, msg.sender);
    return 1
}

function cancelSubscriptionOffer(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require not subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require owner == msg.sender
    if subscriptionStatus[arg1].field_2048 <= block.timestamp:
        require msg.sender
        require ext_code.size(msg.sender) > 0
        return 0
    subscriptionStatus[arg1].field_2048 = block.timestamp
    emit OfferCanceled(arg1, msg.sender);
    return 1
}

function registerXRateProvider(address arg1) {
    require suspendedUntil <= block.timestamp
    require owner == msg.sender
    xrateProviders.length++
    if not xrateProviders.length <= xrateProviders.length + 1:
        idx = xrateProviders.length + 1
        while xrateProviders.length > idx:
            uint256(xrateProviders[idx]) = 0
            idx = idx + 1
            continue 
    address(xrateProviders[xrateProviders.length]) = arg1
    emit NewXRateProvider(address(arg1), uint16(xrateProviders.length), msg.sender);
    return uint16(xrateProviders.length)
}

function enableServiceProvider(address arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require suspendedUntil <= block.timestamp
    require owner == msg.sender
    stor6[address(arg1)] = 1
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if 0 < arg2.length:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit ServiceProviderEnabled(address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]));
}

function createDeposit(uint256 arg1, uint256 arg2, bytes arg3) {
    require suspendedUntil <= block.timestamp
    require arg1 > 0
    require ext_code.size(sanAddress)
    call sanAddress._burnForDeposit(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    depositCounter++
    deposits[stor11 + 1].field_0 = arg1
    deposits[stor11 + 1].field_256 = msg.sender
    deposits[stor11 + 1].field_512 = block.timestamp
    deposits[stor11 + 1].field_768 = arg2
    deposits[stor11 + 1][4][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit NewDeposit(depositCounter, arg1, arg2, msg.sender);
    return depositCounter
}

function paymentTo(uint256 arg1, bytes arg2, address arg3) {
    require suspendedUntil <= block.timestamp
    require ext_code.size(sanAddress)
    call sanAddress._fulfillPayment(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg3), arg1, 0, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require msg.sender
        require ext_code.size(msg.sender) > 0
        return 0
    require ext_code.size(arg3)
    call arg3.onPayment(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function paymentFrom(uint256 arg1, bytes arg2, address arg3, address arg4) {
    require suspendedUntil <= block.timestamp
    require ext_code.size(sanAddress)
    call sanAddress._fulfillPreapprovedPayment(address rg1, address rg2, uint256 rg3, address rg4) with:
         gas gas_remaining - 710 wei
        args address(arg3), address(arg4), arg1, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require msg.sender
        require ext_code.size(msg.sender) > 0
        return 0
    require ext_code.size(arg4)
    call arg4.onPayment(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining - 710 wei
        args address(arg3), arg1, Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function claimDeposit(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require deposits[arg1].field_256 == msg.sender
    if deposits[arg1].field_768:
        require deposits[arg1].field_512 + deposits[arg1].field_768 < block.timestamp
    deposits[arg1].field_0 = 0
    deposits[arg1].field_256 = 0
    deposits[arg1].field_512 = 0
    deposits[arg1].field_768 = 0
    deposits[arg1].field_1024 = 0
    if 31 < deposits[arg1][4].length:
        idx = 0
        while deposits[arg1][4].length + 31 / 32 > idx:
            deposits[arg1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    require ext_code.size(sanAddress)
    call sanAddress._mintFromDeposit(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, deposits[arg1].field_0
    require ext_call.success
    emit DepositReturned(arg1, msg.sender);
}

function cancelSubscription(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require Mask(1, 3, uint256(stor2)) <= 0
    uint8(stor2) = 8
    if subscriptionStatus[arg1].field_0 != msg.sender:
        require owner == msg.sender
    require subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if block.timestamp >= subscriptionStatus[arg1].field_1024:
        subscriptionStatus[arg1].field_2048 = block.timestamp
    else:
        subscriptionStatus[arg1].field_2048 = subscriptionStatus[arg1].field_1024
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require gas_remaining > 10000
        call subscriptionStatus[arg1].field_256 with:
           funct Mask(32, 224, sha3('onSubCanceled(uint256,address)')) >> 224
             gas gas_remaining - 10000 wei
            args arg1, msg.sender
    emit SubCanceled(arg1, msg.sender);
}

function claimSubscriptionDeposit(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    require subscriptionStatus[arg1].field_1792 <= block.timestamp
    require subscriptionStatus[arg1].field_2816 <= 0
    require subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_2048
    require block.timestamp >= subscriptionStatus[arg1].field_2048
    require subscriptionStatus[arg1].field_1536 > 0
    require subscriptionStatus[arg1].field_0 == msg.sender
    require subscriptionStatus[arg1].field_1536 > 0
    subscriptionStatus[arg1].field_1536 = 0
    require ext_code.size(sanAddress)
    call sanAddress._mintFromDeposit(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args subscriptionStatus[arg1].field_0, subscriptionStatus[arg1].field_1536
    require ext_call.success
    emit SubscriptionDepositReturned(arg1, subscriptionStatus[arg1].field_1536, subscriptionStatus[arg1].field_0, msg.sender);
}

function holdSubscription(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require Mask(1, 4, uint256(stor2)) <= 0
    uint8(stor2) = 16
    require subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require subscriptionStatus[arg1].field_0 == msg.sender
    if subscriptionStatus[arg1].field_2816:
        require msg.sender
        require ext_code.size(msg.sender) > 0
        return 0
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require ext_code.size(subscriptionStatus[arg1].field_256)
        call subscriptionStatus[arg1].field_256.onSubUnHold(uint256 rg1, address rg2, bool rg3) with:
             gas gas_remaining - 710 wei
            args arg1, msg.sender, 1
        require ext_call.success
        if not ext_call.return_data[0]:
            require msg.sender
            require ext_code.size(msg.sender) > 0
            return 0
    subscriptionStatus[arg1].field_2816 = block.timestamp
    emit SubOnHold(arg1, 1, msg.sender);
    return 1
}

function returnSubscriptionDesposit(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    require subscriptionStatus[arg1].field_1792 <= block.timestamp
    require subscriptionStatus[arg1].field_2816 <= 0
    require subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_2048
    require block.timestamp < subscriptionStatus[arg1].field_2048
    require subscriptionStatus[arg1].field_1536 > 0
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require owner == msg.sender
    subscriptionStatus[arg1].field_2048 = block.timestamp
    subscriptionStatus[arg1].field_1536 = 0
    require ext_code.size(sanAddress)
    call sanAddress._mintFromDeposit(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args subscriptionStatus[arg1].field_0, subscriptionStatus[arg1].field_1536
    require ext_call.success
    emit SubscriptionDepositReturned(arg1, subscriptionStatus[arg1].field_1536, subscriptionStatus[arg1].field_0, msg.sender);
}

function unholdSubscription(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require Mask(1, 5, uint256(stor2)) <= 0
    uint8(stor2) = 32
    require subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require subscriptionStatus[arg1].field_0 == msg.sender
    if subscriptionStatus[arg1].field_2816 <= 0:
        require msg.sender
        require ext_code.size(msg.sender) > 0
        return 0
    if subscriptionStatus[arg1].field_256 != msg.sender:
        require ext_code.size(subscriptionStatus[arg1].field_256)
        call subscriptionStatus[arg1].field_256.onSubUnHold(uint256 rg1, address rg2, bool rg3) with:
             gas gas_remaining - 710 wei
            args arg1, msg.sender, 0
        require ext_call.success
        if not ext_call.return_data[0]:
            require msg.sender
            require ext_code.size(msg.sender) > 0
            return 0
    subscriptionStatus[arg1].field_1024 = subscriptionStatus[arg1].field_1024 + block.timestamp - subscriptionStatus[arg1].field_2816
    subscriptionStatus[arg1].field_2816 = 0
    emit SubOnHold(arg1, 0, msg.sender);
    return 1
}

function cancelSubscription(uint256 arg1, uint256 arg2) {
    require suspendedUntil <= block.timestamp
    require Mask(1, 3, uint256(stor2)) <= 0
    uint8(stor2) = 8
    if subscriptionStatus[arg1].field_0 != msg.sender:
        require owner == msg.sender
    require subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if block.timestamp >= subscriptionStatus[arg1].field_1024:
        subscriptionStatus[arg1].field_2048 = block.timestamp
    else:
        subscriptionStatus[arg1].field_2048 = subscriptionStatus[arg1].field_1024
    if subscriptionStatus[arg1].field_256 != msg.sender:
        if arg2 >= 10000:
            require gas_remaining > arg2
            call subscriptionStatus[arg1].field_256 with:
               funct Mask(32, 224, sha3('onSubCanceled(uint256,address)')) >> 224
                 gas gas_remaining - arg2 wei
                args arg1, msg.sender
        else:
            require gas_remaining > 10000
            call subscriptionStatus[arg1].field_256 with:
               funct Mask(32, 224, sha3('onSubCanceled(uint256,address)')) >> 224
                 gas gas_remaining - 10000 wei
                args arg1, msg.sender
    emit SubCanceled(arg1, msg.sender);
}

function stateCode(uint256 arg1) {
    if not subscriptionStatus[arg1].field_0:
        if subscriptionStatus[arg1].field_256:
            if subscriptionStatus[arg1].field_0:
                return 0
            if not subscriptionStatus[arg1].field_256:
                return 0
            if subscriptionStatus[arg1].field_1792 > block.timestamp:
                return 1
            if subscriptionStatus[arg1].field_2816 > 0:
                return 4
            if block.timestamp > subscriptionStatus[arg1].field_2048:
                return 5
            if subscriptionStatus[arg1].field_2304 > 0:
                return 2
            return 3
        if not subscriptionStatus[arg1].field_0:
            return 0
    if not subscriptionStatus[arg1].field_256:
        return 0
    if subscriptionStatus[arg1].field_1792 > block.timestamp:
        return 1
    if subscriptionStatus[arg1].field_2816 > 0:
        return 4
    if subscriptionStatus[arg1].field_1024 < subscriptionStatus[arg1].field_2048:
        if subscriptionStatus[arg1].field_1024 > block.timestamp:
            return 2
        return 3
    if block.timestamp < subscriptionStatus[arg1].field_2048:
        return 5
    if subscriptionStatus[arg1].field_1536 > 0:
        return 6
    return 7
}

function createSubscriptionOffer(uint256 arg1, uint16 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    require Mask(1, 1, uint256(stor2)) <= 0
    uint8(stor2) = 2
    require stor6[address(msg.sender)]
    require suspendedUntil <= block.timestamp
    require arg7 < arg4
    require arg3 <= 87600 * 24 * 3600
    if not arg2:
        subscriptionCounter++
        subscriptionStatus[stor10 + 1].field_0 = 0
        subscriptionStatus[stor10 + 1].field_256 = 0
        subscriptionStatus[stor10 + 1].field_256 = msg.sender
        subscriptionStatus[stor10 + 1].field_512 = arg1
        subscriptionStatus[stor10 + 1].field_768 = 1
        subscriptionStatus[stor10 + 1].field_776 = 0
        subscriptionStatus[stor10 + 1].field_800 = 1
        subscriptionStatus[stor10 + 1].field_808 = 0
    else:
        require arg2 < xrateProviders.length
        require ext_code.size(address(xrateProviders[arg2]))
        call address(xrateProviders[arg2]).getRate() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[28 len 4] > 0
        require ext_call.return_data[60 len 4] > 0
        subscriptionCounter++
        subscriptionStatus[stor10 + 1].field_0 = 0
        subscriptionStatus[stor10 + 1].field_256 = 0
        subscriptionStatus[stor10 + 1].field_256 = msg.sender
        subscriptionStatus[stor10 + 1].field_512 = arg1
        subscriptionStatus[stor10 + 1].field_768 = uint32(ext_call.return_data[0])
        subscriptionStatus[stor10 + 1].field_800 = uint32(ext_call.return_data[32])
    subscriptionStatus[stor10 + 1].field_832 = arg2
    subscriptionStatus[stor10 + 1].field_1024 = 0
    subscriptionStatus[stor10 + 1].field_1280 = arg3
    subscriptionStatus[stor10 + 1].field_1536 = arg6
    subscriptionStatus[stor10 + 1].field_1792 = arg7
    subscriptionStatus[stor10 + 1].field_2048 = arg4
    subscriptionStatus[stor10 + 1].field_2304 = arg5
    subscriptionStatus[stor10 + 1][10][].field_0 = Array(len=arg8.length, data=arg8[all])
    subscriptionStatus[stor10 + 1].field_2816 = 0
    return subscriptionCounter
}

function createSubscription(uint256 arg1, uint256 arg2, uint256 arg3) {
    require suspendedUntil <= block.timestamp
    require Mask(1, 2, uint256(stor2)) <= 0
    uint8(stor2) = 4
    require arg3 < arg2
    require not subscriptionStatus[arg1].field_0
    require subscriptionStatus[arg1].field_256
    if subscriptionStatus[arg1].field_1792:
        require subscriptionStatus[arg1].field_1792 <= block.timestamp
    if subscriptionStatus[arg1].field_2048:
        require subscriptionStatus[arg1].field_2048 >= block.timestamp
    require not subscriptionStatus[arg1].field_2816
    require subscriptionStatus[arg1].field_2304 > 0
    subscriptionStatus[arg1].field_2304--
    subscriptionCounter++
    subscriptionStatus[stor10 + 1].field_0 = subscriptionStatus[arg1].field_0
    subscriptionStatus[stor10 + 1].field_256 = subscriptionStatus[arg1].field_256
    subscriptionStatus[stor10 + 1].field_512 = subscriptionStatus[arg1].field_512
    subscriptionStatus[stor10 + 1].field_768 = subscriptionStatus[arg1].field_768
    subscriptionStatus[stor10 + 1].field_768 = subscriptionStatus[arg1].field_768
    subscriptionStatus[stor10 + 1].field_800 = subscriptionStatus[arg1].field_800
    subscriptionStatus[stor10 + 1].field_832 = 0
    subscriptionStatus[stor10 + 1].field_768 = subscriptionStatus[arg1].field_768
    subscriptionStatus[stor10 + 1].field_800 = subscriptionStatus[arg1].field_800
    subscriptionStatus[stor10 + 1].field_832 = subscriptionStatus[arg1].field_832
    subscriptionStatus[stor10 + 1].field_848 = 0
    subscriptionStatus[stor10 + 1].field_848 = 0
    subscriptionStatus[stor10 + 1].field_1024 = subscriptionStatus[arg1].field_1024
    subscriptionStatus[stor10 + 1].field_1280 = subscriptionStatus[arg1].field_1280
    subscriptionStatus[stor10 + 1].field_1536 = subscriptionStatus[arg1].field_1536
    subscriptionStatus[stor10 + 1].field_1792 = subscriptionStatus[arg1].field_1792
    subscriptionStatus[stor10 + 1].field_2048 = subscriptionStatus[arg1].field_2048
    subscriptionStatus[stor10 + 1].field_2304 = subscriptionStatus[arg1].field_2304
    if 31 >= subscriptionStatus[arg1][10].length:
        subscriptionStatus[stor10 + 1].field_2560 = subscriptionStatus[arg1].field_2560
        idx = 0
        while subscriptionStatus[stor10 + 1][10].length + 31 / 32 > idx:
            subscriptionStatus[stor10 + 1][idx + 10].field_0 = 0
            idx = idx + 1
            continue 
    else:
        subscriptionStatus[stor10 + 1].field_2560 = Mask(255, 1, subscriptionStatus[arg1].field_2560 and (256 * not subscriptionStatus[arg1].field_2560) - 1) + 1
        if not Mask(255, 1, subscriptionStatus[arg1].field_2560 and (256 * not subscriptionStatus[arg1].field_2560) - 1):
            idx = 0
            while subscriptionStatus[stor10 + 1][10].length + 31 / 32 > idx:
                subscriptionStatus[stor10 + 1][idx + 10].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while subscriptionStatus[arg1][10].length + 31 / 32 > idx:
                subscriptionStatus[stor10 + 1][s + 10].field_0 = subscriptionStatus[arg1][idx + 10].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = subscriptionStatus[arg1][10].length + 31 / 32
            while subscriptionStatus[stor10 + 1][10].length + 31 / 32 > idx:
                subscriptionStatus[stor10 + 1][idx + 10].field_0 = 0
                idx = idx + 1
                continue 
    subscriptionStatus[stor10 + 1].field_2816 = subscriptionStatus[arg1].field_2816
    subscriptionStatus[stor10 + 1].field_0 = msg.sender
    subscriptionStatus[stor10 + 1].field_2304 = 0
    if arg3 >= block.timestamp:
        subscriptionStatus[stor10 + 1].field_1792 = arg3
        subscriptionStatus[stor10 + 1].field_1024 = arg3
    else:
        subscriptionStatus[stor10 + 1].field_1792 = block.timestamp
        subscriptionStatus[stor10 + 1].field_1024 = block.timestamp
    subscriptionStatus[stor10 + 1].field_2048 = arg2
    if subscriptionStatus[stor10 + 1].field_832 <= 0:
        require ext_code.size(sanAddress)
        call sanAddress._burnForDeposit(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, subscriptionStatus[stor10 + 1].field_1536
    else:
        require subscriptionStatus[stor10 + 1].field_832 < xrateProviders.length
        require ext_code.size(address(xrateProviders[stor7[stor10 + 1].field_832]))
        call address(xrateProviders[stor7[stor10 + 1].field_832]).getRate() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require subscriptionStatus[stor10 + 1].field_800
        require ext_call.return_data[28 len 4]
        subscriptionStatus[stor10 + 1].field_1536 = subscriptionStatus[stor10 + 1].field_1536 * subscriptionStatus[stor10 + 1].field_768 * ext_call.return_data[60 len 4] / subscriptionStatus[stor10 + 1].field_800 / ext_call.return_data[28 len 4]
        require ext_code.size(sanAddress)
        call sanAddress._burnForDeposit(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, subscriptionStatus[stor10 + 1].field_1536 * subscriptionStatus[stor10 + 1].field_768 * uint32(ext_call.return_data[32]) / subscriptionStatus[stor10 + 1].field_800 / uint32(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(subscriptionStatus[stor10 + 1].field_256)
    call subscriptionStatus[stor10 + 1].field_256.onSubNew(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args subscriptionCounter + 1, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit NewSubscription(subscriptionStatus[stor10 + 1].field_0, subscriptionStatus[stor10 + 1].field_256, arg1, subscriptionCounter + 1);
    return (subscriptionCounter + 1)
}

function executeSubscription(uint256 arg1) {
    require suspendedUntil <= block.timestamp
    require bool(stor2) <= 0
    uint8(stor2) = 1
    if subscriptionStatus[arg1].field_0 == msg.sender:
        if not subscriptionStatus[arg1].field_0:
            require msg.sender
            require ext_code.size(msg.sender) > 0
            return 0
        else:
            if subscriptionStatus[arg1].field_256:
                if subscriptionStatus[arg1].field_1792 <= block.timestamp:
                    if subscriptionStatus[arg1].field_2816 <= 0:
                        if subscriptionStatus[arg1].field_1024 < subscriptionStatus[arg1].field_2048:
                            if subscriptionStatus[arg1].field_1024 > block.timestamp:
                                require msg.sender
                                require ext_code.size(msg.sender) > 0
                                return 0
                            else:
                                if subscriptionStatus[arg1].field_832 <= 0:
                                    require ext_code.size(sanAddress)
                                    call sanAddress._fulfillPayment(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, subscriptionStatus[arg1].field_256, subscriptionStatus[arg1].field_512 * subscriptionStatus[arg1].field_1280 / 3600, arg1, msg.sender
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        require msg.sender
                                        require ext_code.size(msg.sender) > 0
                                        return 0
                                    else:
                                        if subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_1792:
                                            subscriptionStatus[arg1].field_1024 += subscriptionStatus[arg1].field_1280
                                            subscriptionStatus[arg1].field_2304++
                                            require ext_code.size(subscriptionStatus[arg1].field_256)
                                            call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 1
                                        else:
                                            subscriptionStatus[arg1].field_1024 = subscriptionStatus[arg1].field_1792 + subscriptionStatus[arg1].field_1280
                                            subscriptionStatus[arg1].field_2304++
                                            require ext_code.size(subscriptionStatus[arg1].field_256)
                                            call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 1
                                else:
                                    require subscriptionStatus[arg1].field_832 < xrateProviders.length
                                    require ext_code.size(address(xrateProviders[stor7[arg1].field_832]))
                                    call address(xrateProviders[stor7[arg1].field_832]).getRate() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require subscriptionStatus[arg1].field_800
                                    require ext_call.return_data[28 len 4]
                                    require ext_code.size(sanAddress)
                                    call sanAddress._fulfillPayment(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5) with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, subscriptionStatus[arg1].field_256, subscriptionStatus[arg1].field_512 * subscriptionStatus[arg1].field_1280 * subscriptionStatus[arg1].field_768 * uint32(ext_call.return_data[32]) / subscriptionStatus[arg1].field_800 / uint32(ext_call.return_data[0]) / 3600, arg1, msg.sender
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        require msg.sender
                                        require ext_code.size(msg.sender) > 0
                                        return 0
                                    else:
                                        if subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_1792:
                                            subscriptionStatus[arg1].field_1024 += subscriptionStatus[arg1].field_1280
                                            subscriptionStatus[arg1].field_2304++
                                            require ext_code.size(subscriptionStatus[arg1].field_256)
                                            call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 1
                                        else:
                                            subscriptionStatus[arg1].field_1024 = subscriptionStatus[arg1].field_1792 + subscriptionStatus[arg1].field_1280
                                            subscriptionStatus[arg1].field_2304++
                                            require ext_code.size(subscriptionStatus[arg1].field_256)
                                            call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 1
                        else:
                            if block.timestamp < subscriptionStatus[arg1].field_2048:
                                require msg.sender
                                require ext_code.size(msg.sender) > 0
                                return 0
                            else:
                                if subscriptionStatus[arg1].field_1536 > 0:
                                    require msg.sender
                                    require ext_code.size(msg.sender) > 0
                                    return 0
                                else:
                                    require msg.sender
                                    require ext_code.size(msg.sender) > 0
                                    return 0
                    else:
                        require msg.sender
                        require ext_code.size(msg.sender) > 0
                        return 0
                else:
                    require msg.sender
                    require ext_code.size(msg.sender) > 0
                    return 0
            else:
                require msg.sender
                require ext_code.size(msg.sender) > 0
                return 0
    else:
        if subscriptionStatus[arg1].field_256 == msg.sender:
            if not subscriptionStatus[arg1].field_0:
                require msg.sender
                require ext_code.size(msg.sender) > 0
                return 0
            else:
                if subscriptionStatus[arg1].field_256:
                    if subscriptionStatus[arg1].field_1792 <= block.timestamp:
                        if subscriptionStatus[arg1].field_2816 <= 0:
                            if subscriptionStatus[arg1].field_1024 < subscriptionStatus[arg1].field_2048:
                                if subscriptionStatus[arg1].field_1024 > block.timestamp:
                                    require msg.sender
                                    require ext_code.size(msg.sender) > 0
                                    return 0
                                else:
                                    if subscriptionStatus[arg1].field_832 <= 0:
                                        require ext_code.size(sanAddress)
                                        call sanAddress._fulfillPayment(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, subscriptionStatus[arg1].field_256, subscriptionStatus[arg1].field_512 * subscriptionStatus[arg1].field_1280 / 3600, arg1, msg.sender
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            require msg.sender
                                            require ext_code.size(msg.sender) > 0
                                            return 0
                                        else:
                                            if subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_1792:
                                                subscriptionStatus[arg1].field_1024 += subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                                            else:
                                                subscriptionStatus[arg1].field_1024 = subscriptionStatus[arg1].field_1792 + subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                                    else:
                                        require subscriptionStatus[arg1].field_832 < xrateProviders.length
                                        require ext_code.size(address(xrateProviders[stor7[arg1].field_832]))
                                        call address(xrateProviders[stor7[arg1].field_832]).getRate() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require subscriptionStatus[arg1].field_800
                                        require ext_call.return_data[28 len 4]
                                        require ext_code.size(sanAddress)
                                        call sanAddress._fulfillPayment(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, subscriptionStatus[arg1].field_256, subscriptionStatus[arg1].field_512 * subscriptionStatus[arg1].field_1280 * subscriptionStatus[arg1].field_768 * uint32(ext_call.return_data[32]) / subscriptionStatus[arg1].field_800 / uint32(ext_call.return_data[0]) / 3600, arg1, msg.sender
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            require msg.sender
                                            require ext_code.size(msg.sender) > 0
                                            return 0
                                        else:
                                            if subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_1792:
                                                subscriptionStatus[arg1].field_1024 += subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                                            else:
                                                subscriptionStatus[arg1].field_1024 = subscriptionStatus[arg1].field_1792 + subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                            else:
                                if block.timestamp < subscriptionStatus[arg1].field_2048:
                                    require msg.sender
                                    require ext_code.size(msg.sender) > 0
                                    return 0
                                else:
                                    if subscriptionStatus[arg1].field_1536 > 0:
                                        require msg.sender
                                        require ext_code.size(msg.sender) > 0
                                        return 0
                                    else:
                                        require msg.sender
                                        require ext_code.size(msg.sender) > 0
                                        return 0
                        else:
                            require msg.sender
                            require ext_code.size(msg.sender) > 0
                            return 0
                    else:
                        require msg.sender
                        require ext_code.size(msg.sender) > 0
                        return 0
                else:
                    require msg.sender
                    require ext_code.size(msg.sender) > 0
                    return 0
        else:
            require owner == msg.sender
            if not subscriptionStatus[arg1].field_0:
                require msg.sender
                require ext_code.size(msg.sender) > 0
                return 0
            else:
                if subscriptionStatus[arg1].field_256:
                    if subscriptionStatus[arg1].field_1792 <= block.timestamp:
                        if subscriptionStatus[arg1].field_2816 <= 0:
                            if subscriptionStatus[arg1].field_1024 < subscriptionStatus[arg1].field_2048:
                                if subscriptionStatus[arg1].field_1024 > block.timestamp:
                                    require msg.sender
                                    require ext_code.size(msg.sender) > 0
                                    return 0
                                else:
                                    if subscriptionStatus[arg1].field_832 <= 0:
                                        require ext_code.size(sanAddress)
                                        call sanAddress._fulfillPayment(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, subscriptionStatus[arg1].field_256, subscriptionStatus[arg1].field_512 * subscriptionStatus[arg1].field_1280 / 3600, arg1, msg.sender
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            require msg.sender
                                            require ext_code.size(msg.sender) > 0
                                            return 0
                                        else:
                                            if subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_1792:
                                                subscriptionStatus[arg1].field_1024 += subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                                            else:
                                                subscriptionStatus[arg1].field_1024 = subscriptionStatus[arg1].field_1792 + subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                                    else:
                                        require subscriptionStatus[arg1].field_832 < xrateProviders.length
                                        require ext_code.size(address(xrateProviders[stor7[arg1].field_832]))
                                        call address(xrateProviders[stor7[arg1].field_832]).getRate() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require subscriptionStatus[arg1].field_800
                                        require ext_call.return_data[28 len 4]
                                        require ext_code.size(sanAddress)
                                        call sanAddress._fulfillPayment(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5) with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, subscriptionStatus[arg1].field_256, subscriptionStatus[arg1].field_512 * subscriptionStatus[arg1].field_1280 * subscriptionStatus[arg1].field_768 * uint32(ext_call.return_data[32]) / subscriptionStatus[arg1].field_800 / uint32(ext_call.return_data[0]) / 3600, arg1, msg.sender
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            require msg.sender
                                            require ext_code.size(msg.sender) > 0
                                            return 0
                                        else:
                                            if subscriptionStatus[arg1].field_1024 >= subscriptionStatus[arg1].field_1792:
                                                subscriptionStatus[arg1].field_1024 += subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                                            else:
                                                subscriptionStatus[arg1].field_1024 = subscriptionStatus[arg1].field_1792 + subscriptionStatus[arg1].field_1280
                                                subscriptionStatus[arg1].field_2304++
                                                require ext_code.size(subscriptionStatus[arg1].field_256)
                                                call subscriptionStatus[arg1].field_256.onSubExecuted(uint256 rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 1
                            else:
                                if block.timestamp < subscriptionStatus[arg1].field_2048:
                                    require msg.sender
                                    require ext_code.size(msg.sender) > 0
                                    return 0
                                else:
                                    if subscriptionStatus[arg1].field_1536 > 0:
                                        require msg.sender
                                        require ext_code.size(msg.sender) > 0
                                        return 0
                                    else:
                                        require msg.sender
                                        require ext_code.size(msg.sender) > 0
                                        return 0
                        else:
                            require msg.sender
                            require ext_code.size(msg.sender) > 0
                            return 0
                    else:
                        require msg.sender
                        require ext_code.size(msg.sender) > 0
                        return 0
                else:
                    require msg.sender
                    require ext_code.size(msg.sender) > 0
                    return 0
}



}
