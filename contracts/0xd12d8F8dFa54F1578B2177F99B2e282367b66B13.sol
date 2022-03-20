contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 998]
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
    return address(stor0[arg1].field_0), stor[code.data[966 len 32] + (2 * arg1)]
}

function enter() payable {
    if msg.value < 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 5 * 10^18:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[966 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[966 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - 5 * 10^18 wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[966 len 32] + (2 * stor0.length)] = 5 * 10^18
            balance += 5 * 10^18
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[966 len 32] + (2 * stor0.length)] = 5 * 10^18
            balance += 5 * 10^18
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
}

function _fallback() payable {
    if msg.value < 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 5 * 10^18:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[966 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[966 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - 5 * 10^18 wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[966 len 32] + (2 * stor0.length)] = 5 * 10^18
            balance += 5 * 10^18
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
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
            stor[code.data[966 len 32] + (2 * stor0.length)] = 5 * 10^18
            balance += 5 * 10^18
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutIdx++
            if balance <= 200 * stor[code.data[966 len 32] + (2 * stor1)] / 100:
            require payoutIdx < stor0.length
            # nil
}



}
