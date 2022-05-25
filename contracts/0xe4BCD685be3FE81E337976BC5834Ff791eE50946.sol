contract main {




// =====================  Runtime code  =====================


mapping of uint256 totalInvested;
mapping of uint8 stor1;
uint8 stor2;
address owner; offset 8
address priceUpdaterAddress;
address crowdsaleAddress;

function totalInvested(uint256 arg1) {
    return totalInvested[arg1]
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function paymentId(uint256 arg1) {
    return bool(stor1[arg1])
}

function priceUpdater() {
    return priceUpdaterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function buyTokens(address arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    require not stor2
    stor2 = 1
    require arg1
    require arg2 <= 5
    require arg2
    require arg3
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.minimumAmount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 >= ext_call.return_data[0]
    require arg5
    require not stor1[arg5]
    stor1[arg5] = 1
    require arg2 <= 5
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.externalBuyToken(address arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2 << 248, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = 0
}

function calcPrice(uint8 arg1, uint256 arg2) {
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x2c4e722e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if ext_call.return_data[0]:
            if arg1 <= 5:
                if not arg1:
                    return (0 / ext_call.return_data[0])
                require ext_code.size(priceUpdaterAddress)
                call priceUpdaterAddress.0x26a49e37 with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    require arg1 <= 5
                    require ext_code.size(priceUpdaterAddress)
                    call priceUpdaterAddress.0x26a49e37 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 0
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == ext_call.return_data[0]:
                    if arg1 <= 5:
                        require ext_code.size(priceUpdaterAddress)
                        call priceUpdaterAddress.0x26a49e37 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^18:
                            return 0
                        if ext_call.return_data[0] * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^18 == ext_call.return_data[0]:
                            return (ext_call.return_data[0] * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^18)
    else:
        if 10^18 * arg2 / arg2 == 10^18:
            if ext_call.return_data[0]:
                if arg1 <= 5:
                    if not arg1:
                        return (10^18 * arg2 / ext_call.return_data[0])
                    require ext_code.size(priceUpdaterAddress)
                    call priceUpdaterAddress.0x26a49e37 with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 10^18 * arg2 / ext_call.return_data[0]:
                        require arg1 <= 5
                        require ext_code.size(priceUpdaterAddress)
                        call priceUpdaterAddress.0x26a49e37 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return 0
                    if ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18 * arg2 / ext_call.return_data[0] == ext_call.return_data[0]:
                        if arg1 <= 5:
                            require ext_code.size(priceUpdaterAddress)
                            call priceUpdaterAddress.0x26a49e37 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18:
                                return 0
                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18 == ext_call.return_data[0]:
                                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18)
    revert
}



}
