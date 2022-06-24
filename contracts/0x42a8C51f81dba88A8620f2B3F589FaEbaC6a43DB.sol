contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
address tokenWalletAddress;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 rate;
uint256 sub_fec8e4a5;
uint256 sub_3c2483ca;
uint256 sub_6155037c;
uint256 sub_941f0c87;
uint256 sub_72f4bd3f;
address stor16;
address stor17;
uint8 KYC; offset 160
uint128 stor18; offset 160
address stor18;

function rate() {
    return rate
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor9[address(arg1)])
}

function sub_3c2483ca(?) {
    return sub_3c2483ca
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_6155037c(?) {
    return sub_6155037c
}

function sub_72f4bd3f(?) {
    return sub_72f4bd3f
}

function sub_941f0c87(?) {
    return sub_941f0c87
}

function KYC() {
    return bool(KYC)
}

function openingTime() {
    return openingTime
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function tokenWallet() {
    return tokenWalletAddress
}

function token() {
    return tokenAddress
}

function sub_fec8e4a5(?) {
    return sub_fec8e4a5
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function sub_6f511bd3(?) {
    require msg.sender == address(stor18.field_0)
    require KYC
    Mask(96, 0, stor18.field_160) = 0
}

function sub_49adac23(?) {
    require msg.sender == address(stor18.field_0)
    require not KYC
    Mask(96, 0, stor18.field_160) = 1
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor17
    rate = arg1
    emit ChangeRate(arg1);
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function renounceWhitelisted() {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
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

function manualSell(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender == stor16
    if not KYC:
        if arg2:
            require arg2
            require arg2 * rate / arg2 == rate
            if arg2 * rate < sub_3c2483ca:
                revert with 0, 'Min purchase 100 kick'
            else:
                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                if sub_6155037c + (arg2 * rate) > sub_fec8e4a5:
                    revert with 0, 'Cap has been reached'
                else:
                    require block.timestamp >= openingTime
                    require block.timestamp <= closingTime
                    require arg1
                    require arg2
                    require arg2
                    require arg2 * rate / arg2 == rate
                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                            require arg2 * rate >= arg2 * rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), arg2 * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                if arg2:
                                    require arg2
                                    require arg2 * rate / arg2 == rate
                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 10 * arg2 * rate / arg2 * rate == 10
                                                if not 10 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        if arg2 * rate:
                                            require arg2 * rate
                                            require 20 * arg2 * rate / arg2 * rate == 20
                                            if not 20 * arg2 * rate / 100:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                        else:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                    else:
                                        require sub_6155037c >= sub_6155037c
                        else:
                            if arg2 * rate:
                                require arg2 * rate
                                require 10 * arg2 * rate / arg2 * rate == 10
                                require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (arg2 * rate) + (10 * arg2 * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, (arg2 * rate) + (10 * arg2 * rate / 100), msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                            else:
                                require arg2 * rate >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), arg2 * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                    else:
                        if arg2 * rate:
                            require arg2 * rate
                            require 20 * arg2 * rate / arg2 * rate == 20
                            require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), (arg2 * rate) + (20 * arg2 * rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(arg2, (arg2 * rate) + (20 * arg2 * rate / 100), msg.sender, arg1);
                                if arg2:
                                    require arg2
                                    require arg2 * rate / arg2 == rate
                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 10 * arg2 * rate / arg2 * rate == 10
                                                if not 10 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        if arg2 * rate:
                                            require arg2 * rate
                                            require 20 * arg2 * rate / arg2 * rate == 20
                                            if not 20 * arg2 * rate / 100:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                        else:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                    else:
                                        require sub_6155037c >= sub_6155037c
                        else:
                            require arg2 * rate >= arg2 * rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), arg2 * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                if arg2:
                                    require arg2
                                    require arg2 * rate / arg2 == rate
                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 10 * arg2 * rate / arg2 * rate == 10
                                                if not 10 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        if arg2 * rate:
                                            require arg2 * rate
                                            require 20 * arg2 * rate / arg2 * rate == 20
                                            if not 20 * arg2 * rate / 100:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                        else:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                    else:
                                        require sub_6155037c >= sub_6155037c
        else:
            if 0 < sub_3c2483ca:
                revert with 0, 'Min purchase 100 kick'
            else:
                require sub_6155037c >= sub_6155037c
                if sub_6155037c > sub_fec8e4a5:
                    revert with 0, 'Cap has been reached'
                else:
                    require block.timestamp >= openingTime
                    require block.timestamp <= closingTime
                    require arg1
                    require arg2
                    require arg2
                    require arg2 * rate / arg2 == rate
                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                            require arg2 * rate >= arg2 * rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), arg2 * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                if arg2:
                                    require arg2
                                    require arg2 * rate / arg2 == rate
                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 10 * arg2 * rate / arg2 * rate == 10
                                                if not 10 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        if arg2 * rate:
                                            require arg2 * rate
                                            require 20 * arg2 * rate / arg2 * rate == 20
                                            if not 20 * arg2 * rate / 100:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                        else:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                    else:
                                        require sub_6155037c >= sub_6155037c
                        else:
                            if arg2 * rate:
                                require arg2 * rate
                                require 10 * arg2 * rate / arg2 * rate == 10
                                require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (arg2 * rate) + (10 * arg2 * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, (arg2 * rate) + (10 * arg2 * rate / 100), msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                            else:
                                require arg2 * rate >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), arg2 * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                    else:
                        if arg2 * rate:
                            require arg2 * rate
                            require 20 * arg2 * rate / arg2 * rate == 20
                            require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), (arg2 * rate) + (20 * arg2 * rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(arg2, (arg2 * rate) + (20 * arg2 * rate / 100), msg.sender, arg1);
                                if arg2:
                                    require arg2
                                    require arg2 * rate / arg2 == rate
                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 10 * arg2 * rate / arg2 * rate == 10
                                                if not 10 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        if arg2 * rate:
                                            require arg2 * rate
                                            require 20 * arg2 * rate / arg2 * rate == 20
                                            if not 20 * arg2 * rate / 100:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                        else:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                    else:
                                        require sub_6155037c >= sub_6155037c
                        else:
                            require arg2 * rate >= arg2 * rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), arg2 * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                if arg2:
                                    require arg2
                                    require arg2 * rate / arg2 == rate
                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                    if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 10 * arg2 * rate / arg2 * rate == 10
                                                if not 10 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        if arg2 * rate:
                                            require arg2 * rate
                                            require 20 * arg2 * rate / arg2 * rate == 20
                                            if not 20 * arg2 * rate / 100:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                        else:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            sub_6155037c += arg2 * rate
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                    else:
                                        require sub_6155037c >= sub_6155037c
    else:
        require arg1
        if not stor9[address(arg1)]:
            revert with 0, 'Only whitelisted'
        else:
            if arg2:
                require arg2
                require arg2 * rate / arg2 == rate
                if arg2 * rate < sub_3c2483ca:
                    revert with 0, 'Min purchase 100 kick'
                else:
                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                    if sub_6155037c + (arg2 * rate) > sub_fec8e4a5:
                        revert with 0, 'Cap has been reached'
                    else:
                        require block.timestamp >= openingTime
                        require block.timestamp <= closingTime
                        require arg1
                        require arg2
                        require arg2
                        require arg2 * rate / arg2 == rate
                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                require arg2 * rate >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), arg2 * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                            else:
                                if arg2 * rate:
                                    require arg2 * rate
                                    require 10 * arg2 * rate / arg2 * rate == 10
                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), (arg2 * rate) + (10 * arg2 * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(arg2, (arg2 * rate) + (10 * arg2 * rate / 100), msg.sender, arg1);
                                        if arg2:
                                            require arg2
                                            require arg2 * rate / arg2 == rate
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    if arg2 * rate:
                                                        require arg2 * rate
                                                        require 10 * arg2 * rate / arg2 * rate == 10
                                                        if not 10 * arg2 * rate / 100:
                                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                            sub_6155037c += arg2 * rate
                                                        else:
                                                            emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                            require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                            require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                    else:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 20 * arg2 * rate / arg2 * rate == 20
                                                    if not 20 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                else:
                                    require arg2 * rate >= arg2 * rate
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), arg2 * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                        if arg2:
                                            require arg2
                                            require arg2 * rate / arg2 == rate
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    if arg2 * rate:
                                                        require arg2 * rate
                                                        require 10 * arg2 * rate / arg2 * rate == 10
                                                        if not 10 * arg2 * rate / 100:
                                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                            sub_6155037c += arg2 * rate
                                                        else:
                                                            emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                            require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                            require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                    else:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 20 * arg2 * rate / arg2 * rate == 20
                                                    if not 20 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                        else:
                            if arg2 * rate:
                                require arg2 * rate
                                require 20 * arg2 * rate / arg2 * rate == 20
                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (arg2 * rate) + (20 * arg2 * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, (arg2 * rate) + (20 * arg2 * rate / 100), msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                            else:
                                require arg2 * rate >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), arg2 * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
            else:
                if 0 < sub_3c2483ca:
                    revert with 0, 'Min purchase 100 kick'
                else:
                    require sub_6155037c >= sub_6155037c
                    if sub_6155037c > sub_fec8e4a5:
                        revert with 0, 'Cap has been reached'
                    else:
                        require block.timestamp >= openingTime
                        require block.timestamp <= closingTime
                        require arg1
                        require arg2
                        require arg2
                        require arg2 * rate / arg2 == rate
                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                require arg2 * rate >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), arg2 * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                            else:
                                if arg2 * rate:
                                    require arg2 * rate
                                    require 10 * arg2 * rate / arg2 * rate == 10
                                    require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), (arg2 * rate) + (10 * arg2 * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(arg2, (arg2 * rate) + (10 * arg2 * rate / 100), msg.sender, arg1);
                                        if arg2:
                                            require arg2
                                            require arg2 * rate / arg2 == rate
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    if arg2 * rate:
                                                        require arg2 * rate
                                                        require 10 * arg2 * rate / arg2 * rate == 10
                                                        if not 10 * arg2 * rate / 100:
                                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                            sub_6155037c += arg2 * rate
                                                        else:
                                                            emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                            require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                            require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                    else:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 20 * arg2 * rate / arg2 * rate == 20
                                                    if not 20 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                else:
                                    require arg2 * rate >= arg2 * rate
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), arg2 * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                        if arg2:
                                            require arg2
                                            require arg2 * rate / arg2 == rate
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    if arg2 * rate:
                                                        require arg2 * rate
                                                        require 10 * arg2 * rate / arg2 * rate == 10
                                                        if not 10 * arg2 * rate / 100:
                                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                            sub_6155037c += arg2 * rate
                                                        else:
                                                            emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                            require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                            require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                    else:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 20 * arg2 * rate / arg2 * rate == 20
                                                    if not 20 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                        else:
                            if arg2 * rate:
                                require arg2 * rate
                                require 20 * arg2 * rate / arg2 * rate == 20
                                require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (arg2 * rate) + (20 * arg2 * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, (arg2 * rate) + (20 * arg2 * rate / 100), msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
                            else:
                                require arg2 * rate >= arg2 * rate
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), arg2 * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(arg2, arg2 * rate, msg.sender, arg1);
                                    if arg2:
                                        require arg2
                                        require arg2 * rate / arg2 == rate
                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                        if sub_6155037c + (arg2 * rate) > sub_941f0c87:
                                            require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                            if sub_6155037c + (arg2 * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                            else:
                                                if arg2 * rate:
                                                    require arg2 * rate
                                                    require 10 * arg2 * rate / arg2 * rate == 10
                                                    if not 10 * arg2 * rate / 100:
                                                        require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                        sub_6155037c += arg2 * rate
                                                    else:
                                                        emit 0x11a03955: arg2, 10 * arg2 * rate / 100, msg.sender, arg1
                                                        require (arg2 * rate) + (10 * arg2 * rate / 100) >= arg2 * rate
                                                        require sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (arg2 * rate) + (10 * arg2 * rate / 100)
                                                else:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                        else:
                                            if arg2 * rate:
                                                require arg2 * rate
                                                require 20 * arg2 * rate / arg2 * rate == 20
                                                if not 20 * arg2 * rate / 100:
                                                    require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                    sub_6155037c += arg2 * rate
                                                else:
                                                    emit 0x11a03955: arg2, 20 * arg2 * rate / 100, msg.sender, arg1
                                                    require (arg2 * rate) + (20 * arg2 * rate / 100) >= arg2 * rate
                                                    require sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (arg2 * rate) + (20 * arg2 * rate / 100)
                                            else:
                                                require sub_6155037c + (arg2 * rate) >= sub_6155037c
                                                sub_6155037c += arg2 * rate
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                        else:
                                            require sub_6155037c >= sub_6155037c
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    if not KYC:
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
            if msg.value * rate < sub_3c2483ca:
                revert with 0, 'Min purchase 100 kick'
            else:
                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                if sub_6155037c + (msg.value * rate) > sub_fec8e4a5:
                    revert with 0, 'Cap has been reached'
                else:
                    require block.timestamp >= openingTime
                    require block.timestamp <= closingTime
                    require arg1
                    require msg.value
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 10 * msg.value * rate / msg.value * rate == 10
                                require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (msg.value * rate) + (10 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 20 * msg.value * rate / msg.value * rate == 20
                            require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), (msg.value * rate) + (20 * msg.value * rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, arg1);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
        else:
            if 0 < sub_3c2483ca:
                revert with 0, 'Min purchase 100 kick'
            else:
                require sub_6155037c >= sub_6155037c
                if sub_6155037c > sub_fec8e4a5:
                    revert with 0, 'Cap has been reached'
                else:
                    require block.timestamp >= openingTime
                    require block.timestamp <= closingTime
                    require arg1
                    require msg.value
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 10 * msg.value * rate / msg.value * rate == 10
                                require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (msg.value * rate) + (10 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 20 * msg.value * rate / msg.value * rate == 20
                            require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), (msg.value * rate) + (20 * msg.value * rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, arg1);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, address(arg1), msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
    else:
        require arg1
        if not stor9[address(arg1)]:
            revert with 0, 'Only whitelisted'
        else:
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
                if msg.value * rate < sub_3c2483ca:
                    revert with 0, 'Min purchase 100 kick'
                else:
                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                    if sub_6155037c + (msg.value * rate) > sub_fec8e4a5:
                        revert with 0, 'Cap has been reached'
                    else:
                        require block.timestamp >= openingTime
                        require block.timestamp <= closingTime
                        require arg1
                        require msg.value
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 10 * msg.value * rate / msg.value * rate == 10
                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), (msg.value * rate) + (10 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, arg1);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require msg.value * rate >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 20 * msg.value * rate / msg.value * rate == 20
                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (msg.value * rate) + (20 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
            else:
                if 0 < sub_3c2483ca:
                    revert with 0, 'Min purchase 100 kick'
                else:
                    require sub_6155037c >= sub_6155037c
                    if sub_6155037c > sub_fec8e4a5:
                        revert with 0, 'Cap has been reached'
                    else:
                        require block.timestamp >= openingTime
                        require block.timestamp <= closingTime
                        require arg1
                        require msg.value
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 10 * msg.value * rate / msg.value * rate == 10
                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), (msg.value * rate) + (10 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, arg1);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require msg.value * rate >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, address(arg1), msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 20 * msg.value * rate / msg.value * rate == 20
                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), (msg.value * rate) + (20 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, address(arg1), msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, arg1
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, arg1
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
}

