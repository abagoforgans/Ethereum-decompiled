contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = code.data[8839 len 20]
    stor1 = code.data[8871 len 20]
    stor3 = code.data[8891 len 32]
    stor4 = code.data[8923 len 32]
    stor2 = code.data[8967 len 20]
    stor5 = code.data[8987 len 32]
    return code.data[327 len 8500]
}



// =====================  Runtime code  =====================


address adminAddress;
address feeAccount;
address etxAddress;
uint256 makeFee;
uint256 takeFee;
uint256 lastFreeBlock;
mapping of uint256 sellOrderBalances;
mapping of uint256 buyOrderBalances;

function sellOrderBalances(bytes32 arg1) {
    return sellOrderBalances[arg1]
}

function takeFee() {
    return takeFee
}

function makeFee() {
    return makeFee
}

function buyOrderBalances(bytes32 arg1) {
    return buyOrderBalances[arg1]
}

function feeAccount() {
    return feeAccount
}

function etxAddress() {
    return etxAddress
}

function lastFreeBlock() {
    return lastFreeBlock
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

function changeMakeFee(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 < makeFee
    makeFee = arg1
}

function changeTakeFee(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 < takeFee
    takeFee = arg1
}

function calculateFee(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg1 * arg2 / 10^18)
    require arg1
    require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2 / 10^18)
}

function cancelAllBuyOrders(address arg1, uint256 arg2, uint256 arg3) {
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    require sha256hash.result
    buyOrderBalances[hash] = 0
    call msg.sender with:
       value buyOrderBalances[hash] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit CancelBuyOrder(hash, 0, arg2, arg3, msg.sender);
}

function cancelAllSellOrders(address arg1, uint256 arg2, uint256 arg3) {
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    require sha256hash.result
    sellOrderBalances[hash] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, sellOrderBalances[hash]
    require ext_call.success
    emit CancelSellOrder(hash, 0, arg2, arg3, msg.sender);
}

function calculateFeeForAccount(uint256 arg1, uint256 arg2, address arg3) {
    require ext_code.size(etxAddress)
    call etxAddress.0x760a2e8a with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    if block.number <= lastFreeBlock:
        return 0
    if not arg1:
        return (arg1 * arg2 / 10^18)
    require arg1
    require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2 / 10^18)
}

function makeSellOrder(address arg1, uint256 arg2, uint256 arg3) {
    require arg2
    require arg3
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    require sha256hash.result
    require sellOrderBalances[hash] + arg2 >= sellOrderBalances[hash]
    require sellOrderBalances[hash] + arg2 >= arg2
    sellOrderBalances[hash] += arg2
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit MakeSellOrder(hash, arg2, arg3, arg1, msg.sender);
}

function makeBuyOrder(address arg1, uint256 arg2) payable {
    require arg2
    require msg.value
    require makeFee + 10^18 >= 10^18
    require makeFee + 10^18 >= makeFee
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require makeFee + 10^18
    require makeFee + 10^18 >= 10^18
    require makeFee + 10^18 >= makeFee
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require makeFee + 10^18
    if not 10^18 * msg.value % makeFee + 10^18:
        require 10^18 * msg.value / makeFee + 10^18 <= msg.value
        require msg.value - (10^18 * msg.value / makeFee + 10^18) <= msg.value
        hash = sha256hash(arg1, arg2, 10^18 * msg.value / makeFee + 10^18, msg.sender) 
        require sha256hash.result
        require buyOrderBalances[hash] + msg.value >= buyOrderBalances[hash]
        require buyOrderBalances[hash] + msg.value >= msg.value
        buyOrderBalances[hash] += msg.value
        emit MakeBuyOrder(hash, arg2, 10^18 * msg.value / makeFee + 10^18, arg1, msg.sender);
    else:
        require (10^18 * msg.value / makeFee + 10^18) + 1 >= 10^18 * msg.value / makeFee + 10^18
        require (10^18 * msg.value / makeFee + 10^18) + 1 >= 1
        require (10^18 * msg.value / makeFee + 10^18) + 1 <= msg.value
        require msg.value + -(10^18 * msg.value / makeFee + 10^18) - 1 <= msg.value
        hash = sha256hash(arg1, arg2, (10^18 * msg.value / makeFee + 10^18) + 1, msg.sender) 
        require sha256hash.result
        require buyOrderBalances[hash] + msg.value >= buyOrderBalances[hash]
        require buyOrderBalances[hash] + msg.value >= msg.value
        buyOrderBalances[hash] += msg.value
        emit MakeBuyOrder(hash, arg2, (10^18 * msg.value / makeFee + 10^18) + 1, arg1, msg.sender);
}

