contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 1099]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
address owner;
uint256 stor4;

function owner() payable {
    return address(owner)
}

function collectedFees() payable {
    return collectedFees
}

function payoutIdx() payable {
    return payoutIdx
}

function balance() payable {
    return balance
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), stor[code.data[1067 len 32] + (2 * arg1)]
}

function collectFees() payable {
    if msg.sender == address(owner):
        if collectedFees != 0:
            call address(owner) with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function enter() payable {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= 100 * 10^18:
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 15
                    balance = balance + msg.value - (msg.value / 15)
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var20001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 15
                    balance = balance + msg.value - (msg.value / 15)
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var24001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
        else:
            collectedFees = msg.value + collectedFees - 100 * 10^18
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 6666666666666666666
                    balance += 93333333333333333334
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var20001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 6666666666666666666
                    balance += 93333333333333333334
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var24001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
}

function _fallback() payable {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= 100 * 10^18:
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 15
                    balance = balance + msg.value - (msg.value / 15)
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var20001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 15
                    balance = balance + msg.value - (msg.value / 15)
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var24001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
        else:
            collectedFees = msg.value + collectedFees - 100 * 10^18
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 6666666666666666666
                    balance += 93333333333333333334
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var20001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor[code.data[1067 len 32] + (2 * stor0.length)] = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 6666666666666666666
                    balance += 93333333333333333334
                if balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                    require payoutIdx < stor0.length
                    call address(stor0[stor1].field_0) with:
                       value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                         gas 0 wei
                    balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                    payoutIdx++
                    s = var24001
                    while balance > 2 * stor[code.data[1067 len 32] + (2 * stor1)]:
                        require payoutIdx < stor0.length
                        call address(stor0[stor1].field_0) with:
                           value 2 * stor[code.data[1067 len 32] + (2 * stor1)] wei
                             gas 0 wei
                        balance -= 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        payoutIdx++
                        mem[0] = 0
                        s = 2 * stor[code.data[1067 len 32] + (2 * stor1)]
                        continue 
}



}
