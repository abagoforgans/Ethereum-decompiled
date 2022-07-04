contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1, address arg2)
#
uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 stor4;
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
uint256 sub_a44784ca;
uint256 sub_afcea286;
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

function sub_a44784ca(?) {
    return sub_a44784ca
}

function bonusAmount() {
    return bonusAmount
}

function sub_afcea286(?) {
    return sub_afcea286
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

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function lockedHasEnd() {
    if block.timestamp > sub_a44784ca:
        return 1
    else:
        return 0
}

function lockedTwoHasEnd() {
    if block.timestamp > sub_afcea286:
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

function sub_4941c248(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    bonusPeriod = arg1
    return 1
}

function sub_fc6d10a6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    bonusAmount = arg1
    return 1
}

function sub_0e81a5dc(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_afcea286 = arg1
    return 1
}

function sub_ce807a21(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_a44784ca = arg1
    return 1
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

function sub_f6d209a7(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        require bool(stor10[address(msg.sender)]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_f38a43d5(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        require bool(stor10[address(msg.sender)]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        whitelist[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 190 len 2]
        idx = idx + 1
        continue 
}

function _fallback() payable {
    stor0++
    require msg.sender
    require msg.value >= minAmount
    if not msg.value:
        require stor4 + msg.value >= stor4
        stor4 += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require stor4 + msg.value >= stor4
        stor4 += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require arg1
    require msg.value >= minAmount
    if not msg.value:
        require stor4 + msg.value >= stor4
        stor4 += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require stor4 + msg.value >= stor4
        stor4 += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args tokenWalletAddress, address(arg1), msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require block.timestamp > sub_a44784ca
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
            if block.timestamp > sub_afcea286:
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