function feeFromTotalCost(uint256 arg1, uint256 arg2) {
    require arg2 + 10^18 >= 10^18
    require arg2 + 10^18 >= arg2
    if not arg1:
        if arg2 + 10^18:
            if arg2 + 10^18 >= 10^18:
                if arg2 + 10^18 >= arg2:
                    if not arg1:
                        if arg2 + 10^18:
                            if not 10^18 * arg1 % arg2 + 10^18:
                                if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                    return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                            else:
                                if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                    if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                        if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                            return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
                    else:
                        if arg1:
                            if 10^18 * arg1 / arg1 == 10^18:
                                if arg2 + 10^18:
                                    if not 10^18 * arg1 % arg2 + 10^18:
                                        if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                            return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                                    else:
                                        if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                            if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                                if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                                    return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
    else:
        if arg1:
            if 10^18 * arg1 / arg1 == 10^18:
                if arg2 + 10^18:
                    if arg2 + 10^18 >= 10^18:
                        if arg2 + 10^18 >= arg2:
                            if not arg1:
                                if arg2 + 10^18:
                                    if not 10^18 * arg1 % arg2 + 10^18:
                                        if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                            return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                                    else:
                                        if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                            if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                                if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                                    return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
                            else:
                                if arg1:
                                    if 10^18 * arg1 / arg1 == 10^18:
                                        if arg2 + 10^18:
                                            if not 10^18 * arg1 % arg2 + 10^18:
                                                if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                                    return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                                            else:
                                                if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                                    if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                                        if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                                            return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
    revert
}

function feeFromTotalCostForAccount(uint256 arg1, uint256 arg2, address arg3) {
    require ext_code.size(etxAddress)
    call etxAddress.0x760a2e8a with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    if block.number <= lastFreeBlock:
        return 0
    require arg2 + 10^18 >= 10^18
    require arg2 + 10^18 >= arg2
    if not arg1:
        if arg2 + 10^18:
            if arg2 + 10^18 >= 10^18:
                if arg2 + 10^18 >= arg2:
                    if not arg1:
                        if arg2 + 10^18:
                            if not 10^18 * arg1 % arg2 + 10^18:
                                if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                    return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                            else:
                                if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                    if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                        if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                            return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
                    else:
                        if arg1:
                            if 10^18 * arg1 / arg1 == 10^18:
                                if arg2 + 10^18:
                                    if not 10^18 * arg1 % arg2 + 10^18:
                                        if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                            return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                                    else:
                                        if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                            if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                                if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                                    return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
    else:
        if arg1:
            if 10^18 * arg1 / arg1 == 10^18:
                if arg2 + 10^18:
                    if arg2 + 10^18 >= 10^18:
                        if arg2 + 10^18 >= arg2:
                            if not arg1:
                                if arg2 + 10^18:
                                    if not 10^18 * arg1 % arg2 + 10^18:
                                        if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                            return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                                    else:
                                        if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                            if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                                if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                                    return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
                            else:
                                if arg1:
                                    if 10^18 * arg1 / arg1 == 10^18:
                                        if arg2 + 10^18:
                                            if not 10^18 * arg1 % arg2 + 10^18:
                                                if 10^18 * arg1 / arg2 + 10^18 <= arg1:
                                                    return (arg1 - (10^18 * arg1 / arg2 + 10^18))
                                            else:
                                                if (10^18 * arg1 / arg2 + 10^18) + 1 >= 10^18 * arg1 / arg2 + 10^18:
                                                    if (10^18 * arg1 / arg2 + 10^18) + 1 >= 1:
                                                        if (10^18 * arg1 / arg2 + 10^18) + 1 <= arg1:
                                                            return (arg1 + -(10^18 * arg1 / arg2 + 10^18) - 1)
    revert
}

