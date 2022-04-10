contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of address stor2;

function _fallback() {
    stor0[address(msg.sender)] = 1
    emit AdminAdded(0, msg.sender);
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    require stor2.length - 1 < stor2.length
    address(stor2[stor2.length]) = msg.sender
    return code.data[290 len 1776]
}



// =====================  Runtime code  =====================


const contractVersion = 100201707171503


mapping of uint8 stor0;
mapping of uint8 stor1;
array of address stor2;
array of address stor3;

function isCurrentAdmin(address arg1) {
    return bool(stor0[address(arg1)])
}

function isCurrentAccountReader(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function removeAccountReader(address arg1) {
    require stor0[address(msg.sender)]
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit AccountReaderRemoved(msg.sender, arg1);
}

function removeAdmin(address arg1) {
    require stor0[address(msg.sender)]
    require arg1 != msg.sender
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit AdminRemoved(msg.sender, arg1);
}

function isCurrentOrPastAdmin(address arg1) {
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if address(stor2[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function isCurrentOrPastAccountReader(address arg1) {
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function addAdmin(address arg1) {
    require stor0[address(msg.sender)]
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(msg.sender, arg1);
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    require stor2.length - 1 < stor2.length
    address(stor2[stor2.length]) = arg1
}

function addAccountReader(address arg1) {
    require stor0[address(msg.sender)]
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit AccountReaderAdded(msg.sender, arg1);
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    require stor2.length - 1 < stor3.length
    address(stor3[stor2.length]) = arg1
}



}