function _fallback() payable {
    stor0++
    if not KYC:
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
            if msg.value * rate < sub_3c2483ca:
                revert with 0, 'Min purchase 100 kick'
            else:
                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                if sub_6155037c + (msg.value * rate) > sub_fec8e4a5:
                    revert with 0, 'Cap has been reached'
                else:
                    require block.timestamp >= openingTime
                    require block.timestamp <= closingTime
                    require msg.sender
                    require msg.value
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 10 * msg.value * rate / msg.value * rate == 10
                                require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, (msg.value * rate) + (10 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 20 * msg.value * rate / msg.value * rate == 20
                            require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, msg.sender, (msg.value * rate) + (20 * msg.value * rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, msg.sender);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
        else:
            if 0 < sub_3c2483ca:
                revert with 0, 'Min purchase 100 kick'
            else:
                require sub_6155037c >= sub_6155037c
                if sub_6155037c > sub_fec8e4a5:
                    revert with 0, 'Cap has been reached'
                else:
                    require block.timestamp >= openingTime
                    require block.timestamp <= closingTime
                    require msg.sender
                    require msg.value
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 10 * msg.value * rate / msg.value * rate == 10
                                require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, (msg.value * rate) + (10 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                    else:
                        if msg.value * rate:
                            require msg.value * rate
                            require 20 * msg.value * rate / msg.value * rate == 20
                            require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, msg.sender, (msg.value * rate) + (20 * msg.value * rate / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, msg.sender);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                        else:
                            require msg.value * rate >= msg.value * rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args tokenWalletAddress, msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if msg.value:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                    if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 10 * msg.value * rate / msg.value * rate == 10
                                                if not 10 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        if msg.value * rate:
                                            require msg.value * rate
                                            require 20 * msg.value * rate / msg.value * rate == 20
                                            if not 20 * msg.value * rate / 100:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            sub_6155037c += msg.value * rate
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require sub_6155037c >= sub_6155037c
                                    if sub_6155037c > sub_941f0c87:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_72f4bd3f:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
    else:
        require msg.sender
        if not stor9[address(msg.sender)]:
            revert with 0, 'Only whitelisted'
        else:
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
                if msg.value * rate < sub_3c2483ca:
                    revert with 0, 'Min purchase 100 kick'
                else:
                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                    if sub_6155037c + (msg.value * rate) > sub_fec8e4a5:
                        revert with 0, 'Cap has been reached'
                    else:
                        require block.timestamp >= openingTime
                        require block.timestamp <= closingTime
                        require msg.sender
                        require msg.value
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 10 * msg.value * rate / msg.value * rate == 10
                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, msg.sender, (msg.value * rate) + (10 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, msg.sender);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require msg.value * rate >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 20 * msg.value * rate / msg.value * rate == 20
                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, (msg.value * rate) + (20 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
            else:
                if 0 < sub_3c2483ca:
                    revert with 0, 'Min purchase 100 kick'
                else:
                    require sub_6155037c >= sub_6155037c
                    if sub_6155037c > sub_fec8e4a5:
                        revert with 0, 'Cap has been reached'
                    else:
                        require block.timestamp >= openingTime
                        require block.timestamp <= closingTime
                        require msg.sender
                        require msg.value
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                if msg.value * rate:
                                    require msg.value * rate
                                    require 10 * msg.value * rate / msg.value * rate == 10
                                    require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, msg.sender, (msg.value * rate) + (10 * msg.value * rate / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, (msg.value * rate) + (10 * msg.value * rate / 100), msg.sender, msg.sender);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require msg.value * rate >= msg.value * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args tokenWalletAddress, msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        if msg.value:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    if msg.value * rate:
                                                        require msg.value * rate
                                                        require 10 * msg.value * rate / msg.value * rate == 10
                                                        if not 10 * msg.value * rate / 100:
                                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                            sub_6155037c += msg.value * rate
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                        else:
                                                            emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                            require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                            require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                            sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                            call walletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require stor0 == stor0
                                                    else:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 20 * msg.value * rate / msg.value * rate == 20
                                                    if not 20 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_941f0c87:
                                                require sub_6155037c >= sub_6155037c
                                                if sub_6155037c > sub_72f4bd3f:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    require sub_6155037c >= sub_6155037c
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                        else:
                            if msg.value * rate:
                                require msg.value * rate
                                require 20 * msg.value * rate / msg.value * rate == 20
                                require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, (msg.value * rate) + (20 * msg.value * rate / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, (msg.value * rate) + (20 * msg.value * rate / 100), msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require msg.value * rate >= msg.value * rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args tokenWalletAddress, msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if msg.value:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                        if sub_6155037c + (msg.value * rate) > sub_941f0c87:
                                            require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                            if sub_6155037c + (msg.value * rate) > sub_72f4bd3f:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                if msg.value * rate:
                                                    require msg.value * rate
                                                    require 10 * msg.value * rate / msg.value * rate == 10
                                                    if not 10 * msg.value * rate / 100:
                                                        require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                        sub_6155037c += msg.value * rate
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                    else:
                                                        emit 0x11a03955: msg.value, 10 * msg.value * rate / 100, msg.sender, msg.sender
                                                        require (msg.value * rate) + (10 * msg.value * rate / 100) >= msg.value * rate
                                                        require sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100) >= sub_6155037c
                                                        sub_6155037c = sub_6155037c + (msg.value * rate) + (10 * msg.value * rate / 100)
                                                        call walletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require stor0 == stor0
                                                else:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                        else:
                                            if msg.value * rate:
                                                require msg.value * rate
                                                require 20 * msg.value * rate / msg.value * rate == 20
                                                if not 20 * msg.value * rate / 100:
                                                    require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                    sub_6155037c += msg.value * rate
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                                else:
                                                    emit 0x11a03955: msg.value, 20 * msg.value * rate / 100, msg.sender, msg.sender
                                                    require (msg.value * rate) + (20 * msg.value * rate / 100) >= msg.value * rate
                                                    require sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100) >= sub_6155037c
                                                    sub_6155037c = sub_6155037c + (msg.value * rate) + (20 * msg.value * rate / 100)
                                                    call walletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require stor0 == stor0
                                            else:
                                                require sub_6155037c + (msg.value * rate) >= sub_6155037c
                                                sub_6155037c += msg.value * rate
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require sub_6155037c >= sub_6155037c
                                        if sub_6155037c > sub_941f0c87:
                                            require sub_6155037c >= sub_6155037c
                                            if sub_6155037c > sub_72f4bd3f:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                            else:
                                                require sub_6155037c >= sub_6155037c
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require sub_6155037c >= sub_6155037c
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
}



}
