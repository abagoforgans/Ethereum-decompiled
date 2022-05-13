contract main {




// =====================  Runtime code  =====================


address defaultTokenAddress;
address walletAddress;
address owner;
uint256 tradingFee;
uint8 stor4;
uint256 minPurchase;
mapping of uint256 tokensBought;
mapping of uint256 sub_9e3ed8cf;
mapping of uint8 stor8;
mapping of uint256 tokenDecimals;
mapping of uint256 sub_dcd88878;
mapping of uint256 sub_b4f73242;

function tokensBought(address arg1) {
    return tokensBought[arg1]
}

function minPurchase() {
    return minPurchase
}

function wallet() {
    return walletAddress
}

function tradingFee() {
    return tradingFee
}

function paused() {
    return bool(stor4)
}

function defaultToken() {
    return defaultTokenAddress
}

function owner() {
    return owner
}

function tokenDecimals(address arg1) {
    return tokenDecimals[arg1]
}

function sub_9e3ed8cf(?) {
    return sub_9e3ed8cf[arg1]
}

function sub_b4f73242(?) {
    return sub_b4f73242[arg1]
}

function sub_b64df19b(?) {
    return bool(stor8[arg1])
}

function sub_dcd88878(?) {
    return sub_dcd88878[arg1]
}

function sub_aabff62b(?) {
    require msg.sender == owner
    tradingFee = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function setMinPurchase(uint256 arg1) {
    require msg.sender == owner
    minPurchase = arg1
}

function sub_33934054(?) {
    require msg.sender == owner
    stor8[address(arg2)] = uint8(arg1)
}

function sub_5c9c3994(?) {
    require msg.sender == owner
    sub_9e3ed8cf[address(arg2)] = arg1
}

function sub_ce79db68(?) {
    require msg.sender == owner
    sub_dcd88878[address(arg2)] = arg1
}

function unpause() {
    require msg.sender == owner
    require stor4
    stor4 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor4
    stor4 = 1
    emit Pause()
}

function sub_713785be(?) {
    require msg.sender == owner
    sub_9e3ed8cf[address(arg1)] = arg2
    tokenDecimals[address(arg1)] = arg3
    stor8[address(arg1)] = 1
    tokensBought[address(arg1)] = 0
}

function _withdrawWei(uint256 arg1) {
    require msg.sender == owner
    call walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _withdrawAllFunds() {
    require msg.sender == owner
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_01397a92(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c6fb092b(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require not stor4
    require msg.sender
    require defaultTokenAddress
    require msg.value
    require stor8[stor0]
    require msg.value > 0
    require msg.value >= minPurchase
    require msg.value > 0
    require sub_9e3ed8cf[stor0] > 0
    if not msg.value:
        require 0 <= msg.value
        if not msg.value:
            require ext_code.size(defaultTokenAddress)
            call defaultTokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                require ext_code.size(defaultTokenAddress)
                call defaultTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                require tokensBought[stor0] >= tokensBought[stor0]
            require sub_9e3ed8cf[stor0]
            require ext_call.return_data[0] / sub_9e3ed8cf[stor0] <= msg.value
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[stor0]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(defaultTokenAddress)
            call defaultTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, msg.sender);
            require tokensBought[stor0] + ext_call.return_data[0] >= tokensBought[stor0]
            tokensBought[stor0] += ext_call.return_data[0]
        else:
            require msg.value
            require msg.value * sub_9e3ed8cf[stor0] / msg.value == sub_9e3ed8cf[stor0]
            require ext_code.size(defaultTokenAddress)
            call defaultTokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if msg.value * sub_9e3ed8cf[stor0] <= ext_call.return_data[0]:
                require ext_code.size(defaultTokenAddress)
                call defaultTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * sub_9e3ed8cf[stor0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, msg.value * sub_9e3ed8cf[stor0], msg.sender, msg.sender);
                require tokensBought[stor0] + (msg.value * sub_9e3ed8cf[stor0]) >= tokensBought[stor0]
                tokensBought[stor0] += msg.value * sub_9e3ed8cf[stor0]
            else:
                require sub_9e3ed8cf[stor0]
                require ext_call.return_data[0] / sub_9e3ed8cf[stor0] <= msg.value
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[stor0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(defaultTokenAddress)
                call defaultTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, msg.sender);
                require tokensBought[stor0] + ext_call.return_data[0] >= tokensBought[stor0]
                tokensBought[stor0] += ext_call.return_data[0]
    else:
        require msg.value
        require msg.value * tradingFee / msg.value == tradingFee
        require msg.value * tradingFee / 10^18 <= msg.value
        if not msg.value - (msg.value * tradingFee / 10^18):
            require ext_code.size(defaultTokenAddress)
            call defaultTokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                require ext_code.size(defaultTokenAddress)
                call defaultTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                require tokensBought[stor0] >= tokensBought[stor0]
            require sub_9e3ed8cf[stor0]
            require ext_call.return_data[0] / sub_9e3ed8cf[stor0] <= msg.value
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[stor0]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(defaultTokenAddress)
            call defaultTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, msg.sender);
            require tokensBought[stor0] + ext_call.return_data[0] >= tokensBought[stor0]
            tokensBought[stor0] += ext_call.return_data[0]
        else:
            require msg.value - (msg.value * tradingFee / 10^18)
            require (msg.value * sub_9e3ed8cf[stor0]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[stor0]) / msg.value - (msg.value * tradingFee / 10^18) == sub_9e3ed8cf[stor0]
            require ext_code.size(defaultTokenAddress)
            call defaultTokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (msg.value * sub_9e3ed8cf[stor0]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[stor0]) <= ext_call.return_data[0]:
                require ext_code.size(defaultTokenAddress)
                call defaultTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (msg.value * sub_9e3ed8cf[stor0]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[stor0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, (msg.value * sub_9e3ed8cf[stor0]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[stor0]), msg.sender, msg.sender);
                require tokensBought[stor0] + (msg.value * sub_9e3ed8cf[stor0]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[stor0]) >= tokensBought[stor0]
                tokensBought[stor0] = tokensBought[stor0] + (msg.value * sub_9e3ed8cf[stor0]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[stor0])
            else:
                require sub_9e3ed8cf[stor0]
                require ext_call.return_data[0] / sub_9e3ed8cf[stor0] <= msg.value
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[stor0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(defaultTokenAddress)
                call defaultTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, msg.sender);
                require tokensBought[stor0] + ext_call.return_data[0] >= tokensBought[stor0]
                tokensBought[stor0] += ext_call.return_data[0]
}

function buyTokens(address arg1, address arg2) payable {
    require not stor4
    require arg1
    require arg2
    require msg.value
    require stor8[address(arg2)]
    require msg.value > 0
    require msg.value >= minPurchase
    require msg.value > 0
    require sub_9e3ed8cf[address(arg2)] > 0
    if not msg.value:
        require 0 <= msg.value
        if not msg.value:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                require tokensBought[address(arg2)] >= tokensBought[address(arg2)]
            require sub_9e3ed8cf[address(arg2)]
            require ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)] <= msg.value
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, arg1);
            require tokensBought[address(arg2)] + ext_call.return_data[0] >= tokensBought[address(arg2)]
            tokensBought[address(arg2)] += ext_call.return_data[0]
        else:
            require msg.value
            require msg.value * sub_9e3ed8cf[address(arg2)] / msg.value == sub_9e3ed8cf[address(arg2)]
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if msg.value * sub_9e3ed8cf[address(arg2)] <= ext_call.return_data[0]:
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * sub_9e3ed8cf[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, msg.value * sub_9e3ed8cf[address(arg2)], msg.sender, arg1);
                require tokensBought[address(arg2)] + (msg.value * sub_9e3ed8cf[address(arg2)]) >= tokensBought[address(arg2)]
                tokensBought[address(arg2)] += msg.value * sub_9e3ed8cf[address(arg2)]
            else:
                require sub_9e3ed8cf[address(arg2)]
                require ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)] <= msg.value
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, arg1);
                require tokensBought[address(arg2)] + ext_call.return_data[0] >= tokensBought[address(arg2)]
                tokensBought[address(arg2)] += ext_call.return_data[0]
    else:
        require msg.value
        require msg.value * tradingFee / msg.value == tradingFee
        require msg.value * tradingFee / 10^18 <= msg.value
        if not msg.value - (msg.value * tradingFee / 10^18):
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                require tokensBought[address(arg2)] >= tokensBought[address(arg2)]
            require sub_9e3ed8cf[address(arg2)]
            require ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)] <= msg.value
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, arg1);
            require tokensBought[address(arg2)] + ext_call.return_data[0] >= tokensBought[address(arg2)]
            tokensBought[address(arg2)] += ext_call.return_data[0]
        else:
            require msg.value - (msg.value * tradingFee / 10^18)
            require (msg.value * sub_9e3ed8cf[address(arg2)]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[address(arg2)]) / msg.value - (msg.value * tradingFee / 10^18) == sub_9e3ed8cf[address(arg2)]
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (msg.value * sub_9e3ed8cf[address(arg2)]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[address(arg2)]) <= ext_call.return_data[0]:
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (msg.value * sub_9e3ed8cf[address(arg2)]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[address(arg2)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, (msg.value * sub_9e3ed8cf[address(arg2)]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[address(arg2)]), msg.sender, arg1);
                require tokensBought[address(arg2)] + (msg.value * sub_9e3ed8cf[address(arg2)]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[address(arg2)]) >= tokensBought[address(arg2)]
                tokensBought[address(arg2)] = tokensBought[address(arg2)] + (msg.value * sub_9e3ed8cf[address(arg2)]) - (msg.value * tradingFee / 10^18 * sub_9e3ed8cf[address(arg2)])
            else:
                require sub_9e3ed8cf[address(arg2)]
                require ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)] <= msg.value
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] / sub_9e3ed8cf[address(arg2)]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, arg1);
                require tokensBought[address(arg2)] + ext_call.return_data[0] >= tokensBought[address(arg2)]
                tokensBought[address(arg2)] += ext_call.return_data[0]
}



}
