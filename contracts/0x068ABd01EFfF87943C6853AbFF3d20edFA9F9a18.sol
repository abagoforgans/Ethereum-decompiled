contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = block.timestamp + (168 * 24 * 3600)
    stor2 = msg.value
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[64 len 1308]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
uint256 timeout;
address owner;
uint256 stor5;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function timeout() payable {
    return timeout
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

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[(2 * arg1) + code.data[1276 len 32]]), uint256(stor290D[arg1].field_0)
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        collectedFees += msg.value
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
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

function collectBalance() payable {
    if address(owner) == msg.sender:
        balance += msg.value
        if msg.value + balance != 0:
            call address(owner) with:
               value balance wei
                 gas 0 wei
            balance = 0
        else:
            if block.timestamp <= timeout:
                call address(owner) with:
                   value balance wei
                     gas 0 wei
                balance = 0
}

function NextPayout() payable {
    balance += msg.value
    require payoutIdx < stor0.length
    if balance >= uint256(stor[code.data[1276 len 32] + (2 * stor1) + 1]):
        require payoutIdx < stor0.length
        call address(stor[code.data[1276 len 32] + (2 * stor1)]) with:
           value uint256(stor[code.data[1276 len 32] + (2 * stor1) + 1]) wei
             gas 0 wei
        balance -= uint256(stor[code.data[1276 len 32] + (2 * stor1) + 1])
        payoutIdx++
}

function enter() payable {
    if msg.value < 10^17:
        collectedFees += msg.value
    else:
        if msg.value > 50 * 10^18:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 20
            balance = msg.value - (msg.value / 20) + balance
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    uint256(stor0[idx].field_256) = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            uint256(stor[code.data[1276 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1276 len 32] + (2 * stor0.length)]))
            bool(stor290D[stor0.length].field_0) = 0
            uint255(stor290D[stor0.length].field_1) = uint255(msg.value - (msg.value / 20))
            require payoutIdx < stor0.length
            if balance >= uint256(stor290D[stor1].field_0):
                require payoutIdx < stor0.length
                call address(stor[code.data[1276 len 32] + (2 * stor1)]) with:
                   value uint256(stor290D[stor1].field_0) wei
                     gas 0 wei
                balance -= uint256(stor290D[stor1].field_0)
                payoutIdx++
}

function _fallback() payable {
    if msg.value < 10^17:
        collectedFees += msg.value
    else:
        if msg.value > 50 * 10^18:
            collectedFees += msg.value
        else:
            collectedFees += msg.value / 20
            balance = msg.value - (msg.value / 20) + balance
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    uint256(stor0[idx].field_256) = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            uint256(stor[code.data[1276 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1276 len 32] + (2 * stor0.length)]))
            bool(stor290D[stor0.length].field_0) = 0
            uint255(stor290D[stor0.length].field_1) = uint255(msg.value - (msg.value / 20))
            require payoutIdx < stor0.length
            if balance >= uint256(stor290D[stor1].field_0):
                require payoutIdx < stor0.length
                call address(stor[code.data[1276 len 32] + (2 * stor1)]) with:
                   value uint256(stor290D[stor1].field_0) wei
                     gas 0 wei
                balance -= uint256(stor290D[stor1].field_0)
                payoutIdx++
}



}