function takeBuyOrder(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require arg2
    require arg3
    require arg4
    hash = sha256hash(arg1, arg2, arg3, arg5) 
    require sha256hash.result
    if arg4:
        require arg4
        require arg4 * arg3 / arg4 == arg3
    require arg2
    if arg4 * arg3 / arg2:
        require arg4 * arg3 / arg2
        require arg4 * arg3 / arg2 * makeFee / arg4 * arg3 / arg2 == makeFee
    require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) >= arg4 * arg3 / arg2
    require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) >= arg4 * arg3 / arg2 * makeFee / 10^18
    require buyOrderBalances[hash] >= (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18)
    require ext_code.size(etxAddress)
    call etxAddress.0x760a2e8a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(etxAddress)
        call etxAddress.0x760a2e8a with:
             gas gas_remaining - 710 wei
            args arg5
        require ext_call.success
        if ext_call.return_data[0]:
            require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
            buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
            require ext_code.size(arg1)
            call arg1.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args msg.sender, this.address
            require ext_call.success
            require ext_call.return_data[0] >= arg4
            if 0 < arg4 * arg3 / arg2 * makeFee / 10^18:
                require 0 <= arg4 * arg3 / arg2 * makeFee / 10^18
                call arg5 with:
                   value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(arg5), arg4
            require ext_call.success
            require ext_call.return_data[0]
        else:
            if block.number <= lastFreeBlock:
                require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                require ext_call.return_data[0] >= arg4
                if 0 < arg4 * arg3 / arg2 * makeFee / 10^18:
                    require 0 <= arg4 * arg3 / arg2 * makeFee / 10^18
                    call arg5 with:
                       value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(arg5), arg4
                require ext_call.success
                require ext_call.return_data[0]
            else:
                if arg4 * arg3 / arg2:
                    require arg4 * arg3 / arg2
                    require arg4 * arg3 / arg2 * makeFee / arg4 * arg3 / arg2 == makeFee
                require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                require ext_call.return_data[0] >= arg4
                if arg4 * arg3 / arg2 * makeFee / 10^18 < arg4 * arg3 / arg2 * makeFee / 10^18:
                    require arg4 * arg3 / arg2 * makeFee / 10^18 <= arg4 * arg3 / arg2 * makeFee / 10^18
                    call arg5 with:
                         gas 2300 wei
                    require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(arg5), arg4
                require ext_call.success
                require ext_call.return_data[0]
                require arg4 * arg3 / arg2 * makeFee / 10^18 >= 0
                require arg4 * arg3 / arg2 * makeFee / 10^18 >= arg4 * arg3 / arg2 * makeFee / 10^18
                if arg4 * arg3 / arg2 * makeFee / 10^18 > 0:
                    require arg4 * arg3 / arg2 * makeFee / 10^18 >= 0
                    require arg4 * arg3 / arg2 * makeFee / 10^18 >= arg4 * arg3 / arg2 * makeFee / 10^18
                    call feeAccount with:
                       value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        require 0 <= arg4 * arg3 / arg2
        call msg.sender with:
           value arg4 * arg3 / arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        if block.number <= lastFreeBlock:
            require ext_code.size(etxAddress)
            call etxAddress.0x760a2e8a with:
                 gas gas_remaining - 710 wei
                args arg5
            require ext_call.success
            if ext_call.return_data[0]:
                require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                require ext_call.return_data[0] >= arg4
                if 0 < arg4 * arg3 / arg2 * makeFee / 10^18:
                    require 0 <= arg4 * arg3 / arg2 * makeFee / 10^18
                    call arg5 with:
                       value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(arg5), arg4
                require ext_call.success
                require ext_call.return_data[0]
            else:
                if block.number <= lastFreeBlock:
                    require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                    buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= arg4
                    if 0 < arg4 * arg3 / arg2 * makeFee / 10^18:
                        require 0 <= arg4 * arg3 / arg2 * makeFee / 10^18
                        call arg5 with:
                           value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg5), arg4
                    require ext_call.success
                    require ext_call.return_data[0]
                else:
                    if arg4 * arg3 / arg2:
                        require arg4 * arg3 / arg2
                        require arg4 * arg3 / arg2 * makeFee / arg4 * arg3 / arg2 == makeFee
                    require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                    buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= arg4
                    if arg4 * arg3 / arg2 * makeFee / 10^18 < arg4 * arg3 / arg2 * makeFee / 10^18:
                        require arg4 * arg3 / arg2 * makeFee / 10^18 <= arg4 * arg3 / arg2 * makeFee / 10^18
                        call arg5 with:
                             gas 2300 wei
                        require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg5), arg4
                    require ext_call.success
                    require ext_call.return_data[0]
                    require arg4 * arg3 / arg2 * makeFee / 10^18 >= 0
                    require arg4 * arg3 / arg2 * makeFee / 10^18 >= arg4 * arg3 / arg2 * makeFee / 10^18
                    if arg4 * arg3 / arg2 * makeFee / 10^18 > 0:
                        require arg4 * arg3 / arg2 * makeFee / 10^18 >= 0
                        require arg4 * arg3 / arg2 * makeFee / 10^18 >= arg4 * arg3 / arg2 * makeFee / 10^18
                        call feeAccount with:
                           value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            require 0 <= arg4 * arg3 / arg2
            call msg.sender with:
               value arg4 * arg3 / arg2 wei
                 gas 2300 * is_zero(value) wei
        else:
            if arg4 * arg3 / arg2:
                require arg4 * arg3 / arg2
                require arg4 * arg3 / arg2 * takeFee / arg4 * arg3 / arg2 == takeFee
            require ext_code.size(etxAddress)
            call etxAddress.0x760a2e8a with:
                 gas gas_remaining - 710 wei
                args arg5
            require ext_call.success
            if ext_call.return_data[0]:
                require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                require ext_code.size(arg1)
                call arg1.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                require ext_call.return_data[0] >= arg4
                if 0 < arg4 * arg3 / arg2 * makeFee / 10^18:
                    require 0 <= arg4 * arg3 / arg2 * makeFee / 10^18
                    call arg5 with:
                       value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(arg5), arg4
                require ext_call.success
                require ext_call.return_data[0]
                require arg4 * arg3 / arg2 * takeFee / 10^18 >= arg4 * arg3 / arg2 * takeFee / 10^18
                require arg4 * arg3 / arg2 * takeFee / 10^18 >= 0
                if arg4 * arg3 / arg2 * takeFee / 10^18 > 0:
                    require arg4 * arg3 / arg2 * takeFee / 10^18 >= arg4 * arg3 / arg2 * takeFee / 10^18
                    require arg4 * arg3 / arg2 * takeFee / 10^18 >= 0
                    call feeAccount with:
                       value arg4 * arg3 / arg2 * takeFee / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if block.number <= lastFreeBlock:
                    require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                    buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= arg4
                    if 0 < arg4 * arg3 / arg2 * makeFee / 10^18:
                        require 0 <= arg4 * arg3 / arg2 * makeFee / 10^18
                        call arg5 with:
                           value arg4 * arg3 / arg2 * makeFee / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg5), arg4
                    require ext_call.success
                    require ext_call.return_data[0]
                    require arg4 * arg3 / arg2 * takeFee / 10^18 >= arg4 * arg3 / arg2 * takeFee / 10^18
                    require arg4 * arg3 / arg2 * takeFee / 10^18 >= 0
                    if arg4 * arg3 / arg2 * takeFee / 10^18 > 0:
                        require arg4 * arg3 / arg2 * takeFee / 10^18 >= arg4 * arg3 / arg2 * takeFee / 10^18
                        require arg4 * arg3 / arg2 * takeFee / 10^18 >= 0
                        call feeAccount with:
                           value arg4 * arg3 / arg2 * takeFee / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    if arg4 * arg3 / arg2:
                        require arg4 * arg3 / arg2
                        require arg4 * arg3 / arg2 * makeFee / arg4 * arg3 / arg2 == makeFee
                    require (arg4 * arg3 / arg2) + (arg4 * arg3 / arg2 * makeFee / 10^18) <= buyOrderBalances[hash]
                    buyOrderBalances[hash] = buyOrderBalances[hash] - (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * makeFee / 10^18)
                    require ext_code.size(arg1)
                    call arg1.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    require ext_call.return_data[0] >= arg4
                    if arg4 * arg3 / arg2 * makeFee / 10^18 < arg4 * arg3 / arg2 * makeFee / 10^18:
                        require arg4 * arg3 / arg2 * makeFee / 10^18 <= arg4 * arg3 / arg2 * makeFee / 10^18
                        call arg5 with:
                             gas 2300 wei
                        require ext_call.success
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(arg5), arg4
                    require ext_call.success
                    require ext_call.return_data[0]
                    require (arg4 * arg3 / arg2 * takeFee / 10^18) + (arg4 * arg3 / arg2 * makeFee / 10^18) >= arg4 * arg3 / arg2 * takeFee / 10^18
                    require (arg4 * arg3 / arg2 * takeFee / 10^18) + (arg4 * arg3 / arg2 * makeFee / 10^18) >= arg4 * arg3 / arg2 * makeFee / 10^18
                    if (arg4 * arg3 / arg2 * takeFee / 10^18) + (arg4 * arg3 / arg2 * makeFee / 10^18) > 0:
                        require (arg4 * arg3 / arg2 * takeFee / 10^18) + (arg4 * arg3 / arg2 * makeFee / 10^18) >= arg4 * arg3 / arg2 * takeFee / 10^18
                        require (arg4 * arg3 / arg2 * takeFee / 10^18) + (arg4 * arg3 / arg2 * makeFee / 10^18) >= arg4 * arg3 / arg2 * makeFee / 10^18
                        call feeAccount with:
                           value (arg4 * arg3 / arg2 * takeFee / 10^18) + (arg4 * arg3 / arg2 * makeFee / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            require arg4 * arg3 / arg2 * takeFee / 10^18 <= arg4 * arg3 / arg2
            call msg.sender with:
               value (arg4 * arg3 / arg2) - (arg4 * arg3 / arg2 * takeFee / 10^18) wei
                 gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TakeBuyOrder(hash, arg2, arg3, arg4, arg1, arg5, msg.sender);
}

