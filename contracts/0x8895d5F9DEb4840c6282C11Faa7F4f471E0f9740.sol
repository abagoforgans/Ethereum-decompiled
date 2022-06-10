contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 invalidOrder;
mapping of uint256 tokens;
mapping of uint8 stor3;
mapping of uint256 lastActiveTransaction;
address feeAccount;
uint256 inactivityReleasePeriod;

function lastActiveTransaction(address arg1) {
    return lastActiveTransaction[arg1]
}

function admins(address arg1) {
    return bool(stor3[arg1])
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeAccount() {
    return feeAccount
}

function invalidOrder(address arg1) {
    return invalidOrder[arg1]
}

function owner() {
    return owner
}

function inactivityReleasePeriod() {
    return inactivityReleasePeriod
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    emit SetOwner(owner, arg1);
    owner = arg1
}

function setAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
}

function setInactivityReleasePeriod(uint256 arg1) {
    require msg.sender == owner
    require stor3[address(msg.sender)]
    require arg1 < 10^6
    inactivityReleasePeriod = arg1
    return 1
}

function invalidateOrdersBefore(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor3[address(msg.sender)]
    require arg2 > invalidOrder[address(arg1)]
    invalidOrder[address(arg1)] = arg2
}

function deposit() payable {
    require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] += msg.value
    lastActiveTransaction[address(msg.sender)] = block.number
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] += arg2
    lastActiveTransaction[address(msg.sender)] = block.number
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function withdrawToken(address arg1, uint256 arg2) {
    require lastActiveTransaction[address(msg.sender)] <= block.number
    require block.number - lastActiveTransaction[address(msg.sender)] > inactivityReleasePeriod
    require tokens[address(arg1)][address(msg.sender)] > arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
    return 0
}

function withdraw(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require stor3[address(msg.sender)]
    require tokens[address(arg1)][address(arg3)] > arg2
    require arg2 <= tokens[address(arg1)][address(arg3)]
    tokens[address(arg1)][address(arg3)] -= arg2
    if arg4 > 5 * 10^16:
        require 5 * 10^16 * arg2 / 5 * 10^16 == arg2
        require tokens[address(arg1)][stor5] + (5 * 10^16 * arg2 / 10^18) >= tokens[address(arg1)][stor5]
        tokens[address(arg1)][stor5] += 5 * 10^16 * arg2 / 10^18
        require 95 * 10^16 * arg2 / 95 * 10^16 == arg2
        if not arg1:
            call arg3 with:
               value 95 * 10^16 * arg2 / 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), 95 * 10^16 * arg2 / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        lastActiveTransaction[address(arg3)] = block.number
        emit Withdraw(address(arg1), address(arg3), 95 * 10^16 * arg2 / 10^18, tokens[address(arg1)][address(arg3)]);
    else:
        if not arg4:
            require tokens[address(arg1)][stor5] >= tokens[address(arg1)][stor5]
        else:
            require arg4
            require arg4 * arg2 / arg4 == arg2
            require tokens[address(arg1)][stor5] + (arg4 * arg2 / 10^18) >= tokens[address(arg1)][stor5]
            tokens[address(arg1)][stor5] += arg4 * arg2 / 10^18
        if not -arg4 + 10^18:
            if not arg1:
                call arg3 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            lastActiveTransaction[address(arg3)] = block.number
            emit Withdraw(address(arg1), address(arg3), 0, tokens[address(arg1)][address(arg3)]);
        else:
            require -arg4 + 10^18
            require (10^18 * arg2) - (arg4 * arg2) / -arg4 + 10^18 == arg2
            if not arg1:
                call arg3 with:
                   value (10^18 * arg2) - (arg4 * arg2) / 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), (10^18 * arg2) - (arg4 * arg2) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            lastActiveTransaction[address(arg3)] = block.number
            emit Withdraw(address(arg1), address(arg3), (10^18 * arg2) - (arg4 * arg2) / 10^18, tokens[address(arg1)][address(arg3)]);
    return 0
}

