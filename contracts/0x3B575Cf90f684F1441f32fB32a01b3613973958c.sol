contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 2475]
}



// =====================  Runtime code  =====================


const WEI_MINIMUM_PURCHASE = 10 * 10^18

const ENDING_TIME = 1504785599

const STARTING_TIME = (417780 * 3600)

const WEI_MAXIMUM_EARLYPURCHASE = 7000 * 10^18

const PURCHASE_AMOUNT_UNIT = 'ETH'


address owner;
array of struct earlyPurchases;
uint256 earlyPurchaseClosedAt;
uint256 totalEarlyPurchaseRaised;
address sycCrowdsaleAddress;

function earlyPurchases(uint256 arg1) {
    require arg1 < earlyPurchases.length
    return earlyPurchases[arg1].field_0, earlyPurchases[arg1].field_256, earlyPurchases[arg1].field_512
}

function earlyPurchaseClosedAt() {
    return earlyPurchaseClosedAt
}

function numberOfEarlyPurchases() {
    return earlyPurchases.length
}

function totalEarlyPurchaseRaised() {
    return totalEarlyPurchaseRaised
}

function owner() {
    return owner
}

function sycCrowdsale() {
    return sycCrowdsaleAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function closeEarlyPurchase() {
    require owner == msg.sender
    earlyPurchaseClosedAt = block.timestamp
    return 0
}

function setup(address arg1) {
    require owner == msg.sender
    if arg1:
        return 0
    sycCrowdsaleAddress = arg1
    return 1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawAll() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function purchasedAmountBy(address arg1) {
    idx = 0
    s = 0
    while idx < earlyPurchases.length:
        mem[0] = 1
        if earlyPurchases[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < earlyPurchases.length
        mem[0] = 1
        idx = idx + 1
        s = s + earlyPurchases[idx].field_256
        continue 
    return s
}

function _fallback() payable {
    require msg.value >= 10 * 10^18
    if earlyPurchaseClosedAt > 0:
        if block.timestamp >= 417780 * 3600:
            require block.timestamp > 1504785599
    require block.timestamp
    require block.timestamp <= block.timestamp
    if msg.value + totalEarlyPurchaseRaised < 7000 * 10^18:
        earlyPurchases.length++
        if not earlyPurchases.length <= earlyPurchases.length + 1:
            idx = (3 * earlyPurchases.length) + 3
            while 3 * earlyPurchases.length > idx:
                earlyPurchases[idx].field_0 = 0
                earlyPurchases[idx].field_256 = 0
                earlyPurchases[idx].field_512 = 0
                idx = idx + 3
                continue 
        earlyPurchases[earlyPurchases.length].field_0 = msg.sender
        earlyPurchases[earlyPurchases.length].field_256 = msg.value
        earlyPurchases[earlyPurchases.length].field_512 = block.timestamp
        totalEarlyPurchaseRaised += msg.value
        if totalEarlyPurchaseRaised >= 7000 * 10^18:
            earlyPurchaseClosedAt = block.timestamp
        else:
            if block.timestamp >= 1504785599:
                earlyPurchaseClosedAt = block.timestamp
    else:
        call msg.sender with:
           value totalEarlyPurchaseRaised + msg.value - 7000 * 10^18 wei
             gas 2300 * is_zero(value) wei
        earlyPurchases.length++
        if not earlyPurchases.length <= earlyPurchases.length + 1:
            idx = (3 * earlyPurchases.length) + 3
            while 3 * earlyPurchases.length > idx:
                earlyPurchases[idx].field_0 = 0
                earlyPurchases[idx].field_256 = 0
                earlyPurchases[idx].field_512 = 0
                idx = idx + 3
                continue 
        earlyPurchases[earlyPurchases.length].field_0 = msg.sender
        earlyPurchases[earlyPurchases.length].field_256 = -totalEarlyPurchaseRaised + 7000 * 10^18
        earlyPurchases[earlyPurchases.length].field_512 = block.timestamp
        totalEarlyPurchaseRaised = 7000 * 10^18
        if totalEarlyPurchaseRaised >= 7000 * 10^18:
            earlyPurchaseClosedAt = block.timestamp
        else:
            if block.timestamp >= 1504785599:
                earlyPurchaseClosedAt = block.timestamp
}



}
