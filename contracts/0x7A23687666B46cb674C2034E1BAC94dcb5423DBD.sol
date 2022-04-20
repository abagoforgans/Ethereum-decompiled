contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() {
    stor1 = msg.sender
    stor2 = msg.sender
    stor3 = msg.sender
    stor4 = msg.sender
    return code.data[96 len 5735]
}



// =====================  Runtime code  =====================


uint256 charityCount;
address owner;
address managerAddress;
address tokenAddress;
address operatorFeeAcctAddress;
array of struct charities;
uint8 stor6;

function operatorFeeAcct() {
    return operatorFeeAcctAddress
}

function manager() {
    return managerAddress
}

function owner() {
    return owner
}

function charityCount() {
    return charityCount
}

function isLocked() {
    return bool(stor6)
}

function charities(uint256 arg1) {
    mem[544] = charities[arg1][12].field_0
    idx = 544
    s = 0
    while charities[arg1][12].length + 544 > idx + 32:
        mem[idx + 32] = charities[arg1][s + 12].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return charities[arg1].field_0, 
           charities[arg1].field_256,
           charities[arg1].field_512,
           charities[arg1].field_768,
           charities[arg1].field_1024,
           charities[arg1].field_1280,
           charities[arg1].field_1536,
           charities[arg1].field_1792,
           charities[arg1].field_2048,
           charities[arg1].field_2304,
           charities[arg1].field_2560,
           charities[arg1].field_2816,
           Array(len=charities[arg1][12].length, data=mem[544 len charities[arg1][12].length + (floor32(charities[arg1][12].length - 1) + -charities[arg1][12].length + 32 % 32)])
}

function token() {
    return tokenAddress
}

function haraKiri() {
    require owner == msg.sender
    require not stor6
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function lock() {
    require owner == msg.sender
    stor6 = 1
}

function setOperatorFeeAcct(address arg1) {
    require owner == msg.sender
    operatorFeeAcctAddress = arg1
}

function setToken(address arg1) {
    require owner == msg.sender
    require not stor6
    tokenAddress = arg1
}

function deleteManager() {
    if owner != msg.sender:
        require managerAddress == msg.sender
    managerAddress = owner
}

function setManager(address arg1) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    managerAddress = arg1
}

function fiatCollected(uint256 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require arg1 < charityCount
    charities[stor0].field_0 += arg2
    charities[stor0].field_512 += arg2
    emit FiatCollectedEvent(arg2, arg3, arg1);
}

function fiatDelivered(uint256 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require arg1 < charityCount
    require charities[arg1].field_256 >= arg2
    charities[arg1].field_256 -= arg2
    charities[stor0].field_768 += arg2
    emit FiatDeliveredEvent(arg2, arg3, arg1);
}

function addCharity(string arg1, uint8 arg2) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    charities[stor0][12][].field_0 = Array(len=arg1.length, data=arg1[all])
    charities[stor0].field_2816 = arg2
    emit CharityAddedEvent(Array(len=arg1.length, data=arg1[all]), arg2 << 248, charityCount);
    charityCount++
}

function modifyCharity(uint256 arg1, string arg2, uint8 arg3) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require arg1 < charityCount
    charities[stor0][12][].field_0 = Array(len=arg2.length, data=arg2[all])
    charities[stor0].field_2816 = arg3
    emit CharityModifiedEvent(Array(len=arg2.length, data=arg2[all]), arg3 << 248, arg1);
}

function ethToFiat(uint256 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require arg1 < charityCount
    require charities[arg1].field_1536 >= arg2
    charities[stor0].field_2560 += arg3
    charities[stor0].field_2304 += arg2
    charities[stor0].field_1536 -= arg2
    charities[stor0].field_256 += arg3
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EthToFiatEvent(arg2, arg3, arg1);
}

function ethToFiatDelivered(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require arg1 < charityCount
    require charities[arg1].field_1536 >= arg2
    charities[stor0].field_2560 += arg3
    charities[stor0].field_2304 += arg2
    charities[stor0].field_1536 -= arg2
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EthToFiatEvent(arg2, arg3, arg1);
    charities[stor0].field_768 += arg3
    emit FiatDeliveredEvent(arg3, arg4, arg1);
}

function ethDonation(uint256 arg1) payable {
    require tokenAddress
    require arg1 < charityCount
    call operatorFeeAcctAddress with:
       value 3 * msg.value / 200 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call tokenAddress with:
       value msg.value / 200 wei
         gas 2300 * is_zero(value) wei
    charities[stor0].field_1024 = msg.value - (3 * msg.value / 200) - (msg.value / 200) + charities[stor0].field_1024
    charities[stor0].field_1536 = msg.value - (3 * msg.value / 200) - (msg.value / 200) + charities[stor0].field_1536
    charities[stor0].field_1280 = msg.value - (3 * msg.value / 200) - (msg.value / 200) + charities[stor0].field_1280
    emit EthDonationEvent(msg.value, arg1);
}

