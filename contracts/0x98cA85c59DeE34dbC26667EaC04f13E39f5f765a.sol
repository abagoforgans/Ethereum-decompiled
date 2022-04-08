contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor11;
uint256 stor12;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor11 = 0xa8cde321ddb903bfea9b64e2c938c1be5468bb75
    stor12 = 10^6
    require not msg.value
    stor0 = code.data[6722 len 20]
    stor1 = code.data[6754 len 20]
    stor2 = code.data[6786 len 20]
    stor3 = code.data[6806 len 32]
    stor4 = code.data[6838 len 32]
    stor5 = code.data[6870 len 32]
    return code.data[224 len 6486]
}



// =====================  Runtime code  =====================


address adminAddress;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 tokens;
mapping of uint8 stor7;
mapping of uint256 orderFills;
uint256 tradeFee;
uint256 feesPool;
address sharesAddress;
uint256 gasFee;

function orderFills(address arg1, bytes32 arg2) {
    return orderFills[arg1][arg2]
}

function tradeFee() {
    return tradeFee
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    return orderFills[address(arg7)][hash]
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function gasFee() {
    return gasFee
}

function feesPool() {
    return feesPool
}

function orders(address arg1, bytes32 arg2) {
    return bool(stor7[arg1][arg2])
}

function sharesAddress() {
    return sharesAddress
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function changeGasFee(uint256 arg1) {
    require adminAddress == msg.sender
    require arg1 <= 200000
    require arg1 >= 2 * 10^6
    gasFee = arg1
}

function changeTradeFee(uint256 arg1) {
    require adminAddress == msg.sender
    require arg1 <= 10^16
    require arg1 >= 10^15
    tradeFee = arg1
}

function transferDividendToShares() {
    if feesPool > 53 * 10^17:
        feesPool -= 53 * 10^17
        call sharesAddress with:
           value 53 * 10^17 wei
             gas gasFee wei
}

function deposit() payable {
    require msg.value + tokens[0][msg.sender] >= tokens[0][msg.sender]
    require msg.value + tokens[0][msg.sender] >= msg.value
    tokens[0][msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + tokens[0][msg.sender]);
}

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    stor7[address(msg.sender)][hash] = 1
    emit Order(arg1, 0, address(arg3), arg4, arg5, arg6, address(msg.sender));
}

function withdraw(uint256 arg1) payable {
    require tokens[0][msg.sender] >= arg1
    require arg1 <= tokens[0][msg.sender]
    tokens[0][msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][msg.sender]);
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

function depositToken(address arg1, uint256 arg2) payable {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= tokens[address(arg1)][address(msg.sender)]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][address(msg.sender)]);
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
        emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(msg.sender), arg7 << 248, arg8, arg9);
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
        require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
    require arg4
    if arg2 - orderFills[address(arg7)][hash] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
        return (arg2 * tokens[address(arg3)][address(arg7)] / arg4)
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
                    require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
                require arg4
                if arg2 - orderFills[address(arg7)][hash] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
                    if arg2 * tokens[address(arg3)][address(arg7)] / arg4 >= arg11:
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
                        require arg2 * tokens[address(arg3)][address(arg7)] / tokens[address(arg3)][address(arg7)] == arg2
                    require arg4
                    if arg2 - orderFills[address(arg7)][hash] >= arg2 * tokens[address(arg3)][address(arg7)] / arg4:
                        if arg2 * tokens[address(arg3)][address(arg7)] / arg4 >= arg11:
                            return 1
                    else:
                        if arg2 - orderFills[address(arg7)][hash] >= arg11:
                            return 1
        return 0
    else:
        return 0
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) payable {
    require msg.value == tradeFee
    feesPool += msg.value
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if stor7[address(arg7)][hash]:
        require block.number <= arg5
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        require arg11 + orderFills[address(arg7)][hash] >= arg11
        require arg11 + orderFills[address(arg7)][hash] <= arg2
        if arg11:
            require arg11
            require stor3 * arg11 / arg11 == stor3
        if arg11:
            require arg11
            require stor4 * arg11 / arg11 == stor4
        if not stor2:
            require (stor4 * arg11 / 10^18) + arg11 >= arg11
            require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
            require (stor4 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (stor4 * arg11 / 10^18) - arg11
            require arg11 >= arg11
            require arg11 >= 0
            require stor3 * arg11 / 10^18 <= arg11
            require arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
            require tokens[address(arg1)][arg7] >= 0
            tokens[address(arg1)][address(arg7)] = arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
            require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
            require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
            require 0 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
            require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
            require tokens[address(arg1)][stor1] >= 0
            tokens[address(arg1)][stor1] = (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1]
        else:
            require ext_code.size(stor2)
            call stor2.accountLevel(address rg1) with:
                 gas gas_remaining - 710 wei
                args arg7
            require ext_call.success
            if ext_call.return_data[0] != 1:
                require (stor4 * arg11 / 10^18) + arg11 >= arg11
                require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                require (stor4 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (stor4 * arg11 / 10^18) - arg11
                if ext_call.return_data[0] != 2:
                    require arg11 >= arg11
                    require arg11 >= 0
                    require stor3 * arg11 / 10^18 <= arg11
                    require arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require 0 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require tokens[address(arg1)][stor1] >= 0
                    tokens[address(arg1)][stor1] = (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1]
                else:
                    require (stor4 * arg11 / 10^18) + arg11 >= arg11
                    require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                    require stor3 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + arg11
                    require (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require stor4 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= stor3 * arg11 / 10^18
                    tokens[address(arg1)][stor1] += stor3 * arg11 / 10^18
            else:
                if arg11:
                    require arg11
                    require stor5 * arg11 / arg11 == stor5
                require (stor4 * arg11 / 10^18) + arg11 >= arg11
                require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                require (stor4 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (stor4 * arg11 / 10^18) - arg11
                if ext_call.return_data[0] != 2:
                    require (stor5 * arg11 / 10^18) + arg11 >= arg11
                    require (stor5 * arg11 / 10^18) + arg11 >= stor5 * arg11 / 10^18
                    require stor3 * arg11 / 10^18 <= (stor5 * arg11 / 10^18) + arg11
                    require (stor5 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = (stor5 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require stor5 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) - (stor5 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require tokens[address(arg1)][stor1] >= 0
                    tokens[address(arg1)][stor1] = (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) - (stor5 * arg11 / 10^18) + tokens[address(arg1)][stor1]
                else:
                    require (stor4 * arg11 / 10^18) + arg11 >= arg11
                    require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                    require stor3 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + arg11
                    require (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require stor4 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= stor3 * arg11 / 10^18
                    tokens[address(arg1)][stor1] += stor3 * arg11 / 10^18
        if arg4:
            require arg4
            require arg11 * arg4 / arg4 == arg11
        require arg2
        require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
        tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
        if arg4:
            require arg4
            require arg11 * arg4 / arg4 == arg11
        require arg2
        require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
        require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
        tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        require arg11 + orderFills[address(arg7)][hash] >= arg11
        orderFills[address(arg7)][hash] += arg11
        require arg2
        emit Trade(arg1, 0, address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender);
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        require erecover.result
        require address(signer) == arg7
        require block.number <= arg5
        require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
        require arg11 + orderFills[address(arg7)][hash] >= arg11
        require arg11 + orderFills[address(arg7)][hash] <= arg2
        if arg11:
            require arg11
            require stor3 * arg11 / arg11 == stor3
        if arg11:
            require arg11
            require stor4 * arg11 / arg11 == stor4
        if not stor2:
            require (stor4 * arg11 / 10^18) + arg11 >= arg11
            require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
            require (stor4 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (stor4 * arg11 / 10^18) - arg11
            require arg11 >= arg11
            require arg11 >= 0
            require stor3 * arg11 / 10^18 <= arg11
            require arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
            require tokens[address(arg1)][arg7] >= 0
            tokens[address(arg1)][address(arg7)] = arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
            require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
            require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
            require 0 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
            require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
            require tokens[address(arg1)][stor1] >= 0
            tokens[address(arg1)][stor1] = (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1]
            if arg4:
                require arg4
                require arg11 * arg4 / arg4 == arg11
            require arg2
            require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
            tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
            if arg4:
                require arg4
                require arg11 * arg4 / arg4 == arg11
            require arg2
            require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
            require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
            tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
            require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
            require arg11 + orderFills[address(arg7)][hash] >= arg11
            orderFills[address(arg7)][hash] += arg11
            require arg2
            emit Trade(address(arg1), arg11, address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender);
        else:
            require ext_code.size(stor2)
            call stor2.accountLevel(address rg1) with:
                 gas gas_remaining - 710 wei
                args arg7
            require ext_call.success
            if ext_call.return_data[0] != 1:
                require (stor4 * arg11 / 10^18) + arg11 >= arg11
                require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                require (stor4 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (stor4 * arg11 / 10^18) - arg11
                if ext_call.return_data[0] != 2:
                    require arg11 >= arg11
                    require arg11 >= 0
                    require stor3 * arg11 / 10^18 <= arg11
                    require arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require 0 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require tokens[address(arg1)][stor1] >= 0
                    tokens[address(arg1)][stor1] = (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1]
                else:
                    require (stor4 * arg11 / 10^18) + arg11 >= arg11
                    require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                    require stor3 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + arg11
                    require (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require stor4 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= stor3 * arg11 / 10^18
                    tokens[address(arg1)][stor1] += stor3 * arg11 / 10^18
            else:
                if arg11:
                    require arg11
                    require stor5 * arg11 / arg11 == stor5
                require (stor4 * arg11 / 10^18) + arg11 >= arg11
                require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                require (stor4 * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
                tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (stor4 * arg11 / 10^18) - arg11
                if ext_call.return_data[0] != 2:
                    require (stor5 * arg11 / 10^18) + arg11 >= arg11
                    require (stor5 * arg11 / 10^18) + arg11 >= stor5 * arg11 / 10^18
                    require stor3 * arg11 / 10^18 <= (stor5 * arg11 / 10^18) + arg11
                    require (stor5 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = (stor5 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require stor5 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) - (stor5 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require tokens[address(arg1)][stor1] >= 0
                    tokens[address(arg1)][stor1] = (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) - (stor5 * arg11 / 10^18) + tokens[address(arg1)][stor1]
                else:
                    require (stor4 * arg11 / 10^18) + arg11 >= arg11
                    require (stor4 * arg11 / 10^18) + arg11 >= stor4 * arg11 / 10^18
                    require stor3 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + arg11
                    require (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                    require tokens[address(arg1)][arg7] >= 0
                    tokens[address(arg1)][address(arg7)] = (stor4 * arg11 / 10^18) + arg11 - (stor3 * arg11 / 10^18) + tokens[address(arg1)][arg7]
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor3 * arg11 / 10^18
                    require (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18) >= stor4 * arg11 / 10^18
                    require stor4 * arg11 / 10^18 <= (stor4 * arg11 / 10^18) + (stor3 * arg11 / 10^18)
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
                    require (stor3 * arg11 / 10^18) + tokens[address(arg1)][stor1] >= stor3 * arg11 / 10^18
                    tokens[address(arg1)][stor1] += stor3 * arg11 / 10^18
            if arg4:
                require arg4
                require arg11 * arg4 / arg4 == arg11
            require arg2
            require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
            tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
            if arg4:
                require arg4
                require arg11 * arg4 / arg4 == arg11
            require arg2
            require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= tokens[address(arg3)][msg.sender]
            require (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender] >= arg11 * arg4 / arg2
            tokens[address(arg3)][address(msg.sender)] = (arg11 * arg4 / arg2) + tokens[address(arg3)][msg.sender]
            require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
            require arg11 + orderFills[address(arg7)][hash] >= arg11
            orderFills[address(arg7)][hash] += arg11
            require arg2
            emit Trade(arg1, 0, address(arg3), arg11 * arg4 / arg2, address(arg7), msg.sender);
}



}
