contract main {




// =====================  Runtime code  =====================


address defaultTokenAddress;
address walletAddress;
address owner;
address managerAddress;
uint256 tradingFee;
uint8 stor5;
uint256 minPurchase;
uint256 exp;
uint256 sub_6caae832;
mapping of uint256 tokensBought;
mapping of uint256 sub_9e3ed8cf;
mapping of uint256 sub_11fc559f;
mapping of uint8 stor12;
mapping of uint256 tokenDecimals;
mapping of uint256 sub_dcd88878;
mapping of uint256 sub_b4f73242;
mapping of uint256 sub_98ade6e4;

function sub_11fc559f(?) {
    require calldata.size - 4 >= 32
    return sub_11fc559f[arg1]
}

function tokensBought(address arg1) {
    require calldata.size - 4 >= 32
    return tokensBought[arg1]
}

function minPurchase() {
    return minPurchase
}

function manager() {
    return managerAddress
}

function wallet() {
    return walletAddress
}

function tradingFee() {
    return tradingFee
}

function paused() {
    return bool(stor5)
}

function sub_6caae832(?) {
    return sub_6caae832
}

function defaultToken() {
    return defaultTokenAddress
}

function owner() {
    return owner
}

function tokenDecimals(address arg1) {
    require calldata.size - 4 >= 32
    return tokenDecimals[arg1]
}

function sub_98ade6e4(?) {
    require calldata.size - 4 >= 32
    return sub_98ade6e4[arg1]
}

function sub_9e3ed8cf(?) {
    require calldata.size - 4 >= 32
    return sub_9e3ed8cf[arg1]
}

function exp() {
    return exp
}

function sub_b4f73242(?) {
    require calldata.size - 4 >= 32
    return sub_b4f73242[arg1]
}

function sub_b64df19b(?) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_dcd88878(?) {
    require calldata.size - 4 >= 32
    return sub_dcd88878[arg1]
}

function unpause() {
    if owner != msg.sender:
        require msg.sender == managerAddress
    require stor5
    stor5 = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        require msg.sender == managerAddress
    require not stor5
    stor5 = 1
    emit Pause()
}

function sub_15912695(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == managerAddress
    exp = arg1
}

function sub_aabff62b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == managerAddress
    tradingFee = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == managerAddress
    owner = arg1
}

function changeLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == managerAddress
    sub_6caae832 = arg1
}

function changeWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == managerAddress
    walletAddress = arg1
}

function setMinPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == managerAddress
    minPurchase = arg1
}

function sub_54220c5d(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
    sub_11fc559f[address(arg2)] = arg1
}

function sub_5c9c3994(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
    sub_9e3ed8cf[address(arg2)] = arg1
}

function sub_9b8267ed(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
    sub_b4f73242[address(arg2)] = arg1
}

function sub_a2788b79(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
    tokensBought[address(arg2)] = arg1
}

function sub_ce79db68(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
    sub_dcd88878[address(arg2)] = arg1
}

function sub_33934054(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
    stor12[address(arg2)] = uint8(arg1)
}

function sub_57d214de(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
    tokenDecimals[address(arg2)] = arg1
}

