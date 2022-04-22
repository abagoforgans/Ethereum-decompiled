contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor10; offset 160

function _fallback() payable {
    stor10 = 0
    stor0 = msg.sender
    return code.data[64 len 2763]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint256 startTime;
uint256 endTime;
uint256 cap;
uint256 totalInvestedInWei;
uint256 minimumContribution;
mapping of uint256 investorBalances;
mapping of uint8 stor8;
uint256 investorsLength;
uint8 isInitialized; offset 160
uint128 stor10; offset 160
address vaultAddress;

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function isInitialized() {
    return bool(isInitialized)
}

function investorsLength() {
    return investorsLength
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function minimumContribution() {
    return minimumContribution
}

function whitelist(address arg1) {
    return bool(stor8[arg1])
}

function investorBalances(address arg1) {
    return investorBalances[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function totalInvestedInWei() {
    return totalInvestedInWei
}

function vault() {
    return vaultAddress
}

function Presale() {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function whitelistInvestor(address arg1) {
    require owner == msg.sender
    if not stor8[address(arg1)]:
        stor8[address(arg1)] = 1
        investorsLength++
}

function blacklistInvestor(address arg1) {
    require owner == msg.sender
    if stor8[address(arg1)]:
        stor8[address(arg1)] = 0
        if investorsLength:
            investorsLength--
}

function initialize(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require owner == msg.sender
    require not isInitialized
    require arg1
    require arg2
    require arg2 > arg1
    require arg3
    require arg4
    require arg5
    require arg3 > arg4
    startTime = arg1
    endTime = arg2
    cap = arg3
    minimumContribution = arg4
    vaultAddress = arg5
    isInitialized = 1
    stor10 = 0
}

function isValidPurchase(uint256 arg1) {
    require arg1 + investorBalances[address(msg.sender)] >= investorBalances[address(msg.sender)]
    require arg1 + totalInvestedInWei >= totalInvestedInWei
    if arg1 + investorBalances[address(msg.sender)] < minimumContribution:
        return arg1 + investorBalances[address(msg.sender)] >= minimumContribution
    if arg1 + totalInvestedInWei > cap:
        return arg1 + totalInvestedInWei <= cap
    return (arg1 > 0)
}

function claimTokens(address arg1) {
    require owner == msg.sender
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
    require ext_call.success
}

function whitelistInvestors(address[] arg1) {
    require owner == msg.sender
    require arg1.length <= 250
    s = 0
    idx = 0
    while uint8(idx) < arg1.length:
        mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        mem[32] = 8
        if not stor8[address(cd[((32 * uint8(idx)) + arg1 + 36)])]:
            mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
            mem[32] = 8
            stor8[address(cd[((32 * uint8(idx)) + arg1 + 36)])] = 1
            investorsLength++
        s = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function buy() payable {
    require stor8[address(msg.sender)]
    require msg.value + investorBalances[address(msg.sender)] >= investorBalances[address(msg.sender)]
    require msg.value + totalInvestedInWei >= totalInvestedInWei
    require msg.value + investorBalances[address(msg.sender)] >= minimumContribution
    require msg.value + totalInvestedInWei <= cap
    require msg.value > 0
    require isInitialized
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    investorBalances[address(msg.sender)] += msg.value
    totalInvestedInWei += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Contribution(msg.value, investorBalances[address(msg.sender)], totalInvestedInWei, msg.sender);
}

function _fallback() payable {
    require stor8[address(msg.sender)]
    require msg.value + investorBalances[address(msg.sender)] >= investorBalances[address(msg.sender)]
    require msg.value + totalInvestedInWei >= totalInvestedInWei
    require msg.value + investorBalances[address(msg.sender)] >= minimumContribution
    require msg.value + totalInvestedInWei <= cap
    require msg.value > 0
    require isInitialized
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    investorBalances[address(msg.sender)] += msg.value
    totalInvestedInWei += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Contribution(msg.value, investorBalances[address(msg.sender)], totalInvestedInWei, msg.sender);
}



}