function takeSellOrder(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require arg2
    require arg3
    hash = sha256hash(arg1, arg2, arg3, arg4) 
    require sha256hash.result
    require ext_code.size(etxAddress)
    call etxAddress.0x760a2e8a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0]:
        require 0 <= msg.value
        if msg.value:
            require msg.value
            require msg.value * arg2 / msg.value == arg2
        require arg3
        require sellOrderBalances[hash] >= msg.value * arg2 / arg3
        require ext_code.size(etxAddress)
        call etxAddress.0x760a2e8a with:
             gas gas_remaining - 710 wei
            args arg4
        require ext_call.success
        if ext_call.return_data[0]:
            require 0 <= msg.value
            require msg.value * arg2 / arg3 <= sellOrderBalances[hash]
            sellOrderBalances[hash] -= msg.value * arg2 / arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * arg2 / arg3
            require ext_call.success
            require ext_call.return_data[0]
            call arg4 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if block.number <= lastFreeBlock:
                require 0 <= msg.value
                require msg.value * arg2 / arg3 <= sellOrderBalances[hash]
                sellOrderBalances[hash] -= msg.value * arg2 / arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * arg2 / arg3
                require ext_call.success
                require ext_call.return_data[0]
                call arg4 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if msg.value:
                    require msg.value
                    require msg.value * makeFee / msg.value == makeFee
                require msg.value * makeFee / 10^18 >= msg.value * makeFee / 10^18
                require msg.value * makeFee / 10^18 >= 0
                require msg.value * makeFee / 10^18 <= msg.value
                require msg.value * arg2 / arg3 <= sellOrderBalances[hash]
                sellOrderBalances[hash] -= msg.value * arg2 / arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * arg2 / arg3
                require ext_call.success
                require ext_call.return_data[0]
                if msg.value * makeFee / 10^18 <= 0:
                    call arg4 with:
                       value msg.value - (msg.value * makeFee / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    call feeAccount with:
                       value msg.value * makeFee / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call arg4 with:
                       value msg.value - (msg.value * makeFee / 10^18) wei
                         gas 2300 * is_zero(value) wei
        emit TakeSellOrder(hash, arg2, arg3, msg.value, arg1, msg.sender, arg4);
    else:
        if block.number <= lastFreeBlock:
            require 0 <= msg.value
            if msg.value:
                require msg.value
                require msg.value * arg2 / msg.value == arg2
            require arg3
            require sellOrderBalances[hash] >= msg.value * arg2 / arg3
            require ext_code.size(etxAddress)
            call etxAddress.0x760a2e8a with:
                 gas gas_remaining - 710 wei
                args arg4
            require ext_call.success
            if ext_call.return_data[0]:
                require 0 <= msg.value
                require msg.value * arg2 / arg3 <= sellOrderBalances[hash]
                sellOrderBalances[hash] -= msg.value * arg2 / arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * arg2 / arg3
                require ext_call.success
                require ext_call.return_data[0]
                call arg4 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if block.number <= lastFreeBlock:
                    require 0 <= msg.value
                    require msg.value * arg2 / arg3 <= sellOrderBalances[hash]
                    sellOrderBalances[hash] -= msg.value * arg2 / arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * arg2 / arg3
                    require ext_call.success
                    require ext_call.return_data[0]
                    call arg4 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * makeFee / msg.value == makeFee
                    require msg.value * makeFee / 10^18 >= msg.value * makeFee / 10^18
                    require msg.value * makeFee / 10^18 >= 0
                    require msg.value * makeFee / 10^18 <= msg.value
                    require msg.value * arg2 / arg3 <= sellOrderBalances[hash]
                    sellOrderBalances[hash] -= msg.value * arg2 / arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * arg2 / arg3
                    require ext_call.success
                    require ext_call.return_data[0]
                    if msg.value * makeFee / 10^18 <= 0:
                        call arg4 with:
                           value msg.value - (msg.value * makeFee / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call feeAccount with:
                           value msg.value * makeFee / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        call arg4 with:
                           value msg.value - (msg.value * makeFee / 10^18) wei
                             gas 2300 * is_zero(value) wei
            emit TakeSellOrder(hash, arg2, arg3, msg.value, arg1, msg.sender, arg4);
        else:
            require takeFee + 10^18 >= 10^18
            require takeFee + 10^18 >= takeFee
            if msg.value:
                require msg.value
                require 10^18 * msg.value / msg.value == 10^18
            require takeFee + 10^18
            require takeFee + 10^18 >= 10^18
            require takeFee + 10^18 >= takeFee
            if msg.value:
                require msg.value
                require 10^18 * msg.value / msg.value == 10^18
            require takeFee + 10^18
            if not 10^18 * msg.value % takeFee + 10^18:
                require 10^18 * msg.value / takeFee + 10^18 <= msg.value
                require msg.value - (10^18 * msg.value / takeFee + 10^18) <= msg.value
                if 10^18 * msg.value / takeFee + 10^18:
                    require 10^18 * msg.value / takeFee + 10^18
                    require 10^18 * msg.value / takeFee + 10^18 * arg2 / 10^18 * msg.value / takeFee + 10^18 == arg2
                require arg3
                require sellOrderBalances[hash] >= 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3
                require ext_code.size(etxAddress)
                call etxAddress.0x760a2e8a with:
                     gas gas_remaining - 710 wei
                    args arg4
                require ext_call.success
                if ext_call.return_data[0]:
                    require msg.value - (10^18 * msg.value / takeFee + 10^18) >= 0
                    require 0 <= 10^18 * msg.value / takeFee + 10^18
                    require 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3 <= sellOrderBalances[hash]
                    sellOrderBalances[hash] -= 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3
                    require ext_call.success
                    require ext_call.return_data[0]
                    if msg.value - (10^18 * msg.value / takeFee + 10^18) <= 0:
                        call arg4 with:
                           value 10^18 * msg.value / takeFee + 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call feeAccount with:
                           value msg.value - (10^18 * msg.value / takeFee + 10^18) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        call arg4 with:
                           value 10^18 * msg.value / takeFee + 10^18 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if block.number <= lastFreeBlock:
                        require msg.value - (10^18 * msg.value / takeFee + 10^18) >= 0
                        require 0 <= 10^18 * msg.value / takeFee + 10^18
                        require 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3 <= sellOrderBalances[hash]
                        sellOrderBalances[hash] -= 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3
                        require ext_call.success
                        require ext_call.return_data[0]
                        if msg.value - (10^18 * msg.value / takeFee + 10^18) <= 0:
                            call arg4 with:
                               value 10^18 * msg.value / takeFee + 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            call feeAccount with:
                               value msg.value - (10^18 * msg.value / takeFee + 10^18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            call arg4 with:
                               value 10^18 * msg.value / takeFee + 10^18 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if 10^18 * msg.value / takeFee + 10^18:
                            require 10^18 * msg.value / takeFee + 10^18
                            require 10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18 * msg.value / takeFee + 10^18 == makeFee
                        require (10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18) + msg.value - (10^18 * msg.value / takeFee + 10^18) >= 10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18
                        require 10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18 >= 0
                        require 10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18 <= 10^18 * msg.value / takeFee + 10^18
                        require 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3 <= sellOrderBalances[hash]
                        sellOrderBalances[hash] -= 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / takeFee + 10^18 * arg2 / arg3
                        require ext_call.success
                        require ext_call.return_data[0]
                        if (10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18) + msg.value - (10^18 * msg.value / takeFee + 10^18) <= 0:
                            call arg4 with:
                               value (10^18 * msg.value / takeFee + 10^18) - (10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            call feeAccount with:
                               value (10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18) + msg.value - (10^18 * msg.value / takeFee + 10^18) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            call arg4 with:
                               value (10^18 * msg.value / takeFee + 10^18) - (10^18 * msg.value / takeFee + 10^18 * makeFee / 10^18) wei
                                 gas 2300 * is_zero(value) wei
                emit TakeSellOrder(hash, arg2, arg3, 10^18 * msg.value / takeFee + 10^18, arg1, msg.sender, arg4);
            else:
                require (10^18 * msg.value / takeFee + 10^18) + 1 >= 10^18 * msg.value / takeFee + 10^18
                require (10^18 * msg.value / takeFee + 10^18) + 1 >= 1
                require (10^18 * msg.value / takeFee + 10^18) + 1 <= msg.value
                require msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 <= msg.value
                if (10^18 * msg.value / takeFee + 10^18) + 1:
                    require (10^18 * msg.value / takeFee + 10^18) + 1
                    require arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / (10^18 * msg.value / takeFee + 10^18) + 1 == arg2
                require arg3
                require sellOrderBalances[hash] >= arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
                require ext_code.size(etxAddress)
                call etxAddress.0x760a2e8a with:
                     gas gas_remaining - 710 wei
                    args arg4
                require ext_call.success
                if ext_call.return_data[0]:
                    require msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 >= 0
                    require 0 <= (10^18 * msg.value / takeFee + 10^18) + 1
                    require arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3 <= sellOrderBalances[hash]
                    sellOrderBalances[hash] -= arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
                    require ext_call.success
                    require ext_call.return_data[0]
                    if msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 <= 0:
                        call arg4 with:
                           value (10^18 * msg.value / takeFee + 10^18) + 1 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call feeAccount with:
                           value msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        call arg4 with:
                           value (10^18 * msg.value / takeFee + 10^18) + 1 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if block.number <= lastFreeBlock:
                        require msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 >= 0
                        require 0 <= (10^18 * msg.value / takeFee + 10^18) + 1
                        require arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3 <= sellOrderBalances[hash]
                        sellOrderBalances[hash] -= arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
                        require ext_call.success
                        require ext_call.return_data[0]
                        if msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 <= 0:
                            call arg4 with:
                               value (10^18 * msg.value / takeFee + 10^18) + 1 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            call feeAccount with:
                               value msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            call arg4 with:
                               value (10^18 * msg.value / takeFee + 10^18) + 1 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if (10^18 * msg.value / takeFee + 10^18) + 1:
                            require (10^18 * msg.value / takeFee + 10^18) + 1
                            require makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / (10^18 * msg.value / takeFee + 10^18) + 1 == makeFee
                        require (makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18) + msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 >= makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18
                        require makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18 >= 0
                        require makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18 <= (10^18 * msg.value / takeFee + 10^18) + 1
                        require arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3 <= sellOrderBalances[hash]
                        sellOrderBalances[hash] -= arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
                        require ext_call.success
                        require ext_call.return_data[0]
                        if (makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18) + msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 <= 0:
                            call arg4 with:
                               value (10^18 * msg.value / takeFee + 10^18) + -(makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18) + 1 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            call feeAccount with:
                               value (makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18) + msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            call arg4 with:
                               value (10^18 * msg.value / takeFee + 10^18) + -(makeFee + (10^18 * msg.value / takeFee + 10^18 * makeFee) / 10^18) + 1 wei
                                 gas 2300 * is_zero(value) wei
                emit TakeSellOrder(hash, arg2, arg3, (10^18 * msg.value / takeFee + 10^18) + 1, arg1, msg.sender, arg4);
}



}
