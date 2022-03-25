contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = code.data[5701 len 32]
    stor1 = code.data[5733 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[5765 len 32] or Mask(96, 160, stor2)
    stor3 = code.data[5797 len 32]
    stor4 = code.data[5829 len 32]
    stor5 = code.data[5861 len 32]
    return code.data[114 len 5587]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 stor0;
address feeAccount;
uint256 stor1;
address accountLevelsAddr;
uint256 stor2;
uint256 feeMake;
uint256 feeTake;
uint256 feeRebate;
mapping of uint256 tokens;
mapping of uint8 stor7;
mapping of uint256 orderFills;
mapping of uint256 stor39048740689304090769292617152487549407608174934110822176378886661194909338036;

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
    return address(feeAccount)
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
    return address(accountLevelsAddr)
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return address(adminAddress)
}

function _fallback() {
    revert 
}

function changeFeeMake(uint256 arg1) {
    require msg.sender == address(adminAddress)
    require arg1 <= feeMake
    feeMake = arg1
}

function changeAdmin(address arg1) {
    require msg.sender == address(adminAddress)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function changeFeeAccount(address arg1) {
    require msg.sender == address(adminAddress)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function changeAccountLevelsAddr(address arg1) {
    require msg.sender == address(adminAddress)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function changeFeeTake(uint256 arg1) {
    require msg.sender == address(adminAddress)
    require arg1 <= feeTake
    require arg1 >= feeRebate
    feeTake = arg1
}

function changeFeeRebate(uint256 arg1) {
    require msg.sender == address(adminAddress)
    require arg1 >= feeRebate
    require arg1 <= feeTake
    feeRebate = arg1
}

function deposit() payable {
    require msg.value + stor5654[msg.sender] >= stor5654[msg.sender]
    require msg.value + stor5654[msg.sender] >= msg.value
    stor5654[msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + stor5654[msg.sender]);
}

function withdraw(uint256 arg1) {
    require msg.value <= 0
    require stor5654[msg.sender] >= arg1
    require arg1 <= stor5654[msg.sender]
    stor5654[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, stor5654[msg.sender]);
}

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.value <= 0
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    stor7[address(msg.sender)][hash] = 1
    emit Order(arg1, 0, address(arg3), arg4, arg5, arg6, address(msg.sender));
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.value <= 0
    require arg1 != 0
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require msg.value <= 0
    require arg1 != 0
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= tokens[address(arg1)][address(msg.sender)]
    require arg2 + tokens[address(arg1)][address(msg.sender)] >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][address(msg.sender)]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require msg.value <= 0
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if stor7[address(msg.sender)][hash]:
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(arg1, 0, address(arg3), arg4, arg5, arg6, address(msg.sender), arg7 << 248, arg8, arg9);
    else:
        signer = erecover(hash, arg7 << 248, arg8, arg9) 
        require erecover.result
        require address(signer) == msg.sender
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(arg1, 0, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9);
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if not stor7[address(arg7)][hash]:
        signer = erecover(hash, arg8 << 248, arg9, arg10) 
        require erecover.result
        if address(signer) != arg7:
            return 0
    if block.number > arg5:
        return 0
    require orderFills[address(arg7)][hash] <= arg2
    if tokens[address(arg3)][address(arg7)] != 0:
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
                if tokens[address(arg3)][address(arg7)] != 0:
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
            signer = erecover(hash, arg8 << 248, arg9, arg10) 
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
                    if tokens[address(arg3)][address(arg7)] != 0:
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

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require msg.value <= 0
    hash = sha256hash(address(this.address), 0, uint64(arg2), arg3, arg4, arg5, arg6) 
    require sha256hash.result
    if not stor7[address(arg7)][hash]:
        signer = erecover(hash, arg8 << 248, arg9, arg10) 
        require erecover.result
        require address(signer) == arg7
    require block.number <= arg5
    require arg11 + orderFills[address(arg7)][hash] >= orderFills[address(arg7)][hash]
    require arg11 + orderFills[address(arg7)][hash] >= arg11
    require arg11 + orderFills[address(arg7)][hash] <= arg2
    if arg11 != 0:
        require arg11
        require feeMake * arg11 / arg11 == feeMake
    if arg11 != 0:
        require arg11
        require feeTake * arg11 / arg11 == feeTake
    if 0 == address(accountLevelsAddr):
        require (feeTake * arg11 / 10^18) + arg11 >= arg11
        require (feeTake * arg11 / 10^18) + arg11 >= feeTake * arg11 / 10^18
        require (feeTake * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (feeTake * arg11 / 10^18) - arg11
        require arg11 >= arg11
        require arg11 >= 0
        require feeMake * arg11 / 10^18 <= arg11
        require arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
        require tokens[address(arg1)][arg7] >= 0
        tokens[address(arg1)][address(arg7)] = arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7]
        require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
        require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeTake * arg11 / 10^18
        require 0 <= (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18)
        require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)] >= tokens[address(arg1)][address(stor1)]
        require tokens[address(arg1)][address(stor1)] >= 0
        tokens[address(arg1)][address(stor1)] = (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)]
    else:
        require ext_code.size(address(accountLevelsAddr))
        call address(accountLevelsAddr).accountLevel(address rg1) with:
             gas gas_remaining - 50 wei
            args arg7
        require ext_call.success
        if ext_call.return_data[0] != 1:
            require (feeTake * arg11 / 10^18) + arg11 >= arg11
            require (feeTake * arg11 / 10^18) + arg11 >= feeTake * arg11 / 10^18
            require (feeTake * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (feeTake * arg11 / 10^18) - arg11
            if ext_call.return_data[0] != 2:
                require arg11 >= arg11
                require arg11 >= 0
                require feeMake * arg11 / 10^18 <= arg11
                require arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                require tokens[address(arg1)][arg7] >= 0
                tokens[address(arg1)][address(arg7)] = arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7]
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeTake * arg11 / 10^18
                require 0 <= (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)] >= tokens[address(arg1)][address(stor1)]
                require tokens[address(arg1)][address(stor1)] >= 0
                tokens[address(arg1)][address(stor1)] = (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)]
            else:
                require (feeTake * arg11 / 10^18) + arg11 >= arg11
                require (feeTake * arg11 / 10^18) + arg11 >= feeTake * arg11 / 10^18
                require feeMake * arg11 / 10^18 <= (feeTake * arg11 / 10^18) + arg11
                require (feeTake * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                require tokens[address(arg1)][arg7] >= 0
                tokens[address(arg1)][address(arg7)] = (feeTake * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7]
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeTake * arg11 / 10^18
                require feeTake * arg11 / 10^18 <= (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                require (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)] >= tokens[address(arg1)][address(stor1)]
                require (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)] >= feeMake * arg11 / 10^18
                tokens[address(arg1)][address(stor1)] += feeMake * arg11 / 10^18
        else:
            if arg11 != 0:
                require arg11
                require feeRebate * arg11 / arg11 == feeRebate
            require (feeTake * arg11 / 10^18) + arg11 >= arg11
            require (feeTake * arg11 / 10^18) + arg11 >= feeTake * arg11 / 10^18
            require (feeTake * arg11 / 10^18) + arg11 <= tokens[address(arg1)][address(msg.sender)]
            tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - (feeTake * arg11 / 10^18) - arg11
            if ext_call.return_data[0] != 2:
                require (feeRebate * arg11 / 10^18) + arg11 >= arg11
                require (feeRebate * arg11 / 10^18) + arg11 >= feeRebate * arg11 / 10^18
                require feeMake * arg11 / 10^18 <= (feeRebate * arg11 / 10^18) + arg11
                require (feeRebate * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                require tokens[address(arg1)][arg7] >= 0
                tokens[address(arg1)][address(arg7)] = (feeRebate * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7]
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeTake * arg11 / 10^18
                require feeRebate * arg11 / 10^18 <= (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) - (feeRebate * arg11 / 10^18) + tokens[address(arg1)][address(stor1)] >= tokens[address(arg1)][address(stor1)]
                require tokens[address(arg1)][address(stor1)] >= 0
                tokens[address(arg1)][address(stor1)] = (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) - (feeRebate * arg11 / 10^18) + tokens[address(arg1)][address(stor1)]
            else:
                require (feeTake * arg11 / 10^18) + arg11 >= arg11
                require (feeTake * arg11 / 10^18) + arg11 >= feeTake * arg11 / 10^18
                require feeMake * arg11 / 10^18 <= (feeTake * arg11 / 10^18) + arg11
                require (feeTake * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7] >= tokens[address(arg1)][arg7]
                require tokens[address(arg1)][arg7] >= 0
                tokens[address(arg1)][address(arg7)] = (feeTake * arg11 / 10^18) + arg11 - (feeMake * arg11 / 10^18) + tokens[address(arg1)][arg7]
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeMake * arg11 / 10^18
                require (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18) >= feeTake * arg11 / 10^18
                require feeTake * arg11 / 10^18 <= (feeTake * arg11 / 10^18) + (feeMake * arg11 / 10^18)
                require (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)] >= tokens[address(arg1)][address(stor1)]
                require (feeMake * arg11 / 10^18) + tokens[address(arg1)][address(stor1)] >= feeMake * arg11 / 10^18
                tokens[address(arg1)][address(stor1)] += feeMake * arg11 / 10^18
    if arg4 != 0:
        require arg4
        require arg11 * arg4 / arg4 == arg11
    require arg2
    require arg11 * arg4 / arg2 <= tokens[address(arg3)][address(arg7)]
    tokens[address(arg3)][address(arg7)] -= arg11 * arg4 / arg2
    if arg4 != 0:
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
