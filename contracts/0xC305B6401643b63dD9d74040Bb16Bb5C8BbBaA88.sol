contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    return code.data[34 len 1171]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
address owner;
uint256 stor4;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733350;

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

function Doubler() payable {
    uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor5629[arg1]), stor[code.data[1139 len 32] + (2 * arg1)]
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
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
        stor[code.data[1139 len 32] + (2 * stor0.length)] = msg.value
        if not stor0.length:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 5
            balance += msg.value
        require payoutIdx < stor0.length
        if balance > 2 * stor[code.data[1139 len 32] + (2 * stor1)]:
            require payoutIdx < stor0.length
            call address(stor5629[stor1]) with:
               value 2 * stor5629[stor1] - (stor5629[stor1] / 10) wei
                 gas 0 wei
            balance -= 2 * stor[code.data[1139 len 32] + (2 * stor1)]
            payoutIdx++
}

function _fallback() payable {
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
        stor[code.data[1139 len 32] + (2 * stor0.length)] = msg.value
        if not stor0.length:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 5
            balance += msg.value
        require payoutIdx < stor0.length
        if balance > 2 * stor[code.data[1139 len 32] + (2 * stor1)]:
            require payoutIdx < stor0.length
            call address(stor5629[stor1]) with:
               value 2 * stor5629[stor1] - (stor5629[stor1] / 10) wei
                 gas 0 wei
            balance -= 2 * stor[code.data[1139 len 32] + (2 * stor1)]
            payoutIdx++
}



}
