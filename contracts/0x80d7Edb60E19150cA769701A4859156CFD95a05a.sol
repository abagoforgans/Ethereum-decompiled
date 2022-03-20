contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    return code.data[34 len 1202]
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

function Doubler() payable {
    uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), stor[code.data[1170 len 32] + (2 * arg1)]
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
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= 50 * 10^18:
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1170 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 50
                balance += msg.value
        else:
            call msg.sender with:
               value msg.value - 50 * 10^18 wei
                 gas 0 wei
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1170 len 32] + (2 * stor0.length)] = 50 * 10^18
            if not stor0.length:
                collectedFees += 50 * 10^18
            else:
                collectedFees += 10^18
                balance += 50 * 10^18
        if balance > 2 * stor[code.data[1170 len 32] + (2 * stor1)]:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50 wei
                 gas 0 wei
            balance -= 2 * stor[code.data[1170 len 32] + (2 * stor1)]
            payoutIdx++
            s = 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50
            while balance > 2 * stor[code.data[1170 len 32] + (2 * stor1)]:
                require payoutIdx < stor0.length
                call address(stor0[stor1].field_0) with:
                   value 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50 wei
                     gas 0 wei
                balance -= 2 * stor[code.data[1170 len 32] + (2 * stor1)]
                payoutIdx++
                mem[0] = 0
                s = 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50
                continue 
}

function _fallback() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= 50 * 10^18:
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1170 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 50
                balance += msg.value
        else:
            call msg.sender with:
               value msg.value - 50 * 10^18 wei
                 gas 0 wei
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    address(stor0[idx].field_0) = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1170 len 32] + (2 * stor0.length)] = 50 * 10^18
            if not stor0.length:
                collectedFees += 50 * 10^18
            else:
                collectedFees += 10^18
                balance += 50 * 10^18
        if balance > 2 * stor[code.data[1170 len 32] + (2 * stor1)]:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50 wei
                 gas 0 wei
            balance -= 2 * stor[code.data[1170 len 32] + (2 * stor1)]
            payoutIdx++
            s = 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50
            while balance > 2 * stor[code.data[1170 len 32] + (2 * stor1)]:
                require payoutIdx < stor0.length
                call address(stor0[stor1].field_0) with:
                   value 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50 wei
                     gas 0 wei
                balance -= 2 * stor[code.data[1170 len 32] + (2 * stor1)]
                payoutIdx++
                mem[0] = 0
                s = 97 * stor[code.data[1170 len 32] + (2 * stor1)] / 50
                continue 
}



}
