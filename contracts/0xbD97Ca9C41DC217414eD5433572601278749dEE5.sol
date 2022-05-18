contract main {




// =====================  Runtime code  =====================


#
#  - trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11)
#
address adminAddress;
address feeAccount;
address accountLevelsAddr;
uint256 feeMake;
uint256 feeTake;
uint256 feeRebate;
mapping of uint256 tokens;
mapping of uint8 stor7;
mapping of uint256 orderFills;

function orderFills(address arg1, bytes32 arg2) {
    return orderFills[arg1][arg2]
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return orderFills[address(arg7)][hash]
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeMake() {
    return feeMake
}

function feeAccount() {
    return feeAccount
}

function feeRebate() {
    return feeRebate
}

function orders(address arg1, bytes32 arg2) {
    return bool(stor7[arg1][arg2])
}

function feeTake() {
    return feeTake
}

function accountLevelsAddr() {
    return accountLevelsAddr
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require msg.sender == adminAddress
    feeAccount = arg1
}

function changeAccountLevelsAddr(address arg1) {
    require msg.sender == adminAddress
    accountLevelsAddr = arg1
}

function changeFeeMake(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 <= feeMake
    feeMake = arg1
}

function sub_480b4bae(?) {
    if tokens[0xd57fb3f78e958a716882f269dad7a9d95a072ce8][address(arg1)] <= 2500:
        return 0
    return 1
}

function changeFeeTake(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 <= feeTake
    require arg1 >= feeRebate
    feeTake = arg1
}

function changeFeeRebate(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 >= feeRebate
    require arg1 <= feeTake
    feeRebate = arg1
}

function deposit() payable {
    require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
    require tokens[0][address(msg.sender)] + msg.value >= msg.value
    tokens[0][address(msg.sender)] += msg.value
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
}

function withdraw(uint256 arg1) {
    require tokens[0][address(msg.sender)] >= arg1
    require arg1 <= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][address(msg.sender)]);
}

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor7[address(msg.sender)][hash] = 1
    emit Order(address(arg1), arg2, address(arg3), arg4, arg5, arg6, msg.sender);
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor7[address(msg.sender)][hash]:
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(msg.sender), arg7 << 248, arg8, arg9);
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg7 << 248, arg8, arg9) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == msg.sender
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9);
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor7[address(arg7)][hash]:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg7:
            return 0
    if block.number > arg5:
        return 0
    require orderFills[address(arg7)][hash] <= arg2
    if tokens[address(arg3)][address(arg7)]:
        require tokens[address(arg3)][address(arg7)]
        require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
    require arg4
    if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
        return (tokens[address(arg3)][address(arg7)] * arg2 / arg4)
    return (arg2 - orderFills[address(arg7)][hash])
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    if tokens[address(arg1)][address(arg12)] >= arg11:
        hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor7[address(arg7)][hash]:
            if block.number > arg5:
                if 0 >= arg11:
                    return 1
            else:
                require orderFills[address(arg7)][hash] <= arg2
                if tokens[address(arg3)][address(arg7)]:
                    require tokens[address(arg3)][address(arg7)]
                    require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                require arg4
                if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                    if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                        return 1
                else:
                    if arg2 - orderFills[address(arg7)][hash] >= arg11:
                        return 1
        else:
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != arg7:
                if 0 >= arg11:
                    return 1
            else:
                if block.number > arg5:
                    if 0 >= arg11:
                        return 1
                else:
                    require orderFills[address(arg7)][hash] <= arg2
                    if tokens[address(arg3)][address(arg7)]:
                        require tokens[address(arg3)][address(arg7)]
                        require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                    require arg4
                    if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                        if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                            return 1
                    else:
                        if arg2 - orderFills[address(arg7)][hash] >= arg11:
                            return 1
        return 0
    else:
        return 0
}



}
