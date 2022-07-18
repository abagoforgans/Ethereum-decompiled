contract main {




// =====================  Runtime code  =====================


const totalFunds = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 totalShares;
uint256 totalReleased;
uint256 sub_9cf3f6b5;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;

function totalShares() {
    return totalShares
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < payee.length
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    return released[address(arg1)]
}

function sub_9cf3f6b5(?) {
    return sub_9cf3f6b5
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    return shares[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    emit PaymentReceived(msg.sender, msg.value);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7c7ed112(?) {
    require calldata.size - 4 >= 32
    if not totalShares:
        return 0
    if not shares[address(arg1)]:
        return 0
    if not shares[address(arg1)]:
        require totalShares > 0
        if totalShares:
            return (0 / totalShares)
    else:
        if shares[address(arg1)]:
            require 100 * shares[address(arg1)] / shares[address(arg1)] == 100
            require totalShares > 0
            if totalShares:
                return (100 * shares[address(arg1)] / totalShares)
    revert
}

function sub_599f88db(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid account'
    if arg2 <= 0:
        revert with 0, 'Shares must be greater than zero'
    if shares[address(arg1)] <= 0:
        revert with 0, 'Payee does not exist'
    if totalReleased:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d7573742072656c6561736520616c6c206578697374696e67207061796d656e74732066697273,
                    mem[204 len 24]
    require shares[address(arg1)] + arg2 >= shares[address(arg1)]
    shares[address(arg1)] += arg2
    require totalShares + arg2 >= totalShares
    totalShares += arg2
    emit 0x923fac73: address(arg1), arg2, shares[address(arg1)]
}

function sub_737e0779(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid account'
    if ext_code.size(arg1) > 0:
        revert with 0, 'Account cannot be a contract'
    if arg2 <= 0:
        revert with 0, 'Shares must be greater than zero'
    if shares[address(arg1)]:
        revert with 0, 'Payee already exists'
    if totalReleased:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d7573742072656c6561736520616c6c206578697374696e67207061796d656e74732066697273,
                    mem[204 len 24]
    payee.length++
    payee[payee.length] = arg1
    shares[address(arg1)] = arg2
    require totalShares + arg2 >= totalShares
    totalShares += arg2
    emit PayeeAdded(address(arg1), arg2);
}

function available(address arg1) {
    require calldata.size - 4 >= 32
    require eth.balance(this.address) + totalReleased >= eth.balance(this.address)
    if not eth.balance(this.address) + totalReleased:
        require totalShares > 0
        require totalShares
        if 0 / totalShares < released[address(arg1)]:
            return 0
        require released[address(arg1)] <= 0 / totalShares
        return ((0 / totalShares) - released[address(arg1)])
    require eth.balance(this.address) + totalReleased
    require (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / eth.balance(this.address) + totalReleased == shares[address(arg1)]
    require totalShares > 0
    require totalShares
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        return 0
    require released[address(arg1)] <= (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    return (((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)])
}

function release() {
    stor1++
    if shares[address(msg.sender)] <= 0:
        revert with 0, 'Account not eligible for payroll'
    require eth.balance(this.address) + totalReleased >= eth.balance(this.address)
    if not eth.balance(this.address) + totalReleased:
        require totalShares > 0
        require totalShares
        if 0 / totalShares < released[address(msg.sender)]:
            revert with 0, 'No payment available for account'
        require released[address(msg.sender)] <= 0 / totalShares
        if not (0 / totalShares) - released[address(msg.sender)]:
            revert with 0, 'No payment available for account'
        require 0 / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = 0 / totalShares
        require totalReleased + (0 / totalShares) - released[address(msg.sender)] >= totalReleased
        totalReleased = totalReleased + (0 / totalShares) - released[address(msg.sender)]
        require sub_9cf3f6b5 + (0 / totalShares) - released[address(msg.sender)] >= sub_9cf3f6b5
        sub_9cf3f6b5 = sub_9cf3f6b5 + (0 / totalShares) - released[address(msg.sender)]
        call msg.sender with:
           value (0 / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PaymentReleased(msg.sender, (0 / totalShares) - released[address(msg.sender)]);
    else:
        require eth.balance(this.address) + totalReleased
        require (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / eth.balance(this.address) + totalReleased == shares[address(msg.sender)]
        require totalShares > 0
        require totalShares
        if (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares < released[address(msg.sender)]:
            revert with 0, 'No payment available for account'
        require released[address(msg.sender)] <= (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares
        if not ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]:
            revert with 0, 'No payment available for account'
        require (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = (eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares
        require totalReleased + ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] >= totalReleased
        totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
        require sub_9cf3f6b5 + ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] >= sub_9cf3f6b5
        sub_9cf3f6b5 = sub_9cf3f6b5 + ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
        call msg.sender with:
           value ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PaymentReleased(msg.sender, ((eth.balance(this.address) * shares[address(msg.sender)]) + (totalReleased * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]);
    require stor1 == stor1
}

function releaseAll() {
    require msg.sender == owner
    idx = 0
    while idx < payee.length:
        require eth.balance(this.address) + totalReleased >= eth.balance(this.address)
        if not eth.balance(this.address) + totalReleased:
            require totalShares > 0
            require totalShares
            if 0 / totalShares < released[stor7[idx]]:
                require released[stor7[idx]] >= released[stor7[idx]]
                mem[0] = payee[idx]
                mem[32] = 6
                require totalReleased >= totalReleased
                require sub_9cf3f6b5 >= sub_9cf3f6b5
                call payee[idx] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = payee[idx]
                mem[128] = 0
                emit PaymentReleased(payee[idx], 0);
            else:
                require released[stor7[idx]] <= 0 / totalShares
                require 0 / totalShares >= released[stor7[idx]]
                mem[0] = payee[idx]
                mem[32] = 6
                released[stor7[idx]] = 0 / totalShares
                require totalReleased + (0 / totalShares) - released[stor7[idx]] >= totalReleased
                totalReleased = totalReleased + (0 / totalShares) - released[stor7[idx]]
                require sub_9cf3f6b5 + (0 / totalShares) - released[stor7[idx]] >= sub_9cf3f6b5
                sub_9cf3f6b5 = sub_9cf3f6b5 + (0 / totalShares) - released[stor7[idx]]
                call payee[idx] with:
                   value (0 / totalShares) - released[stor7[idx]] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = payee[idx]
                mem[128] = (0 / totalShares) - released[stor7[idx]]
                emit PaymentReleased(payee[idx], (0 / totalShares) - released[stor7[idx]]);
        else:
            require eth.balance(this.address) + totalReleased
            require (eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / eth.balance(this.address) + totalReleased == shares[stor7[idx]]
            require totalShares > 0
            require totalShares
            if (eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares < released[stor7[idx]]:
                require released[stor7[idx]] >= released[stor7[idx]]
                mem[0] = payee[idx]
                mem[32] = 6
                require totalReleased >= totalReleased
                require sub_9cf3f6b5 >= sub_9cf3f6b5
                call payee[idx] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = payee[idx]
                mem[128] = 0
                emit PaymentReleased(payee[idx], 0);
            else:
                require released[stor7[idx]] <= (eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares
                require (eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares >= released[stor7[idx]]
                mem[0] = payee[idx]
                mem[32] = 6
                released[stor7[idx]] = (eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares
                require totalReleased + ((eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares) - released[stor7[idx]] >= totalReleased
                totalReleased = totalReleased + ((eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares) - released[stor7[idx]]
                require sub_9cf3f6b5 + ((eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares) - released[stor7[idx]] >= sub_9cf3f6b5
                sub_9cf3f6b5 = sub_9cf3f6b5 + ((eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares) - released[stor7[idx]]
                call payee[idx] with:
                   value ((eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares) - released[stor7[idx]] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = payee[idx]
                mem[128] = ((eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares) - released[stor7[idx]]
                emit PaymentReleased(payee[idx], ((eth.balance(this.address) * shares[stor7[idx]]) + (totalReleased * shares[stor7[idx]]) / totalShares) - released[stor7[idx]]);
        idx = idx + 1
        continue 
    idx = 0
    while idx < payee.length:
        mem[0] = payee[idx]
        mem[32] = 6
        released[stor7[idx]] = 0
        idx = idx + 1
        continue 
    totalReleased = 0
}



}
