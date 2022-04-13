contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - updatePrice()
#
address owner;
uint8 stor6; offset 160
uint128 stor6; offset 160
address tokenAddress;
address mainWalletAddress;
address bountyWalletAddress;
uint256 rate;
uint256 weiRaised;
uint256 tokensSold;
array of uint256 sub_e10585ca;
uint256 sub_ba288c35;

function mainWallet() {
    return mainWalletAddress
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function isFinished() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function sub_ba288c35(?) {
    return sub_ba288c35
}

function sub_e10585ca(?) {
    return sub_e10585ca[0 len sub_e10585ca.length]
}

function bountyWallet() {
    return bountyWalletAddress
}

function hasEnded() {
    return bool(uint8(stor6.field_160))
}

function token() {
    return tokenAddress
}

function sub_98a7653e(?) {
    require msg.sender == owner
    rate = arg1
}

function finish() {
    require msg.sender == owner
    Mask(96, 0, stor6.field_160) = 1
}

function restart() {
    require msg.sender == owner
    Mask(96, 0, stor6.field_160) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setNewTokenOwner(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function tokenResend() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require not uint8(stor6.field_160)
    require msg.value > 0
    require weiRaised + msg.value >= weiRaised
    require sub_ba288c35 > 0
    if not msg.value:
        if rate:
            if ext_code.size(tokenAddress):
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                if ext_call.success:
                    require msg.value * sub_ba288c35 / 10^10 / rate <= ext_call.return_data[0]
                    weiRaised += msg.value
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * sub_ba288c35 / 10^10 / rate
                        if ext_call.success:
                            if tokensSold + (msg.value * sub_ba288c35 / 10^10 / rate) >= tokensSold:
                                tokensSold += msg.value * sub_ba288c35 / 10^10 / rate
                                emit TokenPurchase(msg.value, msg.value * sub_ba288c35 / 10^10 / rate, msg.sender, arg1);
                                call mainWalletAddress with:
                                   value 836887 * msg.value / 10^6 wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    call bountyWalletAddress with:
                                       value 163113 * msg.value / 10^6 wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    else:
        if msg.value:
            if msg.value * sub_ba288c35 / msg.value == sub_ba288c35:
                if rate:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        if ext_call.success:
                            require msg.value * sub_ba288c35 / 10^10 / rate <= ext_call.return_data[0]
                            weiRaised += msg.value
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value * sub_ba288c35 / 10^10 / rate
                                if ext_call.success:
                                    if tokensSold + (msg.value * sub_ba288c35 / 10^10 / rate) >= tokensSold:
                                        tokensSold += msg.value * sub_ba288c35 / 10^10 / rate
                                        emit TokenPurchase(msg.value, msg.value * sub_ba288c35 / 10^10 / rate, msg.sender, arg1);
                                        call mainWalletAddress with:
                                           value 836887 * msg.value / 10^6 wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            call bountyWalletAddress with:
                                               value 163113 * msg.value / 10^6 wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
    revert
}

function _fallback() payable {
    require msg.sender
    require not uint8(stor6.field_160)
    require msg.value > 0
    require weiRaised + msg.value >= weiRaised
    require sub_ba288c35 > 0
    if not msg.value:
        if rate:
            if ext_code.size(tokenAddress):
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                if ext_call.success:
                    require msg.value * sub_ba288c35 / 10^10 / rate <= ext_call.return_data[0]
                    weiRaised += msg.value
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * sub_ba288c35 / 10^10 / rate
                        if ext_call.success:
                            if tokensSold + (msg.value * sub_ba288c35 / 10^10 / rate) >= tokensSold:
                                tokensSold += msg.value * sub_ba288c35 / 10^10 / rate
                                emit TokenPurchase(msg.value, msg.value * sub_ba288c35 / 10^10 / rate, msg.sender, msg.sender);
                                call mainWalletAddress with:
                                   value 836887 * msg.value / 10^6 wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    call bountyWalletAddress with:
                                       value 163113 * msg.value / 10^6 wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    else:
        if msg.value:
            if msg.value * sub_ba288c35 / msg.value == sub_ba288c35:
                if rate:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        if ext_call.success:
                            require msg.value * sub_ba288c35 / 10^10 / rate <= ext_call.return_data[0]
                            weiRaised += msg.value
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * sub_ba288c35 / 10^10 / rate
                                if ext_call.success:
                                    if tokensSold + (msg.value * sub_ba288c35 / 10^10 / rate) >= tokensSold:
                                        tokensSold += msg.value * sub_ba288c35 / 10^10 / rate
                                        emit TokenPurchase(msg.value, msg.value * sub_ba288c35 / 10^10 / rate, msg.sender, msg.sender);
                                        call mainWalletAddress with:
                                           value 836887 * msg.value / 10^6 wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                                            call bountyWalletAddress with:
                                               value 163113 * msg.value / 10^6 wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
    revert
}



}
