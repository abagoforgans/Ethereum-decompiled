contract main {




// =====================  Runtime code  =====================


const ADMIN_COMMISSION_ADDRESS = 0x54e14eaacfff244c82a1edc3778f9a0391e7e615

const COMPENSATION_COMMISSION_ADDRESS = 0x8e30a300c73cd8107280f5af04e90c1f815086e1


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 depositAmount;
uint256 payoutDate;
uint256 paymentDate;
array of address addresses;
mapping of struct investors;

function payoutDate() {
    return payoutDate
}

function depositAmount() {
    return depositAmount
}

function paymentDate() {
    return paymentDate
}

function investors(address arg1) {
    return investors[arg1].field_0, 
           investors[arg1].field_256,
           investors[arg1].field_512,
           investors[arg1].field_768,
           investors[arg1].field_1024
}

function getInvestorCount() {
    return addresses.length
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return addresses[arg1]
}

function getInvestorUnPaidAmount(address arg1) {
    require investors[address(arg1)].field_768 <= block.timestamp
    if not block.timestamp - investors[address(arg1)].field_768:
        if investors[address(arg1)].field_256 / 1000:
            require investors[address(arg1)].field_256 / 1000
            require investors[address(arg1)].field_256 / 1000 * stor7 / investors[address(arg1)].field_256 / 1000 == stor7
            if investors[address(arg1)].field_256 / 1000 * stor7 / 100:
                require investors[address(arg1)].field_256 / 1000 * stor7 / 100
                require not 0 / investors[address(arg1)].field_256 / 1000 * stor7 / 100
                return 0
            else:
                return 0
        else:
            return 0
    require block.timestamp - investors[address(arg1)].field_768
    require (100 * block.timestamp) - (100 * investors[address(arg1)].field_768) / block.timestamp - investors[address(arg1)].field_768 == 100
    if not investors[address(arg1)].field_256 / 1000:
        return 0
    require investors[address(arg1)].field_256 / 1000
    require investors[address(arg1)].field_256 / 1000 * stor7 / investors[address(arg1)].field_256 / 1000 == stor7
    if not investors[address(arg1)].field_256 / 1000 * stor7 / 100:
        return 0
    require investors[address(arg1)].field_256 / 1000 * stor7 / 100
    require (100 * block.timestamp * investors[address(arg1)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(arg1)].field_768 * investors[address(arg1)].field_256 / 1000 * stor7 / 100) / investors[address(arg1)].field_256 / 1000 * stor7 / 100 == (100 * block.timestamp) - (100 * investors[address(arg1)].field_768)
    return ((100 * block.timestamp * investors[address(arg1)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(arg1)].field_768 * investors[address(arg1)].field_256 / 1000 * stor7 / 100) / 24 * 3600)
}

function payoutSelf() {
    if investors[address(msg.sender)].field_256 <= 0:
        revert with 0, 'Deposit not found'
    if block.timestamp < investors[address(msg.sender)].field_768 + stor6:
        revert with 0, 'Too fast payout request'
    require investors[address(msg.sender)].field_768 <= block.timestamp
    if not block.timestamp - investors[address(msg.sender)].field_768:
        if investors[address(msg.sender)].field_256 / 1000:
            require investors[address(msg.sender)].field_256 / 1000
            require investors[address(msg.sender)].field_256 / 1000 * stor7 / investors[address(msg.sender)].field_256 / 1000 == stor7
            if investors[address(msg.sender)].field_256 / 1000 * stor7 / 100:
                require investors[address(msg.sender)].field_256 / 1000 * stor7 / 100
                require not 0 / investors[address(msg.sender)].field_256 / 1000 * stor7 / 100
        revert with 0, 'Too small unpaid amount'
    require block.timestamp - investors[address(msg.sender)].field_768
    require (100 * block.timestamp) - (100 * investors[address(msg.sender)].field_768) / block.timestamp - investors[address(msg.sender)].field_768 == 100
    if not investors[address(msg.sender)].field_256 / 1000:
        revert with 0, 'Too small unpaid amount'
    require investors[address(msg.sender)].field_256 / 1000
    require investors[address(msg.sender)].field_256 / 1000 * stor7 / investors[address(msg.sender)].field_256 / 1000 == stor7
    if not investors[address(msg.sender)].field_256 / 1000 * stor7 / 100:
        revert with 0, 'Too small unpaid amount'
    require investors[address(msg.sender)].field_256 / 1000 * stor7 / 100
    require (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / investors[address(msg.sender)].field_256 / 1000 * stor7 / 100 == (100 * block.timestamp) - (100 * investors[address(msg.sender)].field_768)
    if (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600 < 10^15:
        revert with 0, 'Too small unpaid amount'
    investors[address(msg.sender)].field_768 = block.timestamp
    if eth.balance(this.address) >= (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600:
        call msg.sender with:
           value (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PayoutSelf(msg.sender, (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600);
}

function payout(uint256 arg1) {
    if block.timestamp < payoutDate + stor5:
        revert with 0, 'Too fast payout request'
    s = 0
    idx = addresses.length
    while idx > 0:
        require idx - 1 < addresses.length
        mem[0] = addresses[idx]
        mem[32] = 12
        if investors[stor11[idx]].field_768 + (20 * 3600) > block.timestamp:
            s = addresses[idx]
            idx = idx - 1
            continue 
        require investors[stor11[idx]].field_768 <= block.timestamp
        if not block.timestamp - investors[stor11[idx]].field_768:
            if investors[stor11[idx]].field_256 / 1000:
                require investors[stor11[idx]].field_256 / 1000
                require investors[stor11[idx]].field_256 / 1000 * stor7 / investors[stor11[idx]].field_256 / 1000 == stor7
                if investors[stor11[idx]].field_256 / 1000 * stor7 / 100:
                    require investors[stor11[idx]].field_256 / 1000 * stor7 / 100
                    require not 0 / investors[stor11[idx]].field_256 / 1000 * stor7 / 100
            mem[0] = addresses[idx]
            mem[32] = 12
            investors[stor11[idx]].field_768 = block.timestamp
            if eth.balance(this.address) >= 0:
                call addresses[idx] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 1 < arg1:
                    s = addresses[idx]
                    idx = idx - 1
                    continue 
                payoutDate = block.timestamp
                emit PayoutCumulative(0, 1);
        else:
            require block.timestamp - investors[stor11[idx]].field_768
            require (100 * block.timestamp) - (100 * investors[stor11[idx]].field_768) / block.timestamp - investors[stor11[idx]].field_768 == 100
            if not investors[stor11[idx]].field_256 / 1000:
                mem[0] = addresses[idx]
                mem[32] = 12
                investors[stor11[idx]].field_768 = block.timestamp
                if eth.balance(this.address) >= 0:
                    call addresses[idx] with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 < arg1:
                        s = addresses[idx]
                        idx = idx - 1
                        continue 
                    payoutDate = block.timestamp
                    emit PayoutCumulative(0, 1);
            else:
                require investors[stor11[idx]].field_256 / 1000
                require investors[stor11[idx]].field_256 / 1000 * stor7 / investors[stor11[idx]].field_256 / 1000 == stor7
                if not investors[stor11[idx]].field_256 / 1000 * stor7 / 100:
                    mem[0] = addresses[idx]
                    mem[32] = 12
                    investors[stor11[idx]].field_768 = block.timestamp
                    if eth.balance(this.address) >= 0:
                        call addresses[idx] with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 1 < arg1:
                            s = addresses[idx]
                            idx = idx - 1
                            continue 
                        payoutDate = block.timestamp
                        emit PayoutCumulative(0, 1);
                else:
                    require investors[stor11[idx]].field_256 / 1000 * stor7 / 100
                    require (100 * block.timestamp * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) - (100 * investors[stor11[idx]].field_768 * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) / investors[stor11[idx]].field_256 / 1000 * stor7 / 100 == (100 * block.timestamp) - (100 * investors[stor11[idx]].field_768)
                    mem[0] = addresses[idx]
                    mem[32] = 12
                    investors[stor11[idx]].field_768 = block.timestamp
                    if eth.balance(this.address) >= (100 * block.timestamp * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) - (100 * investors[stor11[idx]].field_768 * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) / 24 * 3600:
                        call addresses[idx] with:
                           value (100 * block.timestamp * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) - (100 * investors[stor11[idx]].field_768 * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) / 24 * 3600 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require (100 * block.timestamp * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) - (100 * investors[stor11[idx]].field_768 * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) / 24 * 3600 >= 0
                        if 1 < arg1:
                            s = addresses[idx]
                            idx = idx - 1
                            continue 
                        payoutDate = block.timestamp
                        emit PayoutCumulative((100 * block.timestamp * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) - (100 * investors[stor11[idx]].field_768 * investors[stor11[idx]].field_256 / 1000 * stor7 / 100) / 24 * 3600, 1);
    payoutDate = block.timestamp
    emit PayoutCumulative(uint256 arg1, uint256 arg2):
                          0,
}

function _fallback() payable {
    if 0 == msg.value:
        if investors[address(msg.sender)].field_256 <= 0:
            revert with 0, 'Deposit not found'
        if block.timestamp < investors[address(msg.sender)].field_768 + stor6:
            revert with 0, 'Too fast payout request'
        require investors[address(msg.sender)].field_768 <= block.timestamp
        if not block.timestamp - investors[address(msg.sender)].field_768:
            if investors[address(msg.sender)].field_256 / 1000:
                require investors[address(msg.sender)].field_256 / 1000
                require investors[address(msg.sender)].field_256 / 1000 * stor7 / investors[address(msg.sender)].field_256 / 1000 == stor7
                if investors[address(msg.sender)].field_256 / 1000 * stor7 / 100:
                    require investors[address(msg.sender)].field_256 / 1000 * stor7 / 100
                    require not 0 / investors[address(msg.sender)].field_256 / 1000 * stor7 / 100
            revert with 0, 'Too small unpaid amount'
        require block.timestamp - investors[address(msg.sender)].field_768
        require (100 * block.timestamp) - (100 * investors[address(msg.sender)].field_768) / block.timestamp - investors[address(msg.sender)].field_768 == 100
        if not investors[address(msg.sender)].field_256 / 1000:
            revert with 0, 'Too small unpaid amount'
        require investors[address(msg.sender)].field_256 / 1000
        require investors[address(msg.sender)].field_256 / 1000 * stor7 / investors[address(msg.sender)].field_256 / 1000 == stor7
        if not investors[address(msg.sender)].field_256 / 1000 * stor7 / 100:
            revert with 0, 'Too small unpaid amount'
        require investors[address(msg.sender)].field_256 / 1000 * stor7 / 100
        require (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / investors[address(msg.sender)].field_256 / 1000 * stor7 / 100 == (100 * block.timestamp) - (100 * investors[address(msg.sender)].field_768)
        if (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600 < 10^15:
            revert with 0, 'Too small unpaid amount'
        investors[address(msg.sender)].field_768 = block.timestamp
        if eth.balance(this.address) >= (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600:
            call msg.sender with:
               value (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit PayoutSelf(msg.sender, (100 * block.timestamp * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) - (100 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 1000 * stor7 / 100) / 24 * 3600);
    else:
        if msg.value < stor0:
            revert with 0, 'Too small amount'
        if not investors[address(msg.sender)].field_0:
            investors[address(msg.sender)].field_0 = addresses.length + 1
            addresses.length++
            addresses[addresses.length] = msg.sender
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if investors[mem[128 len 20]].field_256 > 0:
                if mem[128 len 20] != msg.sender:
                    investors[address(msg.sender)].field_1024 = mem[128 len 20]
        require investors[address(msg.sender)].field_256 + msg.value >= investors[address(msg.sender)].field_256
        investors[address(msg.sender)].field_256 += msg.value
        require investors[address(msg.sender)].field_512 + 1 >= investors[address(msg.sender)].field_512
        investors[address(msg.sender)].field_512++
        investors[address(msg.sender)].field_768 = block.timestamp
        emit Invest(msg.sender, msg.value);
        paymentDate = block.timestamp
        require depositAmount + msg.value >= depositAmount
        depositAmount += msg.value
        if not msg.value / 100:
            if not msg.value / 100:
                call 0x54e14eaacfff244c82a1edc3778f9a0391e7e615 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0x8e30a300c73cd8107280f5af04e90c1f815086e1 with:
                     gas 2300 wei
            else:
                require msg.value / 100
                require msg.value / 100 * stor2 / msg.value / 100 == stor2
                call 0x54e14eaacfff244c82a1edc3778f9a0391e7e615 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0x8e30a300c73cd8107280f5af04e90c1f815086e1 with:
                   value msg.value / 100 * stor2 wei
                     gas 2300 * is_zero(value) wei
        else:
            require msg.value / 100
            require msg.value / 100 * stor1 / msg.value / 100 == stor1
            if not msg.value / 100:
                call 0x54e14eaacfff244c82a1edc3778f9a0391e7e615 with:
                   value msg.value / 100 * stor1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0x8e30a300c73cd8107280f5af04e90c1f815086e1 with:
                     gas 2300 wei
            else:
                require msg.value / 100
                require msg.value / 100 * stor2 / msg.value / 100 == stor2
                call 0x54e14eaacfff244c82a1edc3778f9a0391e7e615 with:
                   value msg.value / 100 * stor1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0x8e30a300c73cd8107280f5af04e90c1f815086e1 with:
                   value msg.value / 100 * stor2 wei
                     gas 2300 * is_zero(value) wei
        if investors[address(msg.sender)].field_1024:
            if not msg.value / 100:
                call investors[address(msg.sender)].field_1024 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit ReferrerBonus(investors[address(msg.sender)].field_1024, 0);
            else:
                require msg.value / 100
                require msg.value / 100 * stor3 / msg.value / 100 == stor3
                call investors[address(msg.sender)].field_1024 with:
                   value msg.value / 100 * stor3 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit ReferrerBonus(investors[address(msg.sender)].field_1024, msg.value / 100 * stor3);
            if investors[address(msg.sender)].field_512 == 1:
                if not msg.value / 1000:
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Cashback(msg.sender, 0);
                else:
                    require msg.value / 1000
                    require msg.value / 1000 * stor4 / msg.value / 1000 == stor4
                    call msg.sender with:
                       value msg.value / 1000 * stor4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Cashback(msg.sender, msg.value / 1000 * stor4);
}



}
