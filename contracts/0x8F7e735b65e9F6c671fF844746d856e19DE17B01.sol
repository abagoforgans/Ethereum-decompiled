contract main {




// =====================  Runtime code  =====================


address feeAccount1;
address feeAccount2;
address sub_12ff1a3dAddress;
uint256 takeFee;
mapping of struct stor4;
uint256 sub_57299723;
uint256 sub_6314e869;
address sub_5ab076d5Address;
uint256 sub_40b0e423;
mapping of uint256 sellOrderBalances;
mapping of uint256 buyOrderBalances;

function sellOrderBalances(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sellOrderBalances[arg1]
}

function sub_12ff1a3d(?) {
    return sub_12ff1a3dAddress
}

function takeFee() {
    return takeFee
}

function sub_40b0e423(?) {
    return sub_40b0e423
}

function sub_57299723(?) {
    return sub_57299723
}

function buyOrderBalances(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return buyOrderBalances[arg1]
}

function sub_5ab076d5(?) {
    return sub_5ab076d5Address
}

function sub_6314e869(?) {
    return sub_6314e869
}

function feeAccount2() {
    return feeAccount2
}

function feeAccount1() {
    return feeAccount1
}

function _fallback() {
    revert with 0, 'does not receive funds'
}

function sub_22faed27(?) {
    if sub_40b0e423 <= 0:
        return 0
    require sub_6314e869
    return ((stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1)
}

function sub_9c78d168(?) {
    require calldata.size - 4 >= 32
    if sub_57299723 <= stor4[address(arg1)].field_256:
        return stor4[address(arg1)].field_0
    else:
        return 0
}

function calculateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        return (arg2 * arg1 / 10^18)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1 / 10^18)
}

function sub_a431057c(?) {
    require calldata.size - 4 >= 128
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = sha256hash(arg1, arg2, arg4, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sellOrderBalances[hash] = 0
}

function sub_04c718e5(?) {
    require calldata.size - 4 >= 128
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = sha256hash(arg1, arg4, arg3, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    buyOrderBalances[hash] = 0
    emit 0x1f948df7: hash, hash, arg4, arg3, arg1, msg.sender
}

function cancelAllBuyOrders(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    buyOrderBalances[hash] = 0
    call msg.sender with:
       value buyOrderBalances[hash] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'failed to send to sender'
    if sub_40b0e423 > 0:
        require sub_6314e869
        if block.timestamp > sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869):
            sub_40b0e423 = 0
            require ext_code.size(sub_12ff1a3dAddress)
            call sub_12ff1a3dAddress.0x5d8a776e with:
                 gas gas_remaining wei
                args sub_5ab076d5Address, (stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_57299723 = sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869)
    emit CancelBuyOrder(hash, arg2, arg3, arg1, msg.sender);
}

function makeBuyOrder(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'tokenAmount cannot be zero'
    if not msg.value:
        revert with 0, 'value cannot be zero'
    hash = sha256hash(arg1, arg2, msg.value, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value + buyOrderBalances[hash] >= buyOrderBalances[hash]
    require msg.value + buyOrderBalances[hash] >= msg.value
    buyOrderBalances[hash] += msg.value
    if sub_40b0e423 > 0:
        require sub_6314e869
        if block.timestamp > sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869):
            sub_40b0e423 = 0
            require ext_code.size(sub_12ff1a3dAddress)
            call sub_12ff1a3dAddress.0x5d8a776e with:
                 gas gas_remaining wei
                args sub_5ab076d5Address, (stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_57299723 = sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869)
    emit MakeBuyOrder(hash, arg2, msg.value, arg1, msg.sender);
}

function cancelAllSellOrders(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sellOrderBalances[hash] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x86975527aed0adfe33cd903f398604e875aef794, sellOrderBalances[hash]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_40b0e423 > 0:
        require sub_6314e869
        if block.timestamp > sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869):
            sub_40b0e423 = 0
            require ext_code.size(sub_12ff1a3dAddress)
            call sub_12ff1a3dAddress.0x5d8a776e with:
                 gas gas_remaining wei
                args sub_5ab076d5Address, (stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_57299723 = sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869)
    emit CancelSellOrder(hash, arg2, arg3, arg1, msg.sender);
}

