contract main {




// =====================  Runtime code  =====================


#
#  - trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11)
#
address owner;
address tradeTrackerAddress;
address feeModifiersAddress;
address feeAccount;
uint256 feeMake;
uint256 feeTake;
mapping of uint256 tokens;
mapping of uint8 stor7;
mapping of uint256 amountFilled;

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) {
    return amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)]
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeMake() {
    return feeMake
}

function feeModifiers() {
    return feeModifiersAddress
}

function feeAccount() {
    return feeAccount
}

function owner() {
    return owner
}

function sub_8f13f48e(?) {
    return bool(stor7[arg1])
}

function feeTake() {
    return feeTake
}

function tradeTracker() {
    return tradeTrackerAddress
}

function orderFills(bytes32 arg1) {
    return amountFilled[arg1]
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function changeFeeAccount(address arg1) {
    require msg.sender == owner
    require arg1
    feeAccount = arg1
}

function changeFeeMake(uint256 arg1) {
    require msg.sender == owner
    require arg1 != feeMake
    feeMake = arg1
}

function changeFeeTake(uint256 arg1) {
    require msg.sender == owner
    require arg1 != feeTake
    feeTake = arg1
}

function changeTradeTracker(address arg1) {
    require msg.sender == owner
    require tradeTrackerAddress != arg1
    tradeTrackerAddress = arg1
}

function changeFeeModifiers(address arg1) {
    require msg.sender == owner
    require feeModifiersAddress != arg1
    feeModifiersAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getOrderHash(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) {
    return sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, uint32(arg7), uint128(arg7))
}

function deposit() payable {
    require msg.value + tokens[0][msg.sender] >= tokens[0][msg.sender]
    tokens[0][msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + tokens[0][msg.sender]);
}

function withdraw(uint256 arg1) {
    require arg1 <= tokens[0][msg.sender]
    require arg1 <= tokens[0][msg.sender]
    tokens[0][msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(0, msg.sender, arg1, tokens[0][msg.sender]);
}

function getAccountFeeModifiers(address arg1) {
    if not feeModifiersAddress:
        return 0
    require ext_code.size(feeModifiersAddress)
    call feeModifiersAddress.accountFeeModifiers(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= tokens[address(arg1)][msg.sender]
    require arg2 <= tokens[address(arg1)][msg.sender]
    tokens[address(arg1)][msg.sender] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][msg.sender]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][msg.sender] >= tokens[address(arg1)][msg.sender]
    tokens[address(arg1)][msg.sender] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][msg.sender]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, msg.sender)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == msg.sender
    stor7[this.address][arg1][arg2][arg3][arg4][arg5][arg6][msg.sender] = 1
    emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9, sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, msg.sender), amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][msg.sender]);
}

function calculateTakerFee(address arg1, uint256 arg2) {
    if not arg2:
        if feeModifiersAddress:
            require ext_code.size(feeModifiersAddress)
            call feeModifiersAddress.accountFeeModifiers(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            return 0
        else:
            return 0
    require feeTake * arg2 / arg2 == feeTake
    if not feeModifiersAddress:
        return (feeTake * arg2 / 10^18)
    require ext_code.size(feeModifiersAddress)
    call feeModifiersAddress.accountFeeModifiers(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if feeTake * arg2 / 10^18 <= 0:
        return (feeTake * arg2 / 10^18)
    if ext_call.return_data[0] <= 0:
        return (feeTake * arg2 / 10^18)
    if ext_call.return_data[0] > 100:
        return (feeTake * arg2 / 10^18)
    if not feeTake * arg2 / 10^18:
        return 0
    require (100 * feeTake * arg2 / 10^18) - (ext_call.return_data[0] * feeTake * arg2 / 10^18) / feeTake * arg2 / 10^18 == -ext_call.return_data[0] + 100
    return ((100 * feeTake * arg2 / 10^18) - (ext_call.return_data[0] * feeTake * arg2 / 10^18) / 100)
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, uint32(arg7), uint128(arg7))), arg8 << 248, arg9, arg10) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg7:
        return 0
    if stor7[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)]:
        return 0
    if block.number > arg5:
        return 0
    if arg2 <= amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)]:
        return 0
    require amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] <= arg2
    if not tokens[address(arg3)][address(arg7)]:
        require arg4
        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] >= 0 / arg4:
            return (0 / arg4)
    else:
        require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
        require arg4
        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
            return (arg2 * tokens[address(arg3)][address(arg7)] / arg4)
    return (arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)])
}

function validateTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    if not arg11:
        if feeModifiersAddress:
            require ext_code.size(feeModifiersAddress)
            call feeModifiersAddress.accountFeeModifiers(address arg1) with:
                 gas gas_remaining wei
                args arg12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
        require arg11 >= arg11
        if arg11 > tokens[address(arg1)][address(arg12)]:
            return 1
    else:
        require feeTake * arg11 / arg11 == feeTake
        if not feeModifiersAddress:
            require (feeTake * arg11 / 10^18) + arg11 >= arg11
            if (feeTake * arg11 / 10^18) + arg11 > tokens[address(arg1)][address(arg12)]:
                return 1
        else:
            require ext_code.size(feeModifiersAddress)
            call feeModifiersAddress.accountFeeModifiers(address arg1) with:
                 gas gas_remaining wei
                args arg12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if feeTake * arg11 / 10^18 <= 0:
                require (feeTake * arg11 / 10^18) + arg11 >= arg11
                if (feeTake * arg11 / 10^18) + arg11 > tokens[address(arg1)][address(arg12)]:
                    return 1
            else:
                if ext_call.return_data[0] <= 0:
                    require (feeTake * arg11 / 10^18) + arg11 >= arg11
                    if (feeTake * arg11 / 10^18) + arg11 > tokens[address(arg1)][address(arg12)]:
                        return 1
                else:
                    if ext_call.return_data[0] > 100:
                        require (feeTake * arg11 / 10^18) + arg11 >= arg11
                        if (feeTake * arg11 / 10^18) + arg11 > tokens[address(arg1)][address(arg12)]:
                            return 1
                    else:
                        if not feeTake * arg11 / 10^18:
                            require arg11 >= arg11
                            if arg11 > tokens[address(arg1)][address(arg12)]:
                                return 1
                        else:
                            require (100 * feeTake * arg11 / 10^18) - (ext_call.return_data[0] * feeTake * arg11 / 10^18) / feeTake * arg11 / 10^18 == -ext_call.return_data[0] + 100
                            require ((100 * feeTake * arg11 / 10^18) - (ext_call.return_data[0] * feeTake * arg11 / 10^18) / 100) + arg11 >= arg11
                            if ((100 * feeTake * arg11 / 10^18) - (ext_call.return_data[0] * feeTake * arg11 / 10^18) / 100) + arg11 > tokens[address(arg1)][address(arg12)]:
                                return 1
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, uint32(arg7), uint128(arg7))), arg8 << 248, arg9, arg10) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg7:
        if 0 >= arg11:
            return 0
    else:
        if stor7[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)]:
            if 0 >= arg11:
                return 0
        else:
            if block.number > arg5:
                if 0 >= arg11:
                    return 0
            else:
                if arg2 <= amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)]:
                    if 0 >= arg11:
                        return 0
                else:
                    require amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] <= arg2
                    if not tokens[address(arg3)][address(arg7)]:
                        require arg4
                        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] >= 0 / arg4:
                            if 0 / arg4 >= arg11:
                                return 0
                        else:
                            if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] >= arg11:
                                return 0
                    else:
                        require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
                        require arg4
                        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
                            if arg2 * tokens[address(arg3)][address(arg7)] / arg4 >= arg11:
                                return 0
                        else:
                            if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][uint32(arg7)][uint128(arg7)] >= arg11:
                                return 0
    return 2
}



}
