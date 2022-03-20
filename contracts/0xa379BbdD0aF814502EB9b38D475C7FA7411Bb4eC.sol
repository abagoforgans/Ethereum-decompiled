contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 1084]
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

function persons(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), stor[code.data[1052 len 32] + (2 * arg1)]
}

function enter() payable {
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 2775 * 10^14 * 24 * 3600:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1052 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var24003 wei
                 gas 0 wei
            balance -= var24003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var34003 wei
                 gas 0 wei
            balance -= var34003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var44003 wei
                 gas 0 wei
            balance -= var44003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[1052 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var28003 wei
                 gas 0 wei
            balance -= var28003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var38003 wei
                 gas 0 wei
            balance -= var38003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var48003 wei
                 gas 0 wei
            balance -= var48003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - (2775 * 10^14 * 24 * 3600) wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1052 len 32] + (2 * stor0.length)] = 2775 * 10^14 * 24 * 3600
            if not stor0.length:
                balance += 2775 * 10^14 * 24 * 3600
            else:
                collectedFees += 2775 * 10^13 * 24 * 3600
                call address(owner) with:
                   value collectedFees + (2775 * 10^13 * 24 * 3600) wei
                     gas 0 wei
                collectedFees = 0
                balance += 69375 * 10^9 * 24 * 3600 * 24 * 3600
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var24003 wei
                 gas 0 wei
            balance -= var24003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var34003 wei
                 gas 0 wei
            balance -= var34003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var44003 wei
                 gas 0 wei
            balance -= var44003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[1052 len 32] + (2 * stor0.length)] = 2775 * 10^14 * 24 * 3600
            if not stor0.length:
                balance += 2775 * 10^14 * 24 * 3600
            else:
                collectedFees += 2775 * 10^13 * 24 * 3600
                call address(owner) with:
                   value collectedFees + (2775 * 10^13 * 24 * 3600) wei
                     gas 0 wei
                collectedFees = 0
                balance += 69375 * 10^9 * 24 * 3600 * 24 * 3600
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var28003 wei
                 gas 0 wei
            balance -= var28003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var38003 wei
                 gas 0 wei
            balance -= var38003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var48003 wei
                 gas 0 wei
            balance -= var48003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
}

function _fallback() payable {
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 2775 * 10^14 * 24 * 3600:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1052 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var24003 wei
                 gas 0 wei
            balance -= var24003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var34003 wei
                 gas 0 wei
            balance -= var34003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var44003 wei
                 gas 0 wei
            balance -= var44003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[1052 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                balance += msg.value
            else:
                collectedFees += msg.value / 10
                call address(owner) with:
                   value (msg.value / 10) + collectedFees wei
                     gas 0 wei
                collectedFees = 0
                balance = msg.value - (msg.value / 10) + balance
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var28003 wei
                 gas 0 wei
            balance -= var28003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var38003 wei
                 gas 0 wei
            balance -= var38003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var48003 wei
                 gas 0 wei
            balance -= var48003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - (2775 * 10^14 * 24 * 3600) wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1052 len 32] + (2 * stor0.length)] = 2775 * 10^14 * 24 * 3600
            if not stor0.length:
                balance += 2775 * 10^14 * 24 * 3600
            else:
                collectedFees += 2775 * 10^13 * 24 * 3600
                call address(owner) with:
                   value collectedFees + (2775 * 10^13 * 24 * 3600) wei
                     gas 0 wei
                collectedFees = 0
                balance += 69375 * 10^9 * 24 * 3600 * 24 * 3600
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var24003 wei
                 gas 0 wei
            balance -= var24003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var34003 wei
                 gas 0 wei
            balance -= var34003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var44003 wei
                 gas 0 wei
            balance -= var44003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[1052 len 32] + (2 * stor0.length)] = 2775 * 10^14 * 24 * 3600
            if not stor0.length:
                balance += 2775 * 10^14 * 24 * 3600
            else:
                collectedFees += 2775 * 10^13 * 24 * 3600
                call address(owner) with:
                   value collectedFees + (2775 * 10^13 * 24 * 3600) wei
                     gas 0 wei
                collectedFees = 0
                balance += 69375 * 10^9 * 24 * 3600 * 24 * 3600
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var28003 wei
                 gas 0 wei
            balance -= var28003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var38003 wei
                 gas 0 wei
            balance -= var38003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var48003 wei
                 gas 0 wei
            balance -= var48003
            payoutIdx++
            if balance <= 400 * stor[code.data[1052 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
}



}
