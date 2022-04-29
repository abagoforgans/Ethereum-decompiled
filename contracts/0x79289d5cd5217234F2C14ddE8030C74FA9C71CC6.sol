contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint128 stor6; offset 160
address stor6;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 1
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[3307 len 32]
    stor4 = code.data[3307 len 32] + (792 * 24 * 3600)
    stor2 = code.data[3339 len 32]
    address(stor6.field_0) = code.data[3383 len 20]
    return code.data[261 len 3046]
}



// =====================  Runtime code  =====================


const MAX_TOKENS_SOLD = 500000000 * 10^18

const TOKEN_UNIT = 10^18


address owner;
uint256 ethRaised;
uint256 price;
uint256 sub_aa9d52d1;
uint256 deadline;
uint256 startTime;
uint8 stor6; offset 160
uint128 stor6; offset 160
address sub_7668a75fAddress;

function deadline() {
    return deadline
}

function sub_7668a75f(?) {
    return sub_7668a75fAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function price() {
    return price
}

function sub_aa9d52d1(?) {
    return sub_aa9d52d1
}

function ethRaised() {
    return ethRaised
}

function closeSale() {
    require msg.sender == owner
    Mask(96, 0, stor6.field_160) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setPrices(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    price = arg1
}

function setStartTime(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    startTime = arg1
    deadline = arg2
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp > startTime
    require block.timestamp < deadline
    require sub_aa9d52d1 < 500000000 * 10^18
    require uint8(stor6.field_160)
    if msg.value:
        require msg.value
        require msg.value * price / msg.value == price
    require ext_code.size(sub_7668a75fAddress)
    call sub_7668a75fAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * price
    require ext_call.success
    require ethRaised + msg.value >= ethRaised
    ethRaised += msg.value
    require sub_aa9d52d1 + (msg.value * price) >= sub_aa9d52d1
    sub_aa9d52d1 += msg.value * price
    emit 0x67f83e4e: msg.sender, msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
