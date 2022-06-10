contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = code.data[13804 len 20]
    stor1 = code.data[13836 len 20]
    stor2 = code.data[13868 len 20]
    stor3 = code.data[13888 len 32]
    stor4 = code.data[13920 len 32]
    stor5 = code.data[13952 len 32]
    return code.data[325 len 13467]
}



// =====================  Runtime code  =====================


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
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
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

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    stor7[address(msg.sender)][hash] = 1
    emit Order(arg1, 0, address(arg3), arg4, arg5, arg6, address(msg.sender));
}

function withdraw(uint256 arg1) {
    require tokens[0][address(msg.sender)] >= arg1
    require arg1 <= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
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
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if stor7[address(msg.sender)][hash]:
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(arg1, 0, address(arg3), arg4, arg5, arg6, address(msg.sender), arg7 << 248, arg8, arg9);
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg7 << 248, arg8, arg9) 
        require erecover.result
        require address(signer) == msg.sender
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(arg1, 0, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9);
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if not stor7[address(arg7)][hash]:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        require erecover.result
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
        hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
        require sha256hash.result
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
            require erecover.result
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

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if not stor7[address(arg7)][hash]:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        require erecover.result
        require address(signer) == arg7
    require block.number <= arg5
    require orderFills[address(arg7)][hash] + arg11 >= orderFills[address(arg7)][hash]
    require orderFills[address(arg7)][hash] + arg11 >= arg11
    require orderFills[address(arg7)][hash] + arg11 <= arg2
    if arg11:
        require arg11
        require arg11 * feeMake / arg11 == feeMake
    if arg11:
        require arg11
        require arg11 * feeTake / arg11 == feeTake
    if not accountLevelsAddr:
        require arg11 + (arg11 * feeTake / 10^18) >= arg11
        require arg11 + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
        require arg11 + (arg11 * feeTake / 10^18) <= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - arg11 - (arg11 * feeTake / 10^18)
        require arg11 >= arg11
        require arg11 >= 0
        require arg11 * feeMake / 10^18 <= arg11
        require tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * feeMake / 10^18) >= tokens[address(arg1)][address(arg7)]
        require tokens[address(arg1)][address(arg7)] >= 0
        tokens[address(arg1)][address(arg7)] = tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * feeMake / 10^18)
        require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeMake / 10^18
        require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
        require 0 <= (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18)
        require tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= tokens[address(arg1)][stor1]
        require tokens[address(arg1)][stor1] >= 0
        tokens[address(arg1)][stor1] = tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18)
    else:
        require ext_code.size(accountLevelsAddr)
        call accountLevelsAddr.accountLevel(address arg1) with:
             gas gas_remaining - 710 wei
            args arg7
        require ext_call.success
        if ext_call.return_data[0] != 1:
            require arg11 + (arg11 * feeTake / 10^18) >= arg11
            require arg11 + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
            require arg11 + (arg11 * feeTake / 10^18) <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - arg11 - (arg11 * feeTake / 10^18)
            if ext_call.return_data[0] != 2:
                require arg11 >= arg11
                require arg11 >= 0
                require arg11 * feeMake / 10^18 <= arg11
                require tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * feeMake / 10^18) >= tokens[address(arg1)][address(arg7)]
                require tokens[address(arg1)][address(arg7)] >= 0
                tokens[address(arg1)][address(arg7)] = tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * feeMake / 10^18)
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeMake / 10^18
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
                require 0 <= (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18)
                require tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= tokens[address(arg1)][stor1]
                require tokens[address(arg1)][stor1] >= 0
                tokens[address(arg1)][stor1] = tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18)
            else:
                require arg11 + (arg11 * feeTake / 10^18) >= arg11
                require arg11 + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
                require arg11 * feeMake / 10^18 <= arg11 + (arg11 * feeTake / 10^18)
                require tokens[address(arg1)][address(arg7)] + arg11 + (arg11 * feeTake / 10^18) - (arg11 * feeMake / 10^18) >= tokens[address(arg1)][address(arg7)]
                require tokens[address(arg1)][address(arg7)] >= 0
                tokens[address(arg1)][address(arg7)] = tokens[address(arg1)][address(arg7)] + arg11 + (arg11 * feeTake / 10^18) - (arg11 * feeMake / 10^18)
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeMake / 10^18
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
                require arg11 * feeTake / 10^18 <= (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18)
                require tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) >= tokens[address(arg1)][stor1]
                require tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) >= arg11 * feeMake / 10^18
                tokens[address(arg1)][stor1] += arg11 * feeMake / 10^18
        else:
            if arg11:
                require arg11
                require arg11 * feeRebate / arg11 == feeRebate
            require arg11 + (arg11 * feeTake / 10^18) >= arg11
            require arg11 + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
            require arg11 + (arg11 * feeTake / 10^18) <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - arg11 - (arg11 * feeTake / 10^18)
            if ext_call.return_data[0] != 2:
                require arg11 + (arg11 * feeRebate / 10^18) >= arg11
                require arg11 + (arg11 * feeRebate / 10^18) >= arg11 * feeRebate / 10^18
                require arg11 * feeMake / 10^18 <= arg11 + (arg11 * feeRebate / 10^18)
                require tokens[address(arg1)][address(arg7)] + arg11 + (arg11 * feeRebate / 10^18) - (arg11 * feeMake / 10^18) >= tokens[address(arg1)][address(arg7)]
                require tokens[address(arg1)][address(arg7)] >= 0
                tokens[address(arg1)][address(arg7)] = tokens[address(arg1)][address(arg7)] + arg11 + (arg11 * feeRebate / 10^18) - (arg11 * feeMake / 10^18)
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeMake / 10^18
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
                require arg11 * feeRebate / 10^18 <= (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18)
                require tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) - (arg11 * feeRebate / 10^18) >= tokens[address(arg1)][stor1]
                require tokens[address(arg1)][stor1] >= 0
                tokens[address(arg1)][stor1] = tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) - (arg11 * feeRebate / 10^18)
            else:
                require arg11 + (arg11 * feeTake / 10^18) >= arg11
                require arg11 + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
                require arg11 * feeMake / 10^18 <= arg11 + (arg11 * feeTake / 10^18)
                require tokens[address(arg1)][address(arg7)] + arg11 + (arg11 * feeTake / 10^18) - (arg11 * feeMake / 10^18) >= tokens[address(arg1)][address(arg7)]
                require tokens[address(arg1)][address(arg7)] >= 0
                tokens[address(arg1)][address(arg7)] = tokens[address(arg1)][address(arg7)] + arg11 + (arg11 * feeTake / 10^18) - (arg11 * feeMake / 10^18)
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeMake / 10^18
                require (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18) >= arg11 * feeTake / 10^18
                require arg11 * feeTake / 10^18 <= (arg11 * feeMake / 10^18) + (arg11 * feeTake / 10^18)
                require tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) >= tokens[address(arg1)][stor1]
                require tokens[address(arg1)][stor1] + (arg11 * feeMake / 10^18) >= arg11 * feeMake / 10^18
                tokens[address(arg1)][stor1] += arg11 * feeMake / 10^18
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    require arg4 * arg11 / arg2 <= tokens[address(arg3)][address(arg7)]
    tokens[address(arg3)][address(arg7)] -= arg4 * arg11 / arg2
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    require tokens[address(arg3)][address(msg.sender)] + (arg4 * arg11 / arg2) >= tokens[address(arg3)][address(msg.sender)]
    require tokens[address(arg3)][address(msg.sender)] + (arg4 * arg11 / arg2) >= arg4 * arg11 / arg2
    tokens[address(arg3)][address(msg.sender)] += arg4 * arg11 / arg2
    require orderFills[address(arg7)][hash] + arg11 >= orderFills[address(arg7)][hash]
    require orderFills[address(arg7)][hash] + arg11 >= arg11
    orderFills[address(arg7)][hash] += arg11
    require arg2
    emit Trade(arg1, 0, address(arg3), arg4 * arg11 / arg2, address(arg7), msg.sender);
}



}