function makeSellOrder(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'tokenAmount cannot be zero'
    if not arg3:
        revert with 0, 'weiAmount cannot be zero'
    if sub_40b0e423 > 0:
        require sub_6314e869
        if block.timestamp > sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869):
            sub_40b0e423 = 0
            require ext_code.size(sub_12ff1a3dAddress)
            call sub_12ff1a3dAddress.0x5d8a776e with:
                 gas gas_remaining wei
                args sub_5ab076d5Address, (stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_57299723 = sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869)
    hash = sha256hash(arg1, arg2, arg3, msg.sender) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + sellOrderBalances[hash] >= sellOrderBalances[hash]
    require arg2 + sellOrderBalances[hash] >= arg2
    sellOrderBalances[hash] += arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 32, 42, 0x73746f6b656e416d6f756e74206d7573742062652067726561746572207468656e20616c6c6f77616e63, mem[342 len 22]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed.'
    emit MakeSellOrder(hash, arg2, arg3, arg1, msg.sender);
}

function takeBuyOrder(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    if not arg2:
        revert with 0, 'token amount cannot be zero'
    if not arg3:
        revert with 0, 'wei amount cannot be zero'
    if not arg4:
        revert with 0, 'total tokens cannot be zero'
    hash = sha256hash(arg1, arg2, arg3, Mask(96, 64, arg5) >> 64 >> 512, uint64(arg5)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
        require arg4
        require arg3 * arg4 / arg4 == arg3
    require arg2
    require arg3 * arg4 / arg2 <= buyOrderBalances[hash]
    if arg3 * arg4 / arg2:
        require arg3 * arg4 / arg2
        require takeFee * arg3 * arg4 / arg2 / arg3 * arg4 / arg2 == takeFee
    require arg3 * arg4 / arg2 <= buyOrderBalances[hash]
    buyOrderBalances[hash] -= arg3 * arg4 / arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg4
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg5), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if takeFee * arg3 * arg4 / arg2 / 10^18 > 0:
        call feeAccount1 with:
           value takeFee * arg3 * arg4 / arg2 / 10^18 / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 32, 34, 0xfe666565206163636f756e74206661696c656420746f207265636569766520666565, uint16(arg5), mem[336 len 28]
        call feeAccount2 with:
           value takeFee * arg3 * arg4 / arg2 / 10^18 / 2 wei
             gas 2300 * is_zero(value) wei
    require takeFee * arg3 * arg4 / arg2 / 10^18 <= arg3 * arg4 / arg2
    call msg.sender with:
       value (arg3 * arg4 / arg2) - (takeFee * arg3 * arg4 / arg2 / 10^18) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'failed to send to sender'
    if sub_40b0e423 > 0:
        require sub_6314e869
        if block.timestamp > sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869):
            sub_40b0e423 = 0
            require ext_code.size(sub_12ff1a3dAddress)
            call sub_12ff1a3dAddress.0x5d8a776e with:
                 gas gas_remaining wei
                args sub_5ab076d5Address, (stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_57299723 = sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869)
    if stor4[address(arg5)].field_256 < sub_57299723:
        stor4[address(arg5)].field_256 = block.timestamp
        stor4[address(arg5)].field_0 = 0
    stor4[address(arg5)].field_0 += arg3 * arg4 / arg2
    if (arg3 * arg4 / arg2) + stor4[address(arg5)].field_0 > sub_40b0e423:
        sub_40b0e423 = (arg3 * arg4 / arg2) + stor4[address(arg5)].field_0
        sub_5ab076d5Address = arg5
    emit TakeBuyOrder(hash, arg2, arg3, arg4, arg1, arg5, msg.sender);
}

