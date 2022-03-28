contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of address stor3;
mapping of uint256 stor5;
uint256 stor9;
uint256 stor11;
uint256 stor13;
uint256 stor14;
uint8 stor15;

function _fallback() payable {
    stor9 = 5000
    require not msg.value
    stor14 = block.timestamp + (1440 * 24 * 3600)
    stor15 = 0
    stor1 = msg.sender
    stor0 = code.data[8509 len 20]
    stor2 = code.data[8477 len 20]
    stor11 = 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = code.data[8509 len 20]
    stor5[address(code.data[8465 len 32])] = stor13
    return code.data[546 len 7919]
}



// =====================  Runtime code  =====================


const totalSupply = 90


address stor0;
address stor1;
address stor2;
array of address stor3;
array of address stor4;
mapping of uint256 balanceOf;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 icoStatus;

function sub_00bba28d(?) {
    return stor4.length
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getIcoStatus() {
    require icoStatus <= 2
    return icoStatus
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_b098d481(?) {
    require msg.sender == stor1
    selfdestruct(stor2)
}

function getFounders() {
    if stor1 != msg.sender:
        return 0
    return stor2
}

function changeExecutor(address arg1) {
    require msg.sender == stor1
    stor1 = arg1
}

function getBeneficiary() {
    if stor1 != msg.sender:
        return 0
    return stor0
}

function changeBeneficiary(address arg1) {
    require msg.sender == stor1
    stor0 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_17a400cb(?) {
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function holderExists(address arg1) {
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_59ac29de(?) {
    if arg1 < stor4.length:
        return address(stor4[arg1]), stor7[address(stor4[arg1])], stor4.length
    emit 0x78243600: Array(len=13, data='Invalid Index')
    return 0, 0, stor4.length
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addPayer(address arg1) {
    if msg.sender == stor1:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if address(stor4[idx]) != arg1:
                idx = idx + 1
                continue 
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = arg1
        emit 0x296dc718: 64, 0, 11, 'PAYER ADDED'
}

function getNumGames() {
    s = 0
    idx = 0
    s = 0
    s = 0
    while idx < stor4.length:
        mem[0] = 4
        mem[128] = 0
        require ext_code.size(address(stor4[idx]))
        call address(stor4[idx]).getNumGamesStarted() with:
             gas gas_remaining - 50 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] + s < ext_call.return_data[0]:
            s = address(stor4[idx])
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s
            continue 
        if ext_call.return_data[0] + s < s:
            s = address(stor4[idx])
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s
            continue 
        s = address(stor4[idx])
        idx = idx + 1
        s = ext_call.return_data[0]
        s = s + ext_call.return_data[0]
        continue 
    return s
}

function sub_9c95cba7(?) {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 5
        idx = idx + 1
        s = s + balanceOf[address(stor3[idx])]
        continue 
    return (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length)
}

function getNumTokensPurchased() {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 5
        idx = idx + 1
        s = s + balanceOf[address(stor3[idx])]
        continue 
    return ((s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - stor13)
}

function checkIcoStatus() {
    require icoStatus <= 2
    if not icoStatus:
        if block.timestamp > stor14:
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx])
                mem[32] = 5
                idx = idx + 1
                s = s + balanceOf[address(stor3[idx])]
                continue 
            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - stor13 < stor9:
                icoStatus = 1
            else:
                icoStatus = 2
}

function requestRefund() {
    require icoStatus <= 2
    if not icoStatus:
        if block.timestamp > stor14:
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx])
                mem[32] = 5
                idx = idx + 1
                s = s + balanceOf[address(stor3[idx])]
                continue 
            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - stor13 < stor9:
                icoStatus = 1
            else:
                icoStatus = 2
    require icoStatus <= 2
    if icoStatus != 1:
        emit 0x78243600: Array(len=27, data='No refunds due at this time')
    else:
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            if address(stor3[idx]) != msg.sender:
                idx = idx + 1
                continue 
            if not balanceOf[address(msg.sender)]:
                emit 0x78243600: Array(len=28, data='Balance is 0 - No Refund Due')
            else:
                balanceOf[address(msg.sender)] = 0
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x78243600: Array(len=27, data='Refund sent to Token Holder')
        emit 0x78243600: Array(len=21, data='holder does not exist')
}

function _fallback() payable {
    require icoStatus <= 2
    require icoStatus != 1
    require msg.value >= 1
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 5
        idx = idx + 1
        s = s + balanceOf[address(stor3[idx])]
        continue 
    require (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) + msg.value <= 90
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx]) != msg.sender:
            idx = idx + 1
            continue 
        balanceOf[address(msg.sender)] += msg.value
        stor10 += msg.value
        stor12 += msg.value
        s = 0
        idx = 0
        s = 0
        s = 0
        while idx < stor4.length:
            mem[0] = 4
            mem[128] = 0
            require ext_code.size(address(stor4[idx]))
            call address(stor4[idx]).getNumGamesStarted() with:
                 gas gas_remaining - 50 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] + s < ext_call.return_data[0]:
                s = address(stor4[idx])
                idx = idx + 1
                s = ext_call.return_data[0]
                s = s
                continue 
            if ext_call.return_data[0] + s < s:
                s = address(stor4[idx])
                idx = idx + 1
                s = ext_call.return_data[0]
                s = s
                continue 
            s = address(stor4[idx])
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s + ext_call.return_data[0]
            continue 
        if s > 100:
            stor12 = 0
            call stor2 with:
               value stor12 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x296dc718: 64, 0, 14, 'Founder Payout'
        emit 0x296dc718: Array(len=16, data='Tokens Purchased'), msg.value
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = msg.sender
    balanceOf[address(msg.sender)] += msg.value
    stor10 += msg.value
    stor12 += msg.value
    s = 0
    idx = 0
    s = 0
    s = 0
    while idx < stor4.length:
        mem[0] = 4
        mem[128] = 0
        require ext_code.size(address(stor4[idx]))
        call address(stor4[idx]).getNumGamesStarted() with:
             gas gas_remaining - 50 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] + s < ext_call.return_data[0]:
            s = address(stor4[idx])
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s
            continue 
        if ext_call.return_data[0] + s < s:
            s = address(stor4[idx])
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s
            continue 
        s = address(stor4[idx])
        idx = idx + 1
        s = ext_call.return_data[0]
        s = s + ext_call.return_data[0]
        continue 
    if s > 100:
        stor12 = 0
        call stor2 with:
           value stor12 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x296dc718: 64, 0, 14, 'Founder Payout'
    emit 0x296dc718: Array(len=16, data='Tokens Purchased'), msg.value
}

