contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor4;

function _fallback() payable {
    stor2 = 0
    stor4 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[46 len 829]
}



// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint256 stor1;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;

function participants(uint256 arg1) payable {
    require arg1 < stor0
    return address(stor[code.data[797 len 32] + arg1])
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
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function collectFees() payable {
    if msg.sender == address(owner):
        if collectedFees != 0:
            call address(owner) with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function init() payable {
    if 5 * 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0++
        if not stor0 <= stor0 + 1:
            idx = stor0 + code.data[797 len 32] + 1
            while code.data[797 len 32] + stor0 > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require stor0 < stor0
        uint256(stor[code.data[797 len 32] + stor0]) = msg.sender or Mask(96, 160, uint256(stor[code.data[797 len 32] + stor0]))
        if not stor0:
            collectedFees += msg.value
        else:
            collectedFees += 100 * msg.value / 5
            balance += msg.value
        if balance >= 10 * 10^18:
            require payoutIdx < stor0
            call address(stor[code.data[797 len 32] + stor2]) with:
               value 10 * 10^18 wei
                 gas 0 wei
            balance -= 10 * 10^18
            payoutIdx++
}

function _fallback() payable {
    if 5 * 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0++
        if not stor0 <= stor0 + 1:
            idx = stor0 + code.data[797 len 32] + 1
            while code.data[797 len 32] + stor0 > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require stor0 < stor0
        uint256(stor[code.data[797 len 32] + stor0]) = msg.sender or Mask(96, 160, uint256(stor[code.data[797 len 32] + stor0]))
        if not stor0:
            collectedFees += msg.value
        else:
            collectedFees += 100 * msg.value / 5
            balance += msg.value
        if balance >= 10 * 10^18:
            require payoutIdx < stor0
            call address(stor[code.data[797 len 32] + stor2]) with:
               value 10 * 10^18 wei
                 gas 0 wei
            balance -= 10 * 10^18
            payoutIdx++
}



}
