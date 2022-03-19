contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 1060]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
address owner;
uint256 stor4;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

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
    return stor0[arg1].field_0, stor290D[arg1]
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
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
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor290D[stor0.length] = msg.value
            if not stor0.length:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 10
                balance = balance + msg.value - (msg.value / 10)
            s = 0
            while balance > 180 * msg.value / 100:
                require payoutIdx < stor0.length
                mem[0] = 0
                call stor0[stor1].field_0 with:
                   value 180 * msg.value / 100 wei
                     gas 0 wei
                balance += -180 * msg.value / 100
                payoutIdx++
                s = 180 * msg.value / 100
                continue 
        else:
            call msg.sender with:
               value msg.value - 100 * 10^18 wei
                 gas 0 wei
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor290D[stor0.length] = 100 * 10^18
            if not stor0.length:
                collectedFees += 100 * 10^18
            else:
                collectedFees += 10 * 10^18
                balance += 25 * 10^15 * 3600
            s = 0
            while balance > 5 * 10^16 * 3600:
                require payoutIdx < stor0.length
                mem[0] = 0
                call stor0[stor1].field_0 with:
                   value 5 * 10^16 * 3600 wei
                     gas 0 wei
                balance -= 5 * 10^16 * 3600
                payoutIdx++
                s = 5 * 10^16 * 3600
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
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor290D[stor0.length] = msg.value
            if not stor0.length:
                collectedFees += msg.value
            else:
                collectedFees += msg.value / 10
                balance = balance + msg.value - (msg.value / 10)
            s = 0
            while balance > 180 * msg.value / 100:
                require payoutIdx < stor0.length
                mem[0] = 0
                call stor0[stor1].field_0 with:
                   value 180 * msg.value / 100 wei
                     gas 0 wei
                balance += -180 * msg.value / 100
                payoutIdx++
                s = 180 * msg.value / 100
                continue 
        else:
            call msg.sender with:
               value msg.value - 100 * 10^18 wei
                 gas 0 wei
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = 2 * stor0.length + 1
                while 2 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor290D[stor0.length] = 100 * 10^18
            if not stor0.length:
                collectedFees += 100 * 10^18
            else:
                collectedFees += 10 * 10^18
                balance += 25 * 10^15 * 3600
            s = 0
            while balance > 5 * 10^16 * 3600:
                require payoutIdx < stor0.length
                mem[0] = 0
                call stor0[stor1].field_0 with:
                   value 5 * 10^16 * 3600 wei
                     gas 0 wei
                balance -= 5 * 10^16 * 3600
                payoutIdx++
                s = 5 * 10^16 * 3600
                continue 
}



}
