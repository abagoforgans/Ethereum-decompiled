contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 1130]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 fees;
uint256 balance;
address owner;

function owner() payable {
    return owner
}

function fees() payable {
    return fees
}

function payoutIdx() payable {
    return payoutIdx
}

function balance() payable {
    return balance
}

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), stor[code.data[1098 len 32] + (2 * arg1)]
}

function collect() payable {
    if fees != 0:
        if msg.sender == owner:
            call owner with:
               value fees wei
                 gas 0 wei
            fees = 0
}

function enter() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= 10 * 10^18:
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
            stor[code.data[1098 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                fees += msg.value
            else:
                fees += msg.value / 50
                balance += msg.value
        else:
            call msg.sender with:
               value msg.value - 10 * 10^18 wei
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
            stor[code.data[1098 len 32] + (2 * stor0.length)] = 10 * 10^18
            if not stor0.length:
                fees += 10 * 10^18
            else:
                fees += 2 * 10^17
                balance += 10 * 10^18
        if balance > 3 * stor[code.data[1098 len 32] + (2 * stor1)]:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33 wei
                 gas 0 wei
            balance += -3 * stor[code.data[1098 len 32] + (2 * stor1)]
            payoutIdx++
            s = 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33
            while balance > 3 * stor[code.data[1098 len 32] + (2 * stor1)]:
                require payoutIdx < stor0.length
                call address(stor0[stor1].field_0) with:
                   value 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33 wei
                     gas 0 wei
                balance += -3 * stor[code.data[1098 len 32] + (2 * stor1)]
                payoutIdx++
                mem[0] = 0
                s = 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33
                continue 
}

function _fallback() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= 10 * 10^18:
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
            stor[code.data[1098 len 32] + (2 * stor0.length)] = msg.value
            if not stor0.length:
                fees += msg.value
            else:
                fees += msg.value / 50
                balance += msg.value
        else:
            call msg.sender with:
               value msg.value - 10 * 10^18 wei
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
            stor[code.data[1098 len 32] + (2 * stor0.length)] = 10 * 10^18
            if not stor0.length:
                fees += 10 * 10^18
            else:
                fees += 2 * 10^17
                balance += 10 * 10^18
        if balance > 3 * stor[code.data[1098 len 32] + (2 * stor1)]:
            require payoutIdx < stor0.length
            call address(stor0[stor1].field_0) with:
               value 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33 wei
                 gas 0 wei
            balance += -3 * stor[code.data[1098 len 32] + (2 * stor1)]
            payoutIdx++
            s = 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33
            while balance > 3 * stor[code.data[1098 len 32] + (2 * stor1)]:
                require payoutIdx < stor0.length
                call address(stor0[stor1].field_0) with:
                   value 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33 wei
                     gas 0 wei
                balance += -3 * stor[code.data[1098 len 32] + (2 * stor1)]
                payoutIdx++
                mem[0] = 0
                s = 98 * stor[code.data[1098 len 32] + (2 * stor1)] / 33
                continue 
}



}
