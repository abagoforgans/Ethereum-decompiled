contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 1990]
}



// =====================  Runtime code  =====================


const PURCHASE_AMOUNT_UNIT = 'ETH'


address owner;
array of struct earlyPurchases;
uint256 earlyPurchaseClosedAt;
address zenOSCrowdsaleAddress;

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

function owner() {
    return owner
}

function zenOSCrowdsale() {
    return zenOSCrowdsaleAddress
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
    if zenOSCrowdsaleAddress:
        return 0
    zenOSCrowdsaleAddress = arg1
    return 1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
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
    if zenOSCrowdsaleAddress:
        require ext_code.size(zenOSCrowdsaleAddress)
        call zenOSCrowdsaleAddress.0x5bfdb8b2 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= 0
    require earlyPurchaseClosedAt <= 0
    require block.timestamp
    require block.timestamp <= block.timestamp
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
}

function totalAmountOfEarlyPurchases() {
    idx = 0
    s = 0
    while idx < earlyPurchases.length:
        mem[0] = 1
        idx = idx + 1
        s = s + earlyPurchases[idx].field_256
        continue 
    return (s * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length * earlyPurchases.length)
}



}
