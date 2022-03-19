contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor2 = msg.value
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[55 len 1092]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
address owner;
uint256 stor4;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

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
    return address(stor[(2 * arg1) + code.data[1060 len 32]]), uint256(stor290D[arg1].field_0)
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        collectedFees += msg.value
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function collectFees() payable {
    if address(owner) == msg.sender:
        collectedFees += msg.value
        if msg.value + collectedFees != 0:
            call address(owner) with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function NextPayout() payable {
    collectedFees += msg.value
    require payoutIdx < stor0.length
    if balance >= uint256(stor290D[stor1].field_0):
        require payoutIdx < stor0.length
        call address(stor[code.data[1060 len 32] + (2 * stor1)]) with:
           value uint256(stor290D[stor1].field_0) wei
             gas 0 wei
        balance -= uint256(stor290D[stor1].field_0)
        payoutIdx++
}

function enter() payable {
    if msg.value != 0:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                uint256(stor0[idx].field_256) = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1060 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1060 len 32] + (2 * stor0.length)]))
        bool(stor290D[stor0.length].field_0) = 0
        uint255(stor290D[stor0.length].field_1) = uint255(msg.value - (msg.value / 50))
        if balance >= 2 * msg.value - (msg.value / 50):
            require payoutIdx < stor0.length
            call address(stor[code.data[1060 len 32] + (2 * stor1)]) with:
               value 2 * msg.value - (msg.value / 50) wei
                 gas 0 wei
            balance -= 2 * msg.value - (msg.value / 50)
            payoutIdx++
        collectedFees += msg.value / 50
        balance = msg.value - (msg.value / 50) + balance
}

function _fallback() payable {
    if msg.value != 0:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                uint256(stor0[idx].field_256) = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1060 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1060 len 32] + (2 * stor0.length)]))
        bool(stor290D[stor0.length].field_0) = 0
        uint255(stor290D[stor0.length].field_1) = uint255(msg.value - (msg.value / 50))
        if balance >= 2 * msg.value - (msg.value / 50):
            require payoutIdx < stor0.length
            call address(stor[code.data[1060 len 32] + (2 * stor1)]) with:
               value 2 * msg.value - (msg.value / 50) wei
                 gas 0 wei
            balance -= 2 * msg.value - (msg.value / 50)
            payoutIdx++
        collectedFees += msg.value / 50
        balance = msg.value - (msg.value / 50) + balance
}



}