function addPayment() payable {
    require icoStatus <= 2
    if not icoStatus:
        require icoStatus <= 2
        if not icoStatus:
            if block.timestamp > stor14:
                idx = 0
                s = 0
                while idx < stor3.length:
                    mem[0] = address(stor3[idx])
                    mem[32] = 5
                    idx = idx + 1
                    s = s + balanceOf[address(stor3[idx])]
                    continue 
                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - stor13 < stor9:
                    icoStatus = 1
                else:
                    icoStatus = 2
    require 0 < stor4.length
    idx = 0
    while address(stor4[idx]) != msg.sender:
        require idx + 1 < stor4.length
        mem[0] = 4
        idx = idx + 1
        continue 
    stor11 += msg.value
    stor7[address(msg.sender)] += msg.value
    if stor11 > 10^18:
        require stor3.length
        idx = 0
        s = 0
        t = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx])
            mem[32] = 6
            stor6[address(stor3[idx])] += stor11 / stor3.length * balanceOf[address(stor3[idx])]
            idx = idx + 1
            s = s + (stor11 / stor3.length * balanceOf[address(stor3[idx])])
            t = stor11 / stor3.length * balanceOf[address(stor3[idx])]
            continue 
        stor11 += -1 * s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length
        emit 0x296dc718: Array(len=13, data='TOTAL PAYOUT:'), s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length
        emit 0x296dc718: Array(len=17, data='PER TOKEN PAYOUT:'), stor11 / stor3.length
        emit 0x296dc718: Array(len=12, data='NEW BALANCE:'), stor11
}



}