function feeFromTotalCost(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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

function takeSellOrder(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if not arg2:
        revert with 0, 'tokenAmount cannot be zero'
    if not arg3:
        revert with 0, 'weiAmount cannot be zero'
    hash = sha256hash(arg1, arg2, arg3, Mask(96, 64, arg4) >> 64 >> 512, uint64(arg4)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
            require arg2 * 10^18 * msg.value / takeFee + 10^18 / 10^18 * msg.value / takeFee + 10^18 == arg2
        require arg3
        require arg2 * 10^18 * msg.value / takeFee + 10^18 / arg3 <= sellOrderBalances[hash]
        require arg2 * 10^18 * msg.value / takeFee + 10^18 / arg3 <= sellOrderBalances[hash]
        sellOrderBalances[hash] -= arg2 * 10^18 * msg.value / takeFee + 10^18 / arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2 * 10^18 * msg.value / takeFee + 10^18 / arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if msg.value - (10^18 * msg.value / takeFee + 10^18) <= 0:
            call arg4 with:
               value 10^18 * msg.value / takeFee + 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'seller failed to send proceeds'
        else:
            call feeAccount1 with:
               value msg.value - (10^18 * msg.value / takeFee + 10^18) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 32, 34, 0xfe666565206163636f756e74206661696c656420746f207265636569766520666565, uint16(arg4), mem[336 len 28]
            call feeAccount2 with:
               value msg.value - (10^18 * msg.value / takeFee + 10^18) / 2 wei
                 gas 2300 * is_zero(value) wei
            call arg4 with:
               value 10^18 * msg.value / takeFee + 10^18 wei
                 gas 2300 * is_zero(value) wei
        if sub_40b0e423 > 0:
            require sub_6314e869
            if block.timestamp > sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869):
                sub_40b0e423 = 0
                require ext_code.size(sub_12ff1a3dAddress)
                call sub_12ff1a3dAddress.0x5d8a776e with:
                     gas gas_remaining wei
                    args sub_5ab076d5Address, (stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_57299723 = sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869)
        if stor4[address(arg4)].field_256 < sub_57299723:
            stor4[address(arg4)].field_256 = block.timestamp
            stor4[address(arg4)].field_0 = 0
        stor4[address(arg4)].field_0 += 10^18 * msg.value / takeFee + 10^18
        if (10^18 * msg.value / takeFee + 10^18) + stor4[address(arg4)].field_0 > sub_40b0e423:
            sub_40b0e423 = (10^18 * msg.value / takeFee + 10^18) + stor4[address(arg4)].field_0
            sub_5ab076d5Address = arg4
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
        require arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3 <= sellOrderBalances[hash]
        require arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3 <= sellOrderBalances[hash]
        sellOrderBalances[hash] -= arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2 + (10^18 * msg.value / takeFee + 10^18 * arg2) / arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 <= 0:
            call arg4 with:
               value (10^18 * msg.value / takeFee + 10^18) + 1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'seller failed to send proceeds'
        else:
            call feeAccount1 with:
               value msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 32, 34, 0xfe666565206163636f756e74206661696c656420746f207265636569766520666565, uint16(arg4), mem[336 len 28]
            call feeAccount2 with:
               value msg.value + -(10^18 * msg.value / takeFee + 10^18) - 1 / 2 wei
                 gas 2300 * is_zero(value) wei
            call arg4 with:
               value (10^18 * msg.value / takeFee + 10^18) + 1 wei
                 gas 2300 * is_zero(value) wei
        if sub_40b0e423 > 0:
            require sub_6314e869
            if block.timestamp > sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869):
                sub_40b0e423 = 0
                require ext_code.size(sub_12ff1a3dAddress)
                call sub_12ff1a3dAddress.0x5d8a776e with:
                     gas gas_remaining wei
                    args sub_5ab076d5Address, (stor4[stor7].field_256 - sub_57299723 / sub_6314e869) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_57299723 = sub_57299723 + sub_6314e869 + (stor4[stor7].field_256 - sub_57299723 / sub_6314e869 * sub_6314e869)
        if stor4[address(arg4)].field_256 < sub_57299723:
            stor4[address(arg4)].field_256 = block.timestamp
            stor4[address(arg4)].field_0 = 0
        stor4[address(arg4)].field_0 = (10^18 * msg.value / takeFee + 10^18) + stor4[address(arg4)].field_0 + 1
        if (10^18 * msg.value / takeFee + 10^18) + stor4[address(arg4)].field_0 + 1 > sub_40b0e423:
            sub_40b0e423 = (10^18 * msg.value / takeFee + 10^18) + stor4[address(arg4)].field_0 + 1
            sub_5ab076d5Address = arg4
        emit TakeSellOrder(hash, arg2, arg3, (10^18 * msg.value / takeFee + 10^18) + 1, arg1, msg.sender, arg4);
}



}
