contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor4 = block.timestamp
    return code.data[50 len 1166]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
uint256 regeneration;
address owner;
uint256 stor5;

function regeneration() payable {
    return regeneration
}

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
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function persons(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), stor[code.data[1134 len 32] + (2 * arg1)]
}

function enter() payable {
    if regeneration + (12 * 3600) >= block.timestamp:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 50 * 10^18:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = msg.value
            regeneration = block.timestamp
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var25003 wei
                 gas 0 wei
            balance -= var25003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var35003 wei
                 gas 0 wei
            balance -= var35003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var45003 wei
                 gas 0 wei
            balance -= var45003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = msg.value
            regeneration = block.timestamp
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var29003 wei
                 gas 0 wei
            balance -= var29003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var39003 wei
                 gas 0 wei
            balance -= var39003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var49003 wei
                 gas 0 wei
            balance -= var49003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - 50 * 10^18 wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = 50 * 10^18
            regeneration = block.timestamp
            if not stor0.length:
                balance += 50 * 10^18
            else:
                collectedFees += 5 * 10^18
                call address(owner) with:
                   value collectedFees + 5 * 10^18 wei
                     gas 0 wei
                collectedFees = 0
                balance += 125 * 10^14 * 3600
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var25003 wei
                 gas 0 wei
            balance -= var25003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var35003 wei
                 gas 0 wei
            balance -= var35003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var45003 wei
                 gas 0 wei
            balance -= var45003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = 50 * 10^18
            regeneration = block.timestamp
            if not stor0.length:
                balance += 50 * 10^18
            else:
                collectedFees += 5 * 10^18
                call address(owner) with:
                   value collectedFees + 5 * 10^18 wei
                     gas 0 wei
                collectedFees = 0
                balance += 125 * 10^14 * 3600
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var29003 wei
                 gas 0 wei
            balance -= var29003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var39003 wei
                 gas 0 wei
            balance -= var39003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var49003 wei
                 gas 0 wei
            balance -= var49003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
}

function _fallback() payable {
    if regeneration + (12 * 3600) >= block.timestamp:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 50 * 10^18:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = msg.value
            regeneration = block.timestamp
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var25003 wei
                 gas 0 wei
            balance -= var25003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var35003 wei
                 gas 0 wei
            balance -= var35003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var45003 wei
                 gas 0 wei
            balance -= var45003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = msg.value
            regeneration = block.timestamp
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var29003 wei
                 gas 0 wei
            balance -= var29003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var39003 wei
                 gas 0 wei
            balance -= var39003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var49003 wei
                 gas 0 wei
            balance -= var49003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - 50 * 10^18 wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = 50 * 10^18
            regeneration = block.timestamp
            if not stor0.length:
                balance += 50 * 10^18
            else:
                collectedFees += 5 * 10^18
                call address(owner) with:
                   value collectedFees + 5 * 10^18 wei
                     gas 0 wei
                collectedFees = 0
                balance += 125 * 10^14 * 3600
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var25003 wei
                 gas 0 wei
            balance -= var25003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var35003 wei
                 gas 0 wei
            balance -= var35003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var45003 wei
                 gas 0 wei
            balance -= var45003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1134 len 32] + (2 * stor0.length)] = 50 * 10^18
            regeneration = block.timestamp
            if not stor0.length:
                balance += 50 * 10^18
            else:
                collectedFees += 5 * 10^18
                call address(owner) with:
                   value collectedFees + 5 * 10^18 wei
                     gas 0 wei
                collectedFees = 0
                balance += 125 * 10^14 * 3600
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var29003 wei
                 gas 0 wei
            balance -= var29003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var39003 wei
                 gas 0 wei
            balance -= var39003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var49003 wei
                 gas 0 wei
            balance -= var49003
            payoutIdx++
            if balance <= 200 * stor[code.data[1134 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
}



}
