contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor6;
uint8 stor17;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor3 = msg.sender
    stor17 = 0
    return code.data[74 len 9283]
}



// =====================  Runtime code  =====================


#
#  - ownerDepositInterest()
#
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address contractAddress;
uint256 minInvestInWei;
uint256 tokenExchangeRateInWei;
uint256 startBlock;
uint256 endBlock;
uint256 maxTokenSupply;
uint256 initializedTime;
uint256 financingPeriod;
uint256 tokenLockoutPeriod;
uint256 tokenMaturityPeriod;
uint8 stor17;
uint8 stor17; offset 8
uint256 finalizedBlock;
uint256 finalizedTime;
uint256 finalizedCapital;
uint256 interestRate;
uint256 sub_7c877709;
uint256 sub_d0d7b14c;
array of struct exchangeRateArray;
uint256 nextExchangeRateIndex;
array of uint256 interestArray;
mapping of struct payees;
array of address payeeArray;
uint256 nextPayeeIndex;
array of uint256 assetArray;

function tokenExchangeRateInWei() {
    return tokenExchangeRateInWei
}

function name() {
    return uint256(name[0 len name.length])
}

function endBlock() {
    return endBlock
}

function nextPayeeIndex() {
    return nextPayeeIndex
}

function initialized() {
    return bool(uint8(stor17.field_8))
}

function totalSupply() {
    return totalSupply
}

function tokenLockoutPeriod() {
    return tokenLockoutPeriod
}

function payees(address arg1) {
    return bool(uint8(payees[arg1].field_0)), bool(uint8(payees[arg1].field_8)), payees[arg1].field_256
}

function decimals() {
    return decimals
}

function payeeArray(uint256 arg1) {
    require arg1 < payeeArray.length
    return address(payeeArray[arg1])
}

function interestArray(uint256 arg1) {
    require arg1 < interestArray.length
    return interestArray[arg1]
}

function exchangeRateArray(uint256 arg1) {
    require arg1 < exchangeRateArray.length
    return exchangeRateArray[arg1].field_0, exchangeRateArray[arg1].field_256
}

function finalizedBlock() {
    return finalizedBlock
}

function startBlock() {
    return startBlock
}

function maxTokenSupply() {
    return maxTokenSupply
}

function paused() {
    return bool(uint8(stor17.field_0))
}

