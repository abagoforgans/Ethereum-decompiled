contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;

function _fallback() payable {
    stor6 = 10^18
    stor7 = 100000
    stor10 = 0x4c47f1392fc2672534c068a8deebf8fdb71fdd66
    stor12 = 0x915b965bb9f6338cd1f0e7d1772c0c65ee9122b4
    stor13 = 0xd1525b2380f184b875cd5ae82ff21776db447c4a
    require not msg.value
    stor0 = code.data[4419 len 20]
    stor8.length++
    if not stor8.length > stor8.length + 1:
        stor8[stor8.length] = code.data[4439 len 32]
        stor8.length++
        stor8[stor8.length] = code.data[4471 len 32]
        stor8.length++
    else:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
        stor8[stor8.length] = code.data[4439 len 32]
        stor8.length++
        if not stor8.length > stor8.length + 1:
            stor8[stor8.length] = code.data[4471 len 32]
            stor8.length++
        else:
            idx = stor8.length + 1
            while stor8.length > idx:
                stor8[idx] = 0
                idx = idx + 1
                continue 
            stor8[stor8.length] = code.data[4471 len 32]
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = stor8.length + 1
                while stor8.length > idx:
                    stor8[idx] = 0
                    idx = idx + 1
                    continue 
    stor8[stor8.length] = code.data[4503 len 32]
    stor11 = stor12
    stor5 = code.data[4535 len 32]
    stor9 = stor10
    return code.data[468 len 3939]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 decimals;
uint256 threshold;
array of uint256 intervals;
address stor9;
address stor11;
address stor13;

function decimals() {
    return decimals
}

function intervals(uint256 arg1) {
    require arg1 < intervals.length
    return intervals[arg1]
}

function threshold() {
    return threshold
}

function _fallback() payable {
    revert
}

function sub_f9d431e4(?) {
    require stor0 == msg.sender
    stor9 = arg1
}

function sub_7a29afe3(?) {
    require stor0 == msg.sender
    stor11 = arg1
}

function checkBalance(address arg1) {
    require ext_code.size(stor11)
    call stor11.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawRemaining() {
    require stor0 == msg.sender
    require ext_code.size(stor11)
    call stor11.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    emit 0xad463e62: ext_call.return_data[0], ext_call.return_data[0], 0, 0, 0, 16, 'contract balance'
    if block.timestamp > stor5:
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor11)
            call stor11.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor13, ext_call.return_data[0]
            require ext_call.success
}

function withdraw() {
    require ext_code.size(stor9)
    call stor9.0xcd75c7d4 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    stor1 = msg.sender
    stor2 = ext_call.return_data[0]
    stor3 = ext_call.return_data[32]
    stor4 = ext_call.return_data[64]
    emit 0xad463e62: Array(len=59, data='withdrawal request:amount, total', 'Amount, withdrawals, sender'), stor2, stor3, stor4, msg.sender
    if not stor2:
        emit 0xad463e62: Array(len=55, data='Remainder. amount!=0 and withdra', 'wals > intervals.length'), stor2, stor3, stor4, msg.sender
        require 0 < intervals.length
        if block.timestamp > intervals:
            if stor2 < threshold:
                require ext_code.size(stor11)
                call stor11.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor1, decimals * stor2
                require ext_call.success
                stor2 = 0
                require ext_code.size(stor9)
                call stor9.0x58e1835d with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0, stor4
                require ext_call.success
    else:
        if stor4 >= intervals.length:
            emit 0xad463e62: Array(len=55, data='Remainder. amount!=0 and withdra', 'wals > intervals.length'), stor2, stor3, stor4, msg.sender
            require 0 < intervals.length
            if block.timestamp > intervals:
                if stor2 < threshold:
                    require ext_code.size(stor11)
                    call stor11.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor1, decimals * stor2
                    require ext_call.success
                    stor2 = 0
                    require ext_code.size(stor9)
                    call stor9.0x58e1835d with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0, stor4
                    require ext_call.success
        else:
            emit 0xad463e62: Array(len=16, data='intervals.length'), intervals.length, intervals.length, intervals.length, msg.sender
            emit 0xad463e62: Array(len=44, data='amount!=0 and withdrawals < inte', 'rvals.length'), stor2, stor3, stor4, msg.sender
            if block.timestamp > intervals[stor4]:
                require stor4 < intervals.length
                emit 0xad463e62: Array(len=35, data='now > intervals[holder.withdrawa', 'ls]'), block.timestamp, stor4, intervals[stor4], msg.sender
                if stor2 <= threshold:
                    emit 0xad463e62: 160, stor2, threshold, 0, msg.sender, 22, '!!!!amount < threshold'
                    stor2 = 0
                    require ext_code.size(stor9)
                    call stor9.0x58e1835d with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0, stor4
                    require ext_call.success
                    require ext_code.size(stor11)
                    call stor11.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor1, stor3 * decimals
                else:
                    emit 0xad463e62: 160, stor2, threshold, 0, msg.sender, 18, 'amount > threshold'
                    emit 0xad463e62: 160, stor3 / 3, stor3, 0, msg.sender, 15, 'totalAmount / 3'
                    require stor3 / 3 <= stor2
                    stor2 -= stor3 / 3
                    emit 0xad463e62: 160, stor2 - (stor3 / 3), 0, 0, msg.sender, 14, 'updated amount'
                    require stor4 + 1 >= stor4
                    stor4++
                    require ext_code.size(stor9)
                    call stor9.0x58e1835d with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor2, stor4 + 1
                    require ext_call.success
                    emit 0xad463e62: 160, stor4, 0, 0, msg.sender, 19, 'updated withdrawals'
                    require ext_code.size(stor11)
                    call stor11.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor1, stor3 / 3 * decimals
                require ext_call.success
}



}
