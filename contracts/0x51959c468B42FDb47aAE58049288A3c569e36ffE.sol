contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[79 len 1759]
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

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function collectFees() payable {
    if msg.sender == address(owner):
        if collectedFees:
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
                stor0[stor0.length].field_256 = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 10
                    balance = balance + msg.value - (msg.value / 10)
                s = var21001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
                    continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 10
                    balance = balance + msg.value - (msg.value / 10)
                s = var26001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
                    continue 
        else:
            call msg.sender with:
               value msg.value - 100 * 10^18 wei
                 gas 0 wei
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 10 * 10^18
                    balance += 25 * 10^15 * 3600
                s = var21001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
                    continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 10 * 10^18
                    balance += 25 * 10^15 * 3600
                s = var26001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
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
                stor0[stor0.length].field_256 = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 10
                    balance = balance + msg.value - (msg.value / 10)
                s = var23001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
                    continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = msg.value
                if not stor0.length:
                    collectedFees += msg.value
                else:
                    collectedFees += msg.value / 10
                    balance = balance + msg.value - (msg.value / 10)
                s = var28001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
                    continue 
        else:
            call msg.sender with:
               value msg.value - 100 * 10^18 wei
                 gas 0 wei
            stor0.length++
            if not stor0.length > stor0.length + 1:
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 10 * 10^18
                    balance += 25 * 10^15 * 3600
                s = var23001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
                    continue 
            else:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
                require stor0.length < stor0.length
                stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
                stor0[stor0.length].field_256 = 100 * 10^18
                if not stor0.length:
                    collectedFees += 100 * 10^18
                else:
                    collectedFees += 10 * 10^18
                    balance += 25 * 10^15 * 3600
                s = var28001
                while balance > 180 * stor0[stor1].field_256 / 100:
                    require payoutIdx < stor0.length
                    call stor0[stor1].field_0 with:
                       value 180 * stor0[stor1].field_256 / 100 wei
                         gas 0 wei
                    balance += -180 * stor0[stor1].field_256 / 100
                    payoutIdx++
                    mem[0] = 0
                    s = 180 * stor0[stor1].field_256 / 100
                    continue 
}



}
