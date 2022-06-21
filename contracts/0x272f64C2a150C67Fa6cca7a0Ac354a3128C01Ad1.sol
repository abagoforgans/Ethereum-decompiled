contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1, address arg2)
#
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 openingTime;
uint256 closingTime;
address tokenWalletAddress;
address owner;
mapping of uint16 whitelist;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint32 sub_56da11d2;
uint32 sub_98dc1d52; offset 32
uint32 sub_6b241da5; offset 64
uint32 sub_105e83b9; offset 96
uint32 sub_8e599e77; offset 128
uint256 bonusPeriod;
uint256 bonusAmount;
uint256 weiRaised;
uint256 sub_9c4e2054;
uint256 sub_9784c778;
uint256 minAmount;
uint256 stor19;
uint256 stor20;
mapping of uint256 balanceOf;

function sub_105e83b9(?) {
    return sub_105e83b9
}

function sub_2b959815(?) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function bonusPeriod() {
    return bonusPeriod
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_56da11d2(?) {
    return sub_56da11d2
}

function sub_6b241da5(?) {
    return sub_6b241da5
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_8e599e77(?) {
    return sub_8e599e77
}

function sub_9784c778(?) {
    return sub_9784c778
}

function sub_98dc1d52(?) {
    return sub_98dc1d52
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return whitelist[arg1]
}

function minAmount() {
    return minAmount
}

function sub_9c4e2054(?) {
    return sub_9c4e2054
}

function bonusAmount() {
    return bonusAmount
}

function openingTime() {
    return openingTime
}

function tokenWallet() {
    return tokenWalletAddress
}

function provider(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function lockedHasEnd() {
    if block.timestamp > stor19:
        return 1
    else:
        return 0
}

function lockedTwoHasEnd() {
    if block.timestamp > stor20:
        return 1
    else:
        return 0
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return (whitelist[address(arg1)] > 0)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ab8e553a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor11[address(arg1)] = 1
}

function changeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rate = arg1
    return 1
}

function setProvider(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10[address(arg1)] = 1
}

function setMinAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minAmount = arg1
    return 1
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function changeClosingTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    closingTime = arg1
    return 0
}

function sub_6c2f9b8f(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_105e83b9 = arg1
    sub_8e599e77 = arg2
    return 1
}

function sub_99b21d40(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(stor11[address(arg1)]) == 1
    stor11[address(arg1)] = 0
}

function sub_f21bfbf4(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sub_56da11d2 = arg1
    sub_98dc1d52 = arg2
    sub_6b241da5 = arg3
    return 1
}

function getWhitelistedZone(address arg1) {
    require calldata.size - 4 >= 32
    if whitelist[address(arg1)] > 0:
        return whitelist[address(arg1)]
    else:
        return 0
}

function sub_596cfd86(?) {
    require calldata.size - 4 >= 32
    if owner == arg1:
        return 1
    if bool(stor11[address(arg1)]) == 1:
        return 1
    else:
        return 0
}

function deactivateProvider(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(stor10[address(arg1)]) == 1
    stor10[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isProvider(address arg1) {
    require calldata.size - 4 >= 32
    if owner == arg1:
        return 1
    if bool(stor10[address(arg1)]) == 1:
        return 1
    else:
        return 0
}

function deleteFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require bool(stor10[address(msg.sender)]) == 1
    whitelist[address(arg1)] = 0
}

function setWhitelisted(address arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require bool(stor10[address(msg.sender)]) == 1
    whitelist[address(arg1)] = arg2
}

function sub_34509bea(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require arg1
    require arg1 * sub_98dc1d52 / arg1 == sub_98dc1d52
    return (arg1 * sub_98dc1d52 / 1000)
}

function getBonusAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp >= bonusPeriod:
        return 0
    if not arg1:
        return 0
    require arg1
    require arg1 * bonusAmount / arg1 == bonusAmount
    return (arg1 * bonusAmount / 1000)
}

function lockedTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit LockTokens(arg2, arg1);
    return 1
}

function sub_78a939ff(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    require arg1
    if not arg2:
        require arg1 * sub_105e83b9 / arg1 == sub_105e83b9
        return (arg1 * sub_105e83b9 / 1000)
    require arg1 * sub_56da11d2 / arg1 == sub_56da11d2
    return (arg1 * sub_56da11d2 / 1000)
}

function sub_80375522(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    require arg1
    if not arg2:
        require arg1 * sub_8e599e77 / arg1 == sub_8e599e77
        return (arg1 * sub_8e599e77 / 1000)
    require arg1 * sub_6b241da5 / arg1 == sub_6b241da5
    return (arg1 * sub_6b241da5 / 1000)
}

function calculateTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require arg1
    require arg1 * rate / arg1 == rate
    if block.timestamp >= bonusPeriod:
        return (arg1 * rate)
    if not arg1 * rate:
        return (arg1 * rate)
    require arg1 * rate
    require arg1 * rate * bonusAmount / arg1 * rate == bonusAmount
    return ((arg1 * rate) + (arg1 * rate * bonusAmount / 1000))
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args tokenWalletAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args tokenWalletAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require block.timestamp > stor19
    require balanceOf[address(arg1)] > 0
    if whitelist[address(arg1)] <= 0:
        balanceOf[address(arg1)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, address(arg1), balanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    else:
        if whitelist[address(arg1)] != 840:
            balanceOf[address(arg1)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args tokenWalletAddress, address(arg1), balanceOf[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        else:
            if block.timestamp > stor20:
                balanceOf[address(arg1)] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args tokenWalletAddress, address(arg1), balanceOf[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
}



}
