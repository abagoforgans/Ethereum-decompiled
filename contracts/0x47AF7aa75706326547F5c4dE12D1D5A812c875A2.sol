contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor12;

function _fallback() payable {
    stor4 = 0
    stor8 = 1800
    stor9 = 10^13
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    stor3 = 10^18 * code.data[3413 len 32]
    stor10 = (24 * 3600 * code.data[3445 len 32]) + block.timestamp
    stor6 = 10^18 * code.data[3477 len 32]
    stor7 = 10^18 * code.data[3509 len 32]
    return code.data[176 len 3237]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 stor3;
uint256 stor4;
uint256 tokensSold;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 presaleEndTime;
uint8 stor11;
uint256 investmentsCount;
mapping of uint256 stor14;
mapping of uint8 stor15;

function getWalletAddress() {
    return walletAddress
}

function getTokenAddress() {
    return tokenAddress
}

function getInvestmentsCount() {
    return investmentsCount
}

function getPresaleEndTime() {
    return presaleEndTime
}

function owner() {
    return owner
}

function sub_ba9b20e8(?) {
    return bool(stor11)
}

function getTokensSold() {
    return tokensSold
}

function _fallback() payable {
    revert
}

function sub_323a6dd1(?) {
    return (stor4 / 10^18)
}

function sub_ace6f612(?) {
    return (stor7 / 10^18)
}

function sub_b20e794d(?) {
    return (stor6 / 10^18)
}

function pause() {
    require owner == msg.sender
    stor11 = 1
}

function resume() {
    require owner == msg.sender
    stor11 = 0
}

function presaleHasEnded() {
    return (block.timestamp > presaleEndTime)
}

function setToken(address arg1) {
    require owner == msg.sender
    require investmentsCount < 1
    tokenAddress = arg1
}

function setWallet(address arg1) {
    require owner == msg.sender
    require investmentsCount < 5
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_319e246c(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function safeWithdrawal() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function test() payable {
    require owner == msg.sender
    if msg.value:
        require msg.value
        require stor8 * msg.value / msg.value == stor8
    require stor9
    require msg.value + stor4 >= stor4
    stor4 += msg.value
    require (stor8 * msg.value / stor9) + tokensSold >= tokensSold
    tokensSold += stor8 * msg.value / stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor8 * msg.value / stor9
    require ext_call.success
    emit Invested(msg.sender, 9999999, msg.value);
    emit Transferred(msg.sender, stor8 * msg.value / stor9);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit Collected(walletAddress, msg.value);
}

function sub_5ed39707(?) payable {
    require not stor11
    require stor4 < stor3
    require block.timestamp < presaleEndTime
    require msg.value >= stor6
    require msg.value <= stor7
    require msg.value + stor4 < stor3
    require msg.sender
    require arg2
    require arg3
    require arg4
    require arg1
    require not stor15[arg1]
    require msg.value + stor14[address(msg.sender)] >= stor14[address(msg.sender)]
    require msg.value + stor14[address(msg.sender)] <= stor7
    if msg.value:
        require msg.value
        require stor8 * msg.value / msg.value == stor8
    require stor9
    require stor8 * msg.value / stor9
    require investmentsCount + 1 >= investmentsCount
    investmentsCount++
    require msg.value + stor4 >= stor4
    stor4 += msg.value
    require (stor8 * msg.value / stor9) + tokensSold >= tokensSold
    tokensSold += stor8 * msg.value / stor9
    stor15[arg1] = 1
    require msg.value + stor14[address(msg.sender)] >= stor14[address(msg.sender)]
    stor14[address(msg.sender)] += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor8 * msg.value / stor9
    require ext_call.success
    emit Invested(msg.sender, arg1, msg.value);
    emit Transferred(msg.sender, stor8 * msg.value / stor9);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit Collected(walletAddress, msg.value);
}



}