function finalizedCapital() {
    return finalizedCapital
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function interestRate() {
    return interestRate
}

function sub_7c877709(?) {
    return sub_7c877709
}

function owner() {
    return owner
}

function symbol() {
    return uint256(symbol[0 len symbol.length])
}

function getAssetCount() {
    return assetArray.length
}

function nextExchangeRateIndex() {
    return nextExchangeRateIndex
}

function financingPeriod() {
    return financingPeriod
}

function tokenMaturityPeriod() {
    return tokenMaturityPeriod
}

function sub_d0d7b14c(?) {
    return sub_d0d7b14c
}

function interestOf(address arg1) {
    require 1 == bool(uint8(stor17.field_8))
    require 1 == bool(uint8(payees[address(arg1)].field_0))
    return payees[address(arg1)].field_256
}

function getPayeeCount() {
    return payeeArray.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function minInvestInWei() {
    return minInvestInWei
}

function assetArray(uint256 arg1) {
    return assetArray[arg1][0 len assetArray[arg1].length]
}

function getInterestCount() {
    return interestArray.length
}

function contractAddress() {
    return contractAddress
}

function initializedTime() {
    return initializedTime
}

function finalizedTime() {
    return finalizedTime
}

function ownerPauseContract() {
    require owner == msg.sender
    uint8(stor17.field_0) = 1
}

function ownerResumeContract() {
    require owner == msg.sender
    uint8(stor17.field_0) = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function ownerEnablePayee(address arg1) {
    require owner == msg.sender
    uint8(payees[address(arg1)].field_8) = 1
}

function ownerDisablePayee(address arg1) {
    require owner == msg.sender
    require owner != arg1
    uint8(payees[address(arg1)].field_8) = 0
}

function ownerPutCapital() payable {
    require 1 == bool(uint8(stor17.field_8))
    require 1 == bool(uint8(stor17.field_0))
    require owner == msg.sender
    require msg.value > 0
    finalizedCapital = msg.value
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function ownerWithdraw() payable {
    require 1 == bool(uint8(stor17.field_8))
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require 1 == bool(uint8(stor17.field_8))
    require block.number >= startBlock
    if owner != msg.sender:
        require block.number > endBlock
    finalizedBlock = block.number
    finalizedTime = block.timestamp
    emit Finalized()
}

function ownerPutInterest(uint256 arg1) payable {
    require 1 == bool(uint8(stor17.field_8))
    require 1 == bool(uint8(stor17.field_0))
    require owner == msg.sender
    require arg1 == interestArray.length + 1
    interestArray.length++
    if not interestArray.length <= interestArray.length + 1:
        idx = interestArray.length + 1
        while interestArray.length > idx:
            interestArray[idx] = 0
            idx = idx + 1
            continue 
    interestArray[interestArray.length] = msg.value
}

function ownerSetExchangeRateInWei(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    exchangeRateArray.length++
    if not exchangeRateArray.length <= exchangeRateArray.length + 1:
        idx = 2 * exchangeRateArray.length + 1
        while 2 * exchangeRateArray.length > idx:
            exchangeRateArray[idx].field_0 = 0
            exchangeRateArray[idx].field_256 = 0
            idx = idx + 2
            continue 
    exchangeRateArray[exchangeRateArray.length].field_0 = block.number
    exchangeRateArray[exchangeRateArray.length].field_256 = arg1
    nextExchangeRateIndex = exchangeRateArray.length
}

function payeeWithdrawInterest(uint256 arg1) payable {
    require 1 == bool(uint8(payees[address(msg.sender)].field_8))
    require 1 == bool(uint8(stor17.field_8))
    require block.timestamp > initializedTime + financingPeriod + tokenLockoutPeriod
    require not msg.value
    require 1 == bool(uint8(payees[address(msg.sender)].field_8))
    require arg1 <= payees[address(msg.sender)].field_256
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    payees[address(msg.sender)].field_256 -= arg1
    emit PayeeWithdrawInterest(msg.sender, arg1, payees[address(msg.sender)].field_256 - arg1);
}

function payeeWithdrawCapital() payable {
    require 1 == bool(uint8(payees[address(msg.sender)].field_8))
    require 1 == bool(uint8(stor17.field_0))
    require 1 == bool(uint8(stor17.field_8))
    require block.timestamp > initializedTime + financingPeriod + tokenMaturityPeriod
    require not msg.value
    require balanceOf[address(msg.sender)] > 0
    require totalSupply > 0
    require totalSupply
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value finalizedCapital * balanceOf[address(msg.sender)] / totalSupply wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit PayeeWithdrawCapital(msg.sender, finalizedCapital * balanceOf[address(msg.sender)] / totalSupply);
}

function ownerAddAsset(string arg1) {
    require owner == msg.sender
    assetArray.length++
    if not assetArray.length <= assetArray.length + 1:
        mem[0] = 30
        idx = assetArray.length + 1
        while sha3(30) + assetArray.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                idx = idx + 1
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    assetArray[assetArray.length][] = Array(len=arg1.length, data=arg1[all])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require block.timestamp > initializedTime + financingPeriod + tokenLockoutPeriod
    require not uint8(stor17.field_0)
    require 1 == bool(uint8(stor17.field_8))
    require contractAddress != arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if bool(uint8(payees[address(arg1)].field_0)) != 1:
        uint8(payees[address(arg1)].field_0) = 1
        uint8(payees[address(arg1)].field_8) = 1
        payees[address(arg1)].field_256 % 1 = 0
        payeeArray.length++
        if not payeeArray.length <= payeeArray.length + 1:
            idx = payeeArray.length + 1
            while payeeArray.length > idx:
                uint256(payeeArray[idx]) = 0
                idx = idx + 1
                continue 
        address(payeeArray[payeeArray.length]) = arg1
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require block.timestamp > initializedTime + financingPeriod + tokenLockoutPeriod
    require not uint8(stor17.field_0)
    require 1 == bool(uint8(stor17.field_8))
    require contractAddress != arg2
    require contractAddress != arg1
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if bool(uint8(payees[address(arg2)].field_0)) != 1:
        uint8(payees[address(arg2)].field_0) = 1
        uint8(payees[address(arg2)].field_8) = 1
        payees[address(arg2)].field_256 % 1 = 0
        payeeArray.length++
        if not payeeArray.length <= payeeArray.length + 1:
            idx = payeeArray.length + 1
            while payeeArray.length > idx:
                uint256(payeeArray[idx]) = 0
                idx = idx + 1
                continue 
        address(payeeArray[payeeArray.length]) = arg2
    emit Transfer(arg3, arg1, arg2);
}

function sub_115f4fc2(?) {
    require owner == msg.sender
    require not Mask(255, 1, name.length and (256 * not bool(name.length)) - 1)
    require not Mask(255, 1, symbol.length and (256 * not bool(symbol.length)) - 1)
    require not decimals
    require not contractAddress
    require not totalSupply
    require not decimals
    require arg5 >= block.number
    require arg5 < arg6
    require not financingPeriod
    require not tokenLockoutPeriod
    require not tokenMaturityPeriod
    require not initializedTime
    require arg12 >= totalSupply
    require not interestRate
    require not sub_d0d7b14c
    uint256(name[]) = Array(len=arg1.length, data=arg1[all])
    uint256(symbol[]) = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    contractAddress = arg4
    startBlock = arg5
    endBlock = arg6
    initializedTime = arg7
    financingPeriod = arg8
    tokenLockoutPeriod = arg9
    tokenMaturityPeriod = arg10
    minInvestInWei = arg11
    maxTokenSupply = arg12
    interestRate = arg13
    sub_d0d7b14c = arg14
    tokenExchangeRateInWei = arg15
    require owner == msg.sender
    require arg16 > 0
    exchangeRateArray.length++
    if not exchangeRateArray.length <= exchangeRateArray.length + 1:
        idx = 2 * exchangeRateArray.length + 1
        while 2 * exchangeRateArray.length > idx:
            exchangeRateArray[idx].field_0 = 0
            exchangeRateArray[idx].field_256 = 0
            idx = idx + 2
            continue 
    exchangeRateArray[exchangeRateArray.length].field_0 = block.number
    exchangeRateArray[exchangeRateArray.length].field_256 = arg16
    nextExchangeRateIndex = exchangeRateArray.length
    uint8(stor17.field_8) = 1
}

function _fallback() payable {
    require not uint8(stor17.field_0)
    require 1 == bool(uint8(stor17.field_8))
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require msg.value > 0
    require msg.value >= minInvestInWei
    require tokenExchangeRateInWei
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + totalSupply >= totalSupply
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + totalSupply <= maxTokenSupply
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + totalSupply >= totalSupply
    totalSupply += msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei
    if bool(uint8(payees[address(msg.sender)].field_0)) != 1:
        uint8(payees[address(msg.sender)].field_0) = 1
        uint8(payees[address(msg.sender)].field_8) = 1
        payees[address(msg.sender)].field_256 % 1 = 0
        payeeArray.length++
        if not payeeArray.length <= payeeArray.length + 1:
            idx = payeeArray.length + 1
            while payeeArray.length > idx:
                uint256(payeeArray[idx]) = 0
                idx = idx + 1
                continue 
        address(payeeArray[payeeArray.length]) = msg.sender
    call owner with:
       value msg.value - (msg.value % tokenExchangeRateInWei) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value % tokenExchangeRateInWei > 0:
        call msg.sender with:
           value msg.value % tokenExchangeRateInWei wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function proxyPayment(address arg1) payable {
    require not uint8(stor17.field_0)
    require 1 == bool(uint8(stor17.field_8))
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require msg.value > 0
    require msg.value >= minInvestInWei
    require tokenExchangeRateInWei
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + totalSupply >= totalSupply
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + totalSupply <= maxTokenSupply
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + totalSupply >= totalSupply
    totalSupply += msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei
    require (msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value - (msg.value % tokenExchangeRateInWei) / tokenExchangeRateInWei
    if bool(uint8(payees[address(msg.sender)].field_0)) != 1:
        uint8(payees[address(msg.sender)].field_0) = 1
        uint8(payees[address(msg.sender)].field_8) = 1
        payees[address(msg.sender)].field_256 % 1 = 0
        payeeArray.length++
        if not payeeArray.length <= payeeArray.length + 1:
            idx = payeeArray.length + 1
            while payeeArray.length > idx:
                uint256(payeeArray[idx]) = 0
                idx = idx + 1
                continue 
        address(payeeArray[payeeArray.length]) = msg.sender
    call owner with:
       value msg.value - (msg.value % tokenExchangeRateInWei) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value % tokenExchangeRateInWei > 0:
        call msg.sender with:
           value msg.value % tokenExchangeRateInWei wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    return 1
}



}
