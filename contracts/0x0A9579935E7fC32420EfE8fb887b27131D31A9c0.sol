contract main {


// =======================  Init code  ======================


uint32 stor0;
address stor0; offset 32
uint256 stor0; offset 32
uint256 stor1;
array of address stor2;
array of uint256 stor3;

function _fallback() payable {
    stor1 = msg.value
    uint32(stor0.field_0) = 0
    address(stor0.field_32) = msg.sender
    Mask(224, 0, stor0.field_32) = 0
    stor2.length = 0
    idx = 0
    while stor2.length > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    stor3.length = 0
    idx = 0
    while stor3.length > idx:
        stor3[idx] = 0
        idx = idx + 1
        continue 
    return code.data[434 len 1775]
}



// =====================  Runtime code  =====================


uint32 lastCreditorPayedOut;
address owner; offset 32
uint256 stor1;
array of address creditor;
array of uint256 creditorAmounts;
mapping of uint256 sub_3a65d33b;

function lastCreditorPayedOut() {
    return lastCreditorPayedOut
}

function sub_3a65d33b(?) {
    return sub_3a65d33b[arg1]
}

function owner() {
    return owner
}

function creditorAddresses(uint256 arg1) {
    require arg1 < creditor.length
    return address(creditor[arg1])
}

function creditorAmounts(uint256 arg1) {
    require arg1 < creditorAmounts.length
    return creditorAmounts[arg1]
}

function jackpot() {
    require owner == msg.sender
    require creditor.length - 1 < creditor.length
    call address(creditor[creditor.length]) with:
       value stor1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 0
}

function sub_d64c853d(?) {
    if sub_3a65d33b[address(msg.sender)] > 0:
        call msg.sender with:
           value sub_3a65d33b[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_3a65d33b[address(msg.sender)] = 0
}

function _fallback() payable {
    creditor.length++
    if not creditor.length <= creditor.length + 1:
        idx = creditor.length + 1
        while creditor.length > idx:
            uint256(creditor[idx]) = 0
            idx = idx + 1
            continue 
    address(creditor[creditor.length]) = msg.sender
    creditorAmounts.length++
    if not creditorAmounts.length <= creditorAmounts.length + 1:
        idx = creditorAmounts.length + 1
        while creditorAmounts.length > idx:
            creditorAmounts[idx] = 0
            idx = idx + 1
            continue 
    creditorAmounts[creditorAmounts.length] = 110 * msg.value / 100
    stor1 += 5 * msg.value / 100
    require lastCreditorPayedOut < creditorAmounts.length
    if creditorAmounts[stor0] > 0:
        require lastCreditorPayedOut < creditorAmounts.length
        if creditorAmounts[stor0] >= 90 * msg.value / 100:
            require lastCreditorPayedOut < creditor.length
            require lastCreditorPayedOut < creditor.length
            if sub_3a65d33b[address(stor2[stor0])] <= 0:
                sub_3a65d33b[address(stor2[stor0])] = 90 * msg.value / 100
            else:
                sub_3a65d33b[address(stor2[stor0])] += 90 * msg.value / 100
            require lastCreditorPayedOut < creditorAmounts.length
            creditorAmounts[stor0] -= 90 * msg.value / 100
        else:
            require lastCreditorPayedOut < creditorAmounts.length
            require lastCreditorPayedOut < creditor.length
            sub_3a65d33b[address(stor2[stor0])] = creditorAmounts[stor0]
            require lastCreditorPayedOut < creditorAmounts.length
            creditorAmounts[stor0] = 0
            lastCreditorPayedOut = uint32(lastCreditorPayedOut + 1)
            stor1 = (90 * msg.value / 100) - creditorAmounts[stor0] + stor1
}



}
