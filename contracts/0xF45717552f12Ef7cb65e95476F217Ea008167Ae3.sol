contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor5;

function _fallback() payable {
    stor2 = msg.value
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor1 = block.timestamp
    return code.data[44 len 2303]
}



// =====================  Runtime code  =====================


#
#  - totalDebt()
#
uint32 lastCreditorPayedOut;
uint256 stor0; offset 32
uint256 stor0;
uint256 lastTimeOfNewCredit;
uint256 profitFromCrash;
array of struct stor3;
array of struct stor4;
address corruptEliteAddress;
uint256 stor5;
mapping of uint256 stor6;
uint8 round;
uint256 stor7;
array of address creditor;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function lastCreditorPayedOut() payable {
    return lastCreditorPayedOut
}

function round() payable {
    return uint8(round)
}

function corruptElite() payable {
    return address(corruptEliteAddress)
}

function lastTimeOfNewCredit() payable {
    return lastTimeOfNewCredit
}

function profitFromCrash() payable {
    return profitFromCrash
}

function creditorAddresses(uint256 arg1) payable {
    require arg1 < stor3.length
    return creditor[arg1]
}

function creditorAmounts(uint256 arg1) payable {
    require arg1 < stor4.length
    return uint256(stor[code.data[2271 len 32] + arg1])
}

function investInTheSystem() payable {
    profitFromCrash += msg.value
}

function inheritToNextGeneration(address arg1) payable {
    if msg.sender == address(corruptEliteAddress):
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function getCreditorAmounts() payable {
    if stor4.length:
        mem[160] = uint256(stor4.field_0)
        idx = 160
        s = 0
        while (32 * stor4.length) + 128 > idx:
            mem[idx + 32] = uint256(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor4.length, data=mem[160 len 32 * stor4.length])
}

function getCreditorAddresses() payable {
    if stor3.length:
        mem[160] = address(stor3.field_0)
        idx = 160
        s = 0
        while (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor3.length, data=mem[160 len 32 * stor3.length])
}

function totalPayedOut() payable {
    idx = 0
    s = 0
    while idx < lastCreditorPayedOut:
        require idx < stor4.length
        mem[0] = 4
        idx = idx + 1
        s = s + uint256(stor[idx + code.data[2271 len 32]])
        continue 
    return (s * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut * lastCreditorPayedOut)
}

function lendGovernmentMoney(address arg1) payable {
    if lastTimeOfNewCredit + (12 * 3600) < block.timestamp:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require stor3.length - 1 < stor3.length
        call storC257[stor3.length] with:
           value profitFromCrash wei
             gas 0 wei
        call address(corruptEliteAddress) with:
           value eth.balance(this.address) wei
             gas 0 wei
        lastCreditorPayedOut = 0
        lastTimeOfNewCredit = block.timestamp
        profitFromCrash = 0
        stor3.length = 0
        idx = 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8
        while stor3.length + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
        stor4.length = 0
        idx = code.data[2271 len 32]
        while code.data[2271 len 32] + stor4.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        uint256(stor7) = uint8(round) + 1 or Mask(248, 8, uint256(stor7))
        return 0
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    lastTimeOfNewCredit = block.timestamp
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor3[stor3.length].field_0) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length].field_0))
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor4[stor4.length].field_0) = 110 * msg.value / 100
    call address(corruptEliteAddress) with:
       value 5 * msg.value / 100 wei
         gas 0 wei
    if profitFromCrash < 10000 * 10^18:
        profitFromCrash += 5 * msg.value / 100
    if stor6[address(arg1)] >= msg.value:
        call arg1 with:
           value 5 * msg.value / 100 wei
             gas 0 wei
    stor6[address(msg.sender)] += 110 * msg.value / 100
    require lastCreditorPayedOut < stor4.length
    if uint256(stor[code.data[2271 len 32] + uint32(stor0.field_0)]) <= eth.balance(this.address) - profitFromCrash:
        require lastCreditorPayedOut < stor3.length
        require lastCreditorPayedOut < stor4.length
        call creditor[uint32(stor0.field_0)] with:
           value uint256(stor[code.data[2271 len 32] + uint32(stor0.field_0)]) wei
             gas 0 wei
        require lastCreditorPayedOut < stor3.length
        stor6[stor56C2[uint32(stor0.field_0)]] -= uint256(stor[uint32(stor0.field_0) + code.data[2271 len 32]])
        uint256(stor0.field_0) = Mask(224, 0, stor0.field_32)
    return 1
}

function _fallback() payable {
    if lastTimeOfNewCredit + (12 * 3600) < block.timestamp:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require stor3.length - 1 < stor3.length
        call storC257[stor3.length] with:
           value profitFromCrash wei
             gas 0 wei
        call address(corruptEliteAddress) with:
           value eth.balance(this.address) wei
             gas 0 wei
        lastCreditorPayedOut = 0
        lastTimeOfNewCredit = block.timestamp
        profitFromCrash = 0
        stor3.length = 0
        idx = 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8
        while stor3.length + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
        stor4.length = 0
        idx = code.data[2271 len 32]
        while code.data[2271 len 32] + stor4.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        uint256(stor7) = uint8(round) + 1 or Mask(248, 8, uint256(stor7))
    else:
        if msg.value < 10^18:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            lastTimeOfNewCredit = block.timestamp
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    uint256(stor3[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor3[stor3.length].field_0) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length].field_0))
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    uint256(stor4[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor4[stor4.length].field_0) = 110 * msg.value / 100
            call address(corruptEliteAddress) with:
               value 5 * msg.value / 100 wei
                 gas 0 wei
            if profitFromCrash < 10000 * 10^18:
                profitFromCrash += 5 * msg.value / 100
            if stor6[0] >= msg.value:
                call 0x0 with:
                   value 5 * msg.value / 100 wei
                     gas 0 wei
            stor6[address(msg.sender)] += 110 * msg.value / 100
            require lastCreditorPayedOut < stor4.length
            if uint256(stor[code.data[2271 len 32] + uint32(stor0.field_0)]) <= eth.balance(this.address) - profitFromCrash:
                require lastCreditorPayedOut < stor3.length
                require lastCreditorPayedOut < stor4.length
                call creditor[uint32(stor0.field_0)] with:
                   value uint256(stor[code.data[2271 len 32] + uint32(stor0.field_0)]) wei
                     gas 0 wei
                require lastCreditorPayedOut < stor3.length
                stor6[stor56C2[uint32(stor0.field_0)]] -= uint256(stor[uint32(stor0.field_0) + code.data[2271 len 32]])
                uint256(stor0.field_0) = Mask(224, 0, stor0.field_32)
}



}