function _withdrawAllFunds() {
    if owner != msg.sender:
        require msg.sender == managerAddress
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _withdrawWei(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == managerAddress
    call walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_01397a92(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_de31c149(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        require msg.sender == managerAddress
    sub_9e3ed8cf[address(arg1)] = arg2
    sub_11fc559f[address(arg1)] = arg2
    sub_b4f73242[address(arg1)] = arg3
    tokenDecimals[address(arg1)] = arg4
    stor12[address(arg1)] = 1
    tokensBought[address(arg1)] = 0
}

function sub_c6fb092b(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == managerAddress
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
    require not stor5
    if not msg.value:
        call owner with:
             gas 2300 wei
    else:
        require msg.value
        require msg.value * tradingFee / msg.value == tradingFee
        call owner with:
           value msg.value * tradingFee / 10^18 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_583c66e2(?) {
    require calldata.size - 4 >= 160
    require arg1 > 0
    require arg2 > 0
    if not arg1:
        if 0 <= arg1:
            if arg4 == 18:
                if not arg1:
                    return 0
                if arg1:
                    if arg1 * arg2 / arg1 == arg2:
                        return (arg1 * arg2)
            else:
                if arg5^arg4:
                    if not arg1 / arg5^arg4:
                        return 0
                    if arg1 / arg5^arg4:
                        if arg1 / arg5^arg4 * arg2 / arg1 / arg5^arg4 == arg2:
                            return (arg1 / arg5^arg4 * arg2)
    else:
        if arg1:
            if arg1 * arg3 / arg1 == arg3:
                if arg1 * arg3 / 10^18 <= arg1:
                    if arg4 == 18:
                        if not arg1 - (arg1 * arg3 / 10^18):
                            return 0
                        if arg1 - (arg1 * arg3 / 10^18):
                            if (arg1 * arg2) - (arg1 * arg3 / 10^18 * arg2) / arg1 - (arg1 * arg3 / 10^18) == arg2:
                                return ((arg1 * arg2) - (arg1 * arg3 / 10^18 * arg2))
                    else:
                        if arg5^arg4:
                            if not arg1 - (arg1 * arg3 / 10^18) / arg5^arg4:
                                return 0
                            if arg1 - (arg1 * arg3 / 10^18) / arg5^arg4:
                                if arg1 - (arg1 * arg3 / 10^18) / arg5^arg4 * arg2 / arg1 - (arg1 * arg3 / 10^18) / arg5^arg4 == arg2:
                                    return (arg1 - (arg1 * arg3 / 10^18) / arg5^arg4 * arg2)
    revert
}

function sellTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor5
    require sub_98ade6e4[address(msg.sender)] < sub_6caae832
    require arg2 < sub_b4f73242[address(arg1)]
    require tokensBought[address(arg1)] > arg2
    require sub_98ade6e4[address(msg.sender)] + 1 >= sub_98ade6e4[address(msg.sender)]
    sub_98ade6e4[address(msg.sender)]++
    require arg2 <= tokensBought[address(arg1)]
    tokensBought[address(arg1)] -= arg2
    require arg2 > 0
    require sub_11fc559f[address(arg1)] > 0
    if tokenDecimals[address(arg1)]:
        require tokenDecimals[address(arg1)]
        require tokenDecimals[address(arg1)] * exp / tokenDecimals[address(arg1)] == exp
    require sub_11fc559f[address(arg1)]
    if not arg2 / sub_11fc559f[address(arg1)]:
        require 0 <= arg2 / sub_11fc559f[address(arg1)]
        require arg2 / sub_11fc559f[address(arg1)] < eth.balance(this.address)
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value arg2 / sub_11fc559f[address(arg1)] wei
             gas 2300 * is_zero(value) wei
    else:
        require arg2 / sub_11fc559f[address(arg1)]
        require arg2 / sub_11fc559f[address(arg1)] * tradingFee / arg2 / sub_11fc559f[address(arg1)] == tradingFee
        require arg2 / sub_11fc559f[address(arg1)] * tradingFee / 10^18 <= arg2 / sub_11fc559f[address(arg1)]
        require (arg2 / sub_11fc559f[address(arg1)]) - (arg2 / sub_11fc559f[address(arg1)] * tradingFee / 10^18) < eth.balance(this.address)
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value (arg2 / sub_11fc559f[address(arg1)]) - (arg2 / sub_11fc559f[address(arg1)] * tradingFee / 10^18) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require not stor5
    require arg1
    require arg2
    require msg.value
    require stor12[address(arg2)]
    require msg.value > 0
    require msg.value >= minPurchase
    require msg.value > 0
    require sub_9e3ed8cf[address(arg2)] > 0
    if not msg.value:
        require 0 <= msg.value
        if tokenDecimals[address(arg2)] == 18:
            if not msg.value:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
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
                staticcall arg2.0x70a08231 with:
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
            require exp^tokenDecimals[address(arg2)]
            if not msg.value / exp^tokenDecimals[address(arg2)]:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
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
                require msg.value / exp^tokenDecimals[address(arg2)]
                require msg.value / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)] / msg.value / exp^tokenDecimals[address(arg2)] == sub_9e3ed8cf[address(arg2)]
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.value / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)] <= ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), msg.value / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, msg.value / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)], msg.sender, arg1);
                    require tokensBought[address(arg2)] + (msg.value / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)]) >= tokensBought[address(arg2)]
                    tokensBought[address(arg2)] += msg.value / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)]
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
        if tokenDecimals[address(arg2)] == 18:
            if not msg.value - (msg.value * tradingFee / 10^18):
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
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
                staticcall arg2.0x70a08231 with:
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
        else:
            require exp^tokenDecimals[address(arg2)]
            if not msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)]:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
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
                require msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)]
                require msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)] / msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)] == sub_9e3ed8cf[address(arg2)]
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)] <= ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)], msg.sender, arg1);
                    require tokensBought[address(arg2)] + (msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)]) >= tokensBought[address(arg2)]
                    tokensBought[address(arg2)] += msg.value - (msg.value * tradingFee / 10^18) / exp^tokenDecimals[address(arg2)] * sub_9e3ed8cf[address(arg2)]
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