function sub_75a27af0(?) {
    require msg.sender == owner
    require stor3[address(msg.sender)]
    require invalidOrder[address(call.data[324])] < call.data[100]
    require tokens[address(call.data[260])][address(call.data[356])] > call.data[132]
    if not call.data[36]:
        require call.data[4]
        require tokens[address(call.data[292])][address(call.data[324])] > 0 / call.data[4]
    else:
        require call.data[36]
        require call.data[36] * call.data[132] / call.data[36] == call.data[132]
        require call.data[4]
        require tokens[address(call.data[292])][address(call.data[324])] > call.data[36] * call.data[132] / call.data[4]
    require call.data[132] <= tokens[address(call.data[260])][address(call.data[356])]
    tokens[address(call.data[260])][address(call.data[356])] -= call.data[132]
    if call.data[196] <= 10^17:
        if not call.data[132]:
            require tokens[address(call.data[260])][address(call.data[324])] >= tokens[address(call.data[260])][address(call.data[324])]
        else:
            require call.data[132]
            require (10^18 * call.data[132]) - (call.data[196] * call.data[132]) / call.data[132] == -call.data[196] + 10^18
            require tokens[address(call.data[260])][address(call.data[324])] + ((10^18 * call.data[132]) - (call.data[196] * call.data[132]) / 10^18) >= tokens[address(call.data[260])][address(call.data[324])]
            tokens[address(call.data[260])][address(call.data[324])] += (10^18 * call.data[132]) - (call.data[196] * call.data[132]) / 10^18
        if not call.data[132]:
            require tokens[address(call.data[260])][stor5] >= tokens[address(call.data[260])][stor5]
        else:
            require call.data[132]
            require call.data[132] * call.data[196] / call.data[132] == call.data[196]
            require tokens[address(call.data[260])][stor5] + (call.data[132] * call.data[196] / 10^18) >= tokens[address(call.data[260])][stor5]
            tokens[address(call.data[260])][stor5] += call.data[132] * call.data[196] / 10^18
        if not call.data[36]:
            require call.data[4]
            require 0 / call.data[4] <= tokens[address(call.data[292])][address(call.data[324])]
            tokens[address(call.data[292])][address(call.data[324])] -= 0 / call.data[4]
        else:
            require call.data[36]
            require call.data[36] * call.data[132] / call.data[36] == call.data[132]
            require call.data[4]
            require call.data[36] * call.data[132] / call.data[4] <= tokens[address(call.data[292])][address(call.data[324])]
            tokens[address(call.data[292])][address(call.data[324])] -= call.data[36] * call.data[132] / call.data[4]
        if call.data[228] > 10^17:
            require 25 * 10^13 * 3600 * call.data[36] / 25 * 10^13 * 3600 == call.data[36]
            if not 25 * 10^13 * 3600 * call.data[36]:
                require call.data[4]
                require tokens[address(call.data[292])][address(call.data[356])] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                tokens[address(call.data[292])][address(call.data[356])] += 0 / call.data[4] / 10^18
            else:
                require 25 * 10^13 * 3600 * call.data[36]
                require (10^18 * call.data[36] * call.data[132]) - (10^17 * call.data[36] * call.data[132]) / 25 * 10^13 * 3600 * call.data[36] == call.data[132]
                require call.data[4]
                require tokens[address(call.data[292])][address(call.data[356])] + ((10^18 * call.data[36] * call.data[132]) - (10^17 * call.data[36] * call.data[132]) / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                tokens[address(call.data[292])][address(call.data[356])] += (10^18 * call.data[36] * call.data[132]) - (10^17 * call.data[36] * call.data[132]) / call.data[4] / 10^18
            require 10^17 * call.data[36] / 10^17 == call.data[36]
            if not 10^17 * call.data[36]:
                require call.data[4]
                require tokens[address(call.data[292])][stor5] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                tokens[address(call.data[292])][stor5] += 0 / call.data[4] / 10^18
            else:
                require 10^17 * call.data[36]
                require 10^17 * call.data[36] * call.data[132] / 10^17 * call.data[36] == call.data[132]
                require call.data[4]
                require tokens[address(call.data[292])][stor5] + (10^17 * call.data[36] * call.data[132] / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                tokens[address(call.data[292])][stor5] += 10^17 * call.data[36] * call.data[132] / call.data[4] / 10^18
        else:
            if not -call.data[228] + 10^18:
                require call.data[4]
                require tokens[address(call.data[292])][address(call.data[356])] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                tokens[address(call.data[292])][address(call.data[356])] += 0 / call.data[4] / 10^18
            else:
                require -call.data[228] + 10^18
                require (10^18 * call.data[36]) - (call.data[228] * call.data[36]) / -call.data[228] + 10^18 == call.data[36]
                if not (10^18 * call.data[36]) - (call.data[228] * call.data[36]):
                    require call.data[4]
                    require tokens[address(call.data[292])][address(call.data[356])] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                    tokens[address(call.data[292])][address(call.data[356])] += 0 / call.data[4] / 10^18
                else:
                    require (10^18 * call.data[36]) - (call.data[228] * call.data[36])
                    require (10^18 * call.data[36] * call.data[132]) - (call.data[228] * call.data[36] * call.data[132]) / (10^18 * call.data[36]) - (call.data[228] * call.data[36]) == call.data[132]
                    require call.data[4]
                    require tokens[address(call.data[292])][address(call.data[356])] + ((10^18 * call.data[36] * call.data[132]) - (call.data[228] * call.data[36] * call.data[132]) / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                    tokens[address(call.data[292])][address(call.data[356])] += (10^18 * call.data[36] * call.data[132]) - (call.data[228] * call.data[36] * call.data[132]) / call.data[4] / 10^18
            if not call.data[228]:
                require call.data[4]
                require tokens[address(call.data[292])][stor5] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                tokens[address(call.data[292])][stor5] += 0 / call.data[4] / 10^18
            else:
                require call.data[228]
                require call.data[228] * call.data[36] / call.data[228] == call.data[36]
                if not call.data[228] * call.data[36]:
                    require call.data[4]
                    require tokens[address(call.data[292])][stor5] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                    tokens[address(call.data[292])][stor5] += 0 / call.data[4] / 10^18
                else:
                    require call.data[228] * call.data[36]
                    require call.data[228] * call.data[36] * call.data[132] / call.data[228] * call.data[36] == call.data[132]
                    require call.data[4]
                    require tokens[address(call.data[292])][stor5] + (call.data[228] * call.data[36] * call.data[132] / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                    tokens[address(call.data[292])][stor5] += call.data[228] * call.data[36] * call.data[132] / call.data[4] / 10^18
    else:
        if not call.data[132]:
            require tokens[address(call.data[260])][address(call.data[324])] >= tokens[address(call.data[260])][address(call.data[324])]
        else:
            require call.data[132]
            require 25 * 10^13 * 3600 * call.data[132] / call.data[132] == 25 * 10^13 * 3600
            require tokens[address(call.data[260])][address(call.data[324])] + (25 * 10^13 * 3600 * call.data[132] / 10^18) >= tokens[address(call.data[260])][address(call.data[324])]
            tokens[address(call.data[260])][address(call.data[324])] += 25 * 10^13 * 3600 * call.data[132] / 10^18
        if not call.data[132]:
            require tokens[address(call.data[260])][stor5] >= tokens[address(call.data[260])][stor5]
        else:
            require call.data[132]
            require 10^17 * call.data[132] / call.data[132] == 10^17
            require tokens[address(call.data[260])][stor5] + (10^17 * call.data[132] / 10^18) >= tokens[address(call.data[260])][stor5]
            tokens[address(call.data[260])][stor5] += 10^17 * call.data[132] / 10^18
        if not call.data[36]:
            require call.data[4]
            require 0 / call.data[4] <= tokens[address(call.data[292])][address(call.data[324])]
            tokens[address(call.data[292])][address(call.data[324])] -= 0 / call.data[4]
        else:
            require call.data[36]
            require call.data[36] * call.data[132] / call.data[36] == call.data[132]
            require call.data[4]
            require call.data[36] * call.data[132] / call.data[4] <= tokens[address(call.data[292])][address(call.data[324])]
            tokens[address(call.data[292])][address(call.data[324])] -= call.data[36] * call.data[132] / call.data[4]
        if call.data[228] > 10^17:
            require 25 * 10^13 * 3600 * call.data[36] / 25 * 10^13 * 3600 == call.data[36]
            if not 25 * 10^13 * 3600 * call.data[36]:
                require call.data[4]
                require tokens[address(call.data[292])][address(call.data[356])] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                tokens[address(call.data[292])][address(call.data[356])] += 0 / call.data[4] / 10^18
            else:
                require 25 * 10^13 * 3600 * call.data[36]
                require (10^18 * call.data[36] * call.data[132]) - (10^17 * call.data[36] * call.data[132]) / 25 * 10^13 * 3600 * call.data[36] == call.data[132]
                require call.data[4]
                require tokens[address(call.data[292])][address(call.data[356])] + ((10^18 * call.data[36] * call.data[132]) - (10^17 * call.data[36] * call.data[132]) / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                tokens[address(call.data[292])][address(call.data[356])] += (10^18 * call.data[36] * call.data[132]) - (10^17 * call.data[36] * call.data[132]) / call.data[4] / 10^18
            require 10^17 * call.data[36] / 10^17 == call.data[36]
            if not 10^17 * call.data[36]:
                require call.data[4]
                require tokens[address(call.data[292])][stor5] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                tokens[address(call.data[292])][stor5] += 0 / call.data[4] / 10^18
            else:
                require 10^17 * call.data[36]
                require 10^17 * call.data[36] * call.data[132] / 10^17 * call.data[36] == call.data[132]
                require call.data[4]
                require tokens[address(call.data[292])][stor5] + (10^17 * call.data[36] * call.data[132] / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                tokens[address(call.data[292])][stor5] += 10^17 * call.data[36] * call.data[132] / call.data[4] / 10^18
        else:
            if not -call.data[228] + 10^18:
                require call.data[4]
                require tokens[address(call.data[292])][address(call.data[356])] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                tokens[address(call.data[292])][address(call.data[356])] += 0 / call.data[4] / 10^18
            else:
                require -call.data[228] + 10^18
                require (10^18 * call.data[36]) - (call.data[228] * call.data[36]) / -call.data[228] + 10^18 == call.data[36]
                if not (10^18 * call.data[36]) - (call.data[228] * call.data[36]):
                    require call.data[4]
                    require tokens[address(call.data[292])][address(call.data[356])] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                    tokens[address(call.data[292])][address(call.data[356])] += 0 / call.data[4] / 10^18
                else:
                    require (10^18 * call.data[36]) - (call.data[228] * call.data[36])
                    require (10^18 * call.data[36] * call.data[132]) - (call.data[228] * call.data[36] * call.data[132]) / (10^18 * call.data[36]) - (call.data[228] * call.data[36]) == call.data[132]
                    require call.data[4]
                    require tokens[address(call.data[292])][address(call.data[356])] + ((10^18 * call.data[36] * call.data[132]) - (call.data[228] * call.data[36] * call.data[132]) / call.data[4] / 10^18) >= tokens[address(call.data[292])][address(call.data[356])]
                    tokens[address(call.data[292])][address(call.data[356])] += (10^18 * call.data[36] * call.data[132]) - (call.data[228] * call.data[36] * call.data[132]) / call.data[4] / 10^18
            if not call.data[228]:
                require call.data[4]
                require tokens[address(call.data[292])][stor5] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                tokens[address(call.data[292])][stor5] += 0 / call.data[4] / 10^18
            else:
                require call.data[228]
                require call.data[228] * call.data[36] / call.data[228] == call.data[36]
                if not call.data[228] * call.data[36]:
                    require call.data[4]
                    require tokens[address(call.data[292])][stor5] + (0 / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                    tokens[address(call.data[292])][stor5] += 0 / call.data[4] / 10^18
                else:
                    require call.data[228] * call.data[36]
                    require call.data[228] * call.data[36] * call.data[132] / call.data[228] * call.data[36] == call.data[132]
                    require call.data[4]
                    require tokens[address(call.data[292])][stor5] + (call.data[228] * call.data[36] * call.data[132] / call.data[4] / 10^18) >= tokens[address(call.data[292])][stor5]
                    tokens[address(call.data[292])][stor5] += call.data[228] * call.data[36] * call.data[132] / call.data[4] / 10^18
    lastActiveTransaction[address(call.data[324])] = block.number
    lastActiveTransaction[address(call.data[356])] = block.number
    return 0
}



}
