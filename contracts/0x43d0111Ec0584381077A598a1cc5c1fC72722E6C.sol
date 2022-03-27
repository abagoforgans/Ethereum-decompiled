contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    require msg.value <= 0
    stor1 = msg.sender
    return code.data[69 len 2075]
}



// =====================  Runtime code  =====================


const PURCHASE_AMOUNT_CAP = (2500 * 3600)

const PURCHASE_AMOUNT_RATE_REFERENCE = Array(len=33, data='http://www.xe.com/currencytables', uint8('/'))

const PURCHASE_AMOUNT_UNIT = 'CNY'


address starbaseCrowdsaleAddress;
address owner;
array of struct earlyPurchases;
uint256 earlyPurchaseClosedAt;

function earlyPurchases(uint256 arg1) {
    require arg1 < earlyPurchases.length
    return earlyPurchases[arg1].field_0, earlyPurchases[arg1].field_256, earlyPurchases[arg1].field_512
}

function earlyPurchaseClosedAt() {
    return earlyPurchaseClosedAt
}

function numberOfEarlyPurchases() {
    require msg.value <= 0
    return earlyPurchases.length
}

function starbaseCrowdsale() {
    return starbaseCrowdsaleAddress
}

function owner() {
    return owner
}

function _fallback() {
    revert 
}

function closeEarlyPurchase() {
    require msg.value <= 0
    require owner == msg.sender
    earlyPurchaseClosedAt = block.timestamp
    return 0
}

function setup(address arg1) {
    require msg.value <= 0
    require owner == msg.sender
    if starbaseCrowdsaleAddress:
        return 0
    starbaseCrowdsaleAddress = arg1
    return 1
}

function purchasedAmountBy(address arg1) {
    require msg.value <= 0
    idx = 0
    s = 0
    while idx < earlyPurchases.length:
        mem[0] = 2
        if earlyPurchases[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < earlyPurchases.length
        mem[0] = 2
        idx = idx + 1
        s = s + earlyPurchases[idx].field_256
        continue 
    return s
}

function totalAmountOfEarlyPurchases() {
    require msg.value <= 0
    idx = 0
    s = 0
    while idx < earlyPurchases.length:
        mem[0] = 2
        idx = idx + 1
        s = s + earlyPurchases[idx].field_256
        continue 
    return (s * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length)
}

function appendEarlyPurchase(address arg1, uint256 arg2, uint256 arg3) {
    require msg.value <= 0
    require owner == msg.sender
    if starbaseCrowdsaleAddress:
        require ext_code.size(starbaseCrowdsaleAddress)
        call starbaseCrowdsaleAddress.startDate() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[0] <= 0
    require earlyPurchaseClosedAt <= 0
    if not arg2:
        return 0
    require msg.value <= 0
    idx = 0
    s = 0
    while idx < earlyPurchases.length:
        mem[0] = 2
        idx = idx + 1
        s = s + earlyPurchases[idx].field_256
        continue 
    if (s * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length) + arg2 > 2500 * 3600:
        return 0
    require arg3
    require arg3 <= block.timestamp
    earlyPurchases.length++
    if not earlyPurchases.length <= earlyPurchases.length + 1:
        idx = (3 * earlyPurchases.length) + 3
        while 3 * earlyPurchases.length > idx:
            earlyPurchases[idx].field_0 = 0
            earlyPurchases[idx].field_256 = 0
            earlyPurchases[idx].field_512 = 0
            idx = idx + 3
            continue 
    earlyPurchases[earlyPurchases.length].field_0 = arg1
    earlyPurchases[earlyPurchases.length].field_256 = arg2
    earlyPurchases[earlyPurchases.length].field_512 = arg3
    return 1
}



}