function fiatToEth(uint256 arg1, uint256 arg2) payable {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require tokenAddress
    require arg1 < charityCount
    charities[stor0].field_2048 += arg2
    charities[stor0].field_1792 += msg.value
    charities[stor0].field_0 -= arg2
    call operatorFeeAcctAddress with:
       value 16 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call tokenAddress with:
       value 4 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    charities[stor0].field_1536 = msg.value - (16 * msg.value / 100) - (4 * msg.value / 100) + charities[stor0].field_1536
    charities[stor0].field_1280 = msg.value - (16 * msg.value / 100) - (4 * msg.value / 100) + charities[stor0].field_1280
    emit FiatToEthEvent(arg2, msg.value, arg1);
}

function fiatCollectedToEth(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require tokenAddress
    require arg1 < charityCount
    charities[stor0].field_512 += arg2
    charities[stor0].field_2048 += arg2
    charities[stor0].field_1792 += msg.value
    call operatorFeeAcctAddress with:
       value 16 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call tokenAddress with:
       value 4 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    charities[stor0].field_1536 = msg.value - (16 * msg.value / 100) - (4 * msg.value / 100) + charities[stor0].field_1536
    charities[stor0].field_1280 = msg.value - (16 * msg.value / 100) - (4 * msg.value / 100) + charities[stor0].field_1280
    emit FiatCollectedEvent(arg2, arg3, arg1);
    emit FiatToEthEvent(arg2, msg.value, arg1);
}

function quickAuditFiatDelivered(uint256 arg1) {
    require arg1 < charityCount
    if not charities[stor0].field_2304:
        return 1000 * charities[stor0].field_1280, 
               charities[stor0].field_1536 / 10^15,
               (1000 * charities[stor0].field_1280) - (charities[stor0].field_1536 / 10^15),
               0,
               0,
               charities[arg1].field_256,
               -charities[arg1].field_256,
               charities[stor0].field_768,
               -charities[arg1].field_256 - charities[stor0].field_768
    require charities[stor0].field_2304
    return 1000 * charities[stor0].field_1280, 
           charities[stor0].field_1536 / 10^15,
           (1000 * charities[stor0].field_1280) - (charities[stor0].field_1536 / 10^15),
           10^18 * charities[stor0].field_2560 / charities[stor0].field_2304,
           (1000 * charities[stor0].field_1280 * 10^18 * charities[stor0].field_2560 / charities[stor0].field_2304) - (charities[stor0].field_1536 / 10^15 * 10^18 * charities[stor0].field_2560 / charities[stor0].field_2304) / 1000,
           charities[arg1].field_256,
           ((1000 * charities[stor0].field_1280 * 10^18 * charities[stor0].field_2560 / charities[stor0].field_2304) - (charities[stor0].field_1536 / 10^15 * 10^18 * charities[stor0].field_2560 / charities[stor0].field_2304) / 1000) - charities[arg1].field_256,
           charities[stor0].field_768,
           ((1000 * charities[stor0].field_1280 * 10^18 * charities[stor0].field_2560 / charities[stor0].field_2304) - (charities[stor0].field_1536 / 10^15 * 10^18 * charities[stor0].field_2560 / charities[stor0].field_2304) / 1000) - charities[arg1].field_256 - charities[stor0].field_768
}

function quickAuditEthCredited(uint256 arg1) {
    require arg1 < charityCount
    if not charities[stor0].field_1792:
        return charities[stor0].field_512, 
               charities[stor0].field_0,
               charities[stor0].field_512 - charities[stor0].field_0,
               0,
               0,
               0,
               charities[stor0].field_1024 / 10^15,
               98 * charities[stor0].field_1024 / 10^15 / 100,
               98 * charities[stor0].field_1024 / 10^15 / 100,
               (98 * charities[stor0].field_1024 / 10^15 / 100) - (1000 * charities[stor0].field_1280)
    require charities[stor0].field_1792
    require 10^18 * charities[stor0].field_2048 / charities[stor0].field_1792
    return charities[stor0].field_512, 
           charities[stor0].field_0,
           charities[stor0].field_512 - charities[stor0].field_0,
           10^18 * charities[stor0].field_2048 / charities[stor0].field_1792,
           (1000 * charities[stor0].field_512) - (1000 * charities[stor0].field_0) / 10^18 * charities[stor0].field_2048 / charities[stor0].field_1792,
           8 * (1000 * charities[stor0].field_512) - (1000 * charities[stor0].field_0) / 10^18 * charities[stor0].field_2048 / charities[stor0].field_1792 / 10,
           charities[stor0].field_1024 / 10^15,
           98 * charities[stor0].field_1024 / 10^15 / 100,
           (8 * (1000 * charities[stor0].field_512) - (1000 * charities[stor0].field_0) / 10^18 * charities[stor0].field_2048 / charities[stor0].field_1792 / 10) + (98 * charities[stor0].field_1024 / 10^15 / 100),
           (8 * (1000 * charities[stor0].field_512) - (1000 * charities[stor0].field_0) / 10^18 * charities[stor0].field_2048 / charities[stor0].field_1792 / 10) + (98 * charities[stor0].field_1024 / 10^15 / 100) - (1000 * charities[stor0].field_1280)
}



}
