contract main {


// =======================  Init code  ======================


address stor0;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = stor0
    return code.data[192 len 14187]
}



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
    return amountFilled[address(this.address)][uint64(arg1)][arg2][arg3][arg4][arg5][arg6][arg7]
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
    return sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, arg7)
}

function deposit() payable {
    require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] += msg.value
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
}

function getAccountFeeModifiers(address arg1) {
    if not feeModifiersAddress:
        return 0
    require ext_code.size(feeModifiersAddress)
    call feeModifiersAddress.accountFeeModifiers(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32]
}

function withdraw(uint256 arg1) {
    require tokens[0][address(msg.sender)] >= arg1
    require arg1 <= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][address(msg.sender)]);
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, msg.sender)), arg7 << 248, arg8, arg9) 
    require erecover.result
    require address(signer) == msg.sender
    stor7[address(this.address)][uint64(arg1)][arg2][arg3][arg4][arg5][arg6][msg.sender] = 1
    emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9, sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, msg.sender), amountFilled[address(this.address)][uint64(arg1)][arg2][arg3][arg4][arg5][arg6][msg.sender]);
}

function calculateTakerFee(address arg1, uint256 arg2) {
    if not arg2:
        if feeModifiersAddress:
            require ext_code.size(feeModifiersAddress)
            call feeModifiersAddress.accountFeeModifiers(address arg1) with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            return 0
        else:
            return 0
    require arg2
    require arg2 * feeTake / arg2 == feeTake
    if not feeModifiersAddress:
        return (arg2 * feeTake / 10^18)
    require ext_code.size(feeModifiersAddress)
    call feeModifiersAddress.accountFeeModifiers(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if arg2 * feeTake / 10^18 <= 0:
        return (arg2 * feeTake / 10^18)
    if ext_call.return_data[0] <= 0:
        return (arg2 * feeTake / 10^18)
    if ext_call.return_data[0] > 100:
        return (arg2 * feeTake / 10^18)
    if not arg2 * feeTake / 10^18:
        return 0
    require arg2 * feeTake / 10^18
    require (100 * arg2 * feeTake / 10^18) - (ext_call.return_data[0] * arg2 * feeTake / 10^18) / arg2 * feeTake / 10^18 == -ext_call.return_data[0] + 100
    return ((100 * arg2 * feeTake / 10^18) - (ext_call.return_data[0] * arg2 * feeTake / 10^18) / 100)
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), arg8 << 248, arg9, arg10) 
    require erecover.result
    if address(signer) != arg7:
        return 0
    if stor7[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]:
        return 0
    if block.number > arg5:
        return 0
    if arg2 <= amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]:
        return 0
    require amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] <= arg2
    if not tokens[address(arg3)][address(arg7)]:
        require arg4
        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] >= 0 / arg4:
            return (0 / arg4)
    else:
        require tokens[address(arg3)][address(arg7)]
        require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
        require arg4
        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
            return (tokens[address(arg3)][address(arg7)] * arg2 / arg4)
    return (arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7])
}

function validateTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    if not arg11:
        if feeModifiersAddress:
            require ext_code.size(feeModifiersAddress)
            call feeModifiersAddress.accountFeeModifiers(address arg1) with:
                 gas gas_remaining - 710 wei
                args arg12
            require ext_call.success
        require arg11 >= arg11
        if arg11 > tokens[address(arg1)][address(arg12)]:
            return 1
    else:
        require arg11
        require arg11 * feeTake / arg11 == feeTake
        if not feeModifiersAddress:
            require arg11 + (arg11 * feeTake / 10^18) >= arg11
            if arg11 + (arg11 * feeTake / 10^18) > tokens[address(arg1)][address(arg12)]:
                return 1
        else:
            require ext_code.size(feeModifiersAddress)
            call feeModifiersAddress.accountFeeModifiers(address arg1) with:
                 gas gas_remaining - 710 wei
                args arg12
            require ext_call.success
            if arg11 * feeTake / 10^18 <= 0:
                require arg11 + (arg11 * feeTake / 10^18) >= arg11
                if arg11 + (arg11 * feeTake / 10^18) > tokens[address(arg1)][address(arg12)]:
                    return 1
            else:
                if ext_call.return_data[0] <= 0:
                    require arg11 + (arg11 * feeTake / 10^18) >= arg11
                    if arg11 + (arg11 * feeTake / 10^18) > tokens[address(arg1)][address(arg12)]:
                        return 1
                else:
                    if ext_call.return_data[0] > 100:
                        require arg11 + (arg11 * feeTake / 10^18) >= arg11
                        if arg11 + (arg11 * feeTake / 10^18) > tokens[address(arg1)][address(arg12)]:
                            return 1
                    else:
                        if not arg11 * feeTake / 10^18:
                            require arg11 >= arg11
                            if arg11 > tokens[address(arg1)][address(arg12)]:
                                return 1
                        else:
                            require arg11 * feeTake / 10^18
                            require (100 * arg11 * feeTake / 10^18) - (ext_call.return_data[0] * arg11 * feeTake / 10^18) / arg11 * feeTake / 10^18 == -ext_call.return_data[0] + 100
                            require arg11 + ((100 * arg11 * feeTake / 10^18) - (ext_call.return_data[0] * arg11 * feeTake / 10^18) / 100) >= arg11
                            if arg11 + ((100 * arg11 * feeTake / 10^18) - (ext_call.return_data[0] * arg11 * feeTake / 10^18) / 100) > tokens[address(arg1)][address(arg12)]:
                                return 1
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), arg8 << 248, arg9, arg10) 
    require erecover.result
    if address(signer) != arg7:
        if 0 >= arg11:
            return 0
    else:
        if stor7[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]:
            if 0 >= arg11:
                return 0
        else:
            if block.number > arg5:
                if 0 >= arg11:
                    return 0
            else:
                if arg2 <= amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7]:
                    if 0 >= arg11:
                        return 0
                else:
                    require amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] <= arg2
                    if not tokens[address(arg3)][address(arg7)]:
                        require arg4
                        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] >= 0 / arg4:
                            if 0 / arg4 >= arg11:
                                return 0
                        else:
                            if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] >= arg11:
                                return 0
                    else:
                        require tokens[address(arg3)][address(arg7)]
                        require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                        require arg4
                        if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                            if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                return 0
                        else:
                            if arg2 - amountFilled[this.address][arg1][arg2][arg3][arg4][arg5][arg6][arg7] >= arg11:
                                return 0
    return 2
}



}
