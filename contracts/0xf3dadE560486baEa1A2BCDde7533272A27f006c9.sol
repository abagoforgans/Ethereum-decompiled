contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() {
    stor0 = msg.sender
    stor7 = code.data[4854 len 20]
    stor8 = 1
    stor9 = 416232 * 24 * 3600
    stor10 = 417240 * 24 * 3600
    stor2 = 0
    stor1 = 0
    stor3 = 0
    stor9 = block.timestamp + 1800
    stor10 = block.timestamp + 3629000
    return code.data[163 len 4679]
}



// =====================  Runtime code  =====================


#
#  - sub_3fe6ea3f(?)
#  - invest()
#
const getTime = block.timestamp

const sub_c7a49b8b(?) = 1


address owner;
address walletAddress;
address collectorAddress;
address supplierAddress;
uint256 payments;
mapping of struct investment;
array of address investors;
address tokenAddress;
uint256 sub_64a2a84c;
uint256 sub_a1168e1e;
uint256 sub_f9a1fb14;

function ICOStartTime() {
    return sub_a1168e1e
}

function getInvestment(address arg1) {
    return investment[address(arg1)].field_256
}

function supplier() {
    return supplierAddress
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return investors[arg1]
}

function wallet() {
    return walletAddress
}

function sub_64a2a84c(?) {
    return sub_64a2a84c
}

function owner() {
    return owner
}

function collector() {
    return collectorAddress
}

function sub_9674352d(?) {
    return investment[address(arg1)].field_768
}

function investments(address arg1) {
    return investment[arg1].field_0, 
           investment[arg1].field_256,
           investment[arg1].field_512,
           investment[arg1].field_768,
           investment[arg1].field_1024
}

function sub_a1168e1e(?) {
    return sub_a1168e1e
}

function ICOEndTime() {
    return sub_f9a1fb14
}

function payments() {
    return payments
}

function sub_cf348502(?) {
    return investment[address(arg1)].field_512
}

function sub_d861b91b(?) {
    return investors.length
}

function sub_f9a1fb14(?) {
    return sub_f9a1fb14
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isPresale() {
    return (block.timestamp < sub_a1168e1e)
}

function sub_79696f41(?) {
    return block.timestamp >= sub_f9a1fb14
}

function setWallet(address arg1) {
    if owner != msg.sender:
        return 0
    walletAddress = arg1
    return 1
}

function setSupplier(address arg1) {
    if owner != msg.sender:
        return 0
    supplierAddress = arg1
    return 1
}

function sub_8d30f084(?) {
    sub_a1168e1e = arg1 + block.timestamp
    sub_f9a1fb14 = arg1 + block.timestamp + (1008 * 24 * 3600)
}

function sub_e083e326(?) {
    if supplierAddress != msg.sender:
        return 0
    if not arg1:
        return 0
    sub_64a2a84c = arg1
    return 1
}

function isICORunning() {
    if block.timestamp < sub_a1168e1e:
        return block.timestamp >= sub_a1168e1e
    return (block.timestamp < sub_f9a1fb14)
}

function acceptPayment() payable {
    require block.timestamp < sub_f9a1fb14
    payments += msg.value
    emit 0xb293a677: msg.value, msg.sender
    return 1
}

function setCollector(address arg1) {
    if owner != msg.sender:
        return 0
    if collectorAddress:
        return 0
    collectorAddress = arg1
    return 1
}

function getTokenBalance(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_30c30685(?) {
    if collectorAddress != msg.sender:
        return 0
    if arg1 > eth.balance(this.address):
        return 0
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    return 1
}

function sub_6aae11c3(?) {
    if block.timestamp < sub_a1168e1e:
        return 135
    if sub_a1168e1e + 3600 > block.timestamp:
        return 135
    if sub_a1168e1e + (24 * 3600) > block.timestamp:
        return 125
    if sub_a1168e1e + (168 * 24 * 3600) > block.timestamp:
        return 120
    if sub_a1168e1e + (720 * 24 * 3600) <= block.timestamp:
        return 100
    return 110
}

function processInvestment(address arg1, uint256 arg2, address arg3) {
    require block.timestamp < sub_f9a1fb14
    if walletAddress != msg.sender:
        return 0
    emit 0x4ed19aa0: arg2, arg3, arg1
    require ext_code.size(arg1)
    call arg1.0x3fe6ea3f with:
       value arg2 wei
         gas gas_remaining - 9710 wei
        args arg3
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32]
}



}
