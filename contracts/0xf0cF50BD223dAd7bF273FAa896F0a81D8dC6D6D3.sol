contract main {




// =====================  Runtime code  =====================


mapping of uint256 totalInvested;
mapping of uint8 stor1;
address owner;
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

function buyTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xc8505990 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                if 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] == ext_call.return_data[0]:
                        if arg1 <= 5:
                            require ext_code.size(priceUpdaterAddress)
                            call priceUpdaterAddress.0x26a49e37 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                return 0
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]:
                                    return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0])
    else:
        if arg2:
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
                        if 10^18 * arg2 / ext_call.return_data[0]:
                            if 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg2 / ext_call.return_data[0] == ext_call.return_data[0]:
                                if arg1 <= 5:
                                    require ext_code.size(priceUpdaterAddress)
                                    call priceUpdaterAddress.0x26a49e37 with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                        return 0
                                    if 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                        if 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]:
                                            return (10^18 * arg2 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0])
    revert
}



}
