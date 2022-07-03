contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address tokenAddress;
address sub_95ea7507Address;
address walletAddress;
address reserveAddress;
uint256 rate;
uint256 rateDecimals;
uint256 sub_e7b094f7;

function rateDecimals() {
    return rateDecimals
}

function rate() {
    return rate
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_95ea7507(?) {
    return sub_95ea7507Address
}

function reserve() {
    return reserveAddress
}

function sub_e7b094f7(?) {
    return sub_e7b094f7
}

function token() {
    return tokenAddress
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    selfdestruct(arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_b28c192b(?) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    sub_e7b094f7 = arg1
    emit 0x523d6319: arg1
    return 1
}

function setRateDecimals(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    rateDecimals = arg1
    emit 0xdd8ecbd7: arg1
    return 1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if stor0:
        revert with 0, 'The contract is paused'
    stor0 = 1
    emit Pause()
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if not stor0:
        revert with 0, 'The contract is not paused'
    stor0 = 0
    emit Unpause()
}

function truncate(uint256 arg1, uint256 arg2) {
    require 10^arg2
    if not arg1 / 10^arg2:
        return 0
    require 10^arg2 * arg1 / 10^arg2 / arg1 / 10^arg2 == 10^arg2
    return (10^arg2 * arg1 / 10^arg2)
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if not arg1:
        revert with 0, '_newOwner == 0'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRate(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if arg1 == rate:
        revert with 0, '_rate == rate'
    if not arg1:
        revert with 0, '_rate == 0'
    rate = arg1
    emit 0x97f3618d: arg1
    return 1
}

function setToken(address arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if not arg1:
        revert with 0, '_token == 0'
    if tokenAddress == arg1:
        revert with 0, '_token == token'
    tokenAddress = arg1
    emit LogSetToken(arg1);
    return 1
}

function setWallet(address arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if not arg1:
        revert with 0, '_wallet == 0'
    if walletAddress == arg1:
        revert with 0, '_wallet == wallet'
    walletAddress = arg1
    emit LogSetWallet(arg1);
    return 1
}

function setReserve(address arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if not arg1:
        revert with 0, '_reserve == 0'
    if reserveAddress == arg1:
        revert with 0, '_reserve == reserve'
    reserveAddress = arg1
    emit LogSetReserve(arg1);
    return 1
}

function sub_323bf75a(?) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_tradingWalletMappingAddress == 0'
    if sub_95ea7507Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_tradingWalletMappingAddress == tradingWalletMapping'
    sub_95ea7507Address = arg1
    emit 0x59b1e822: arg1
    return 1
}

function getAmount(uint256 arg1) {
    if not arg1:
        if 10^rateDecimals:
            if 10^sub_e7b094f7:
                if not 0 / 10^rateDecimals / 10^sub_e7b094f7:
                    return 0
                if 10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7 / 0 / 10^rateDecimals / 10^sub_e7b094f7 == 10^sub_e7b094f7:
                    return (10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7)
    else:
        if rate * arg1 / arg1 == rate:
            if 10^rateDecimals:
                if 10^sub_e7b094f7:
                    if not rate * arg1 / 10^rateDecimals / 10^sub_e7b094f7:
                        return 0
                    if 10^sub_e7b094f7 * rate * arg1 / 10^rateDecimals / 10^sub_e7b094f7 / rate * arg1 / 10^rateDecimals / 10^sub_e7b094f7 == 10^sub_e7b094f7:
                        return (10^sub_e7b094f7 * rate * arg1 / 10^rateDecimals / 10^sub_e7b094f7)
    revert
}

function sub_33e29a40(?) {
    if owner != msg.sender:
        revert with 0, 'msg.sender not owner'
    if not arg1:
        revert with 0, '_token address == 0'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'dropped token balance == 0'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LogWithdrawAirdrop(ext_call.return_data[0], msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if stor0:
        revert with 0, 'The contract is paused'
    if not msg.value:
        require 10^rateDecimals
        require 10^sub_e7b094f7
        if not 0 / 10^rateDecimals / 10^sub_e7b094f7:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, msg.sender, 0
        else:
            require 10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7 / 0 / 10^rateDecimals / 10^sub_e7b094f7 == 10^sub_e7b094f7
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, msg.sender, 10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7
    else:
        require rate * msg.value / msg.value == rate
        require 10^rateDecimals
        require 10^sub_e7b094f7
        if not rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, msg.sender, 0
        else:
            require 10^sub_e7b094f7 * rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7 / rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7 == 10^sub_e7b094f7
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, msg.sender, 10^sub_e7b094f7 * rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transferFrom reserve to _receiver failed'
}

function sub_4f39b16e(?) payable {
    if stor0:
        revert with 0, 'The contract is paused'
    if not msg.value:
        require 10^rateDecimals
        require 10^sub_e7b094f7
        if not 0 / 10^rateDecimals / 10^sub_e7b094f7:
            require ext_code.size(sub_95ea7507Address)
            call sub_95ea7507Address.retrieveWallet(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'no tradingWallet associated'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transferFrom reserve to ERC20Supplier failed'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'approve tradingWallet to zero failed'
            if not ext_call.return_data[0]:
                revert with 0, 'approve tradingWallet failed'
            emit 0x4e034c75: 0, address(ext_call.return_data[0]), tokenAddress
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).depositERC20Token(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenAddress, 0
        else:
            require 10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7 / 0 / 10^rateDecimals / 10^sub_e7b094f7 == 10^sub_e7b094f7
            require ext_code.size(sub_95ea7507Address)
            call sub_95ea7507Address.retrieveWallet(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'no tradingWallet associated'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, this.address, 10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transferFrom reserve to ERC20Supplier failed'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if ext_call.return_data[0]:
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'approve tradingWallet to zero failed'
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'approve tradingWallet failed'
            emit 0x4e034c75: (10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7), address(ext_call.return_data[0]), tokenAddress
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).depositERC20Token(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenAddress, 10^sub_e7b094f7 * 0 / 10^rateDecimals / 10^sub_e7b094f7
    else:
        require rate * msg.value / msg.value == rate
        require 10^rateDecimals
        require 10^sub_e7b094f7
        if not rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7:
            require ext_code.size(sub_95ea7507Address)
            call sub_95ea7507Address.retrieveWallet(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'no tradingWallet associated'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transferFrom reserve to ERC20Supplier failed'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'approve tradingWallet to zero failed'
            if not ext_call.return_data[0]:
                revert with 0, 'approve tradingWallet failed'
            emit 0x4e034c75: 0, address(ext_call.return_data[0]), tokenAddress
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).depositERC20Token(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenAddress, 0
        else:
            require 10^sub_e7b094f7 * rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7 / rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7 == 10^sub_e7b094f7
            require ext_code.size(sub_95ea7507Address)
            call sub_95ea7507Address.retrieveWallet(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'no tradingWallet associated'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reserveAddress, this.address, 10^sub_e7b094f7 * rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transferFrom reserve to ERC20Supplier failed'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if ext_call.return_data[0]:
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'approve tradingWallet to zero failed'
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 10^sub_e7b094f7 * rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'approve tradingWallet failed'
            emit 0x4e034c75: (10^sub_e7b094f7 * rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7), address(ext_call.return_data[0]), tokenAddress
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).depositERC20Token(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenAddress, 10^sub_e7b094f7 * rate * msg.value / 10^rateDecimals / 10^sub_e7b094f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
