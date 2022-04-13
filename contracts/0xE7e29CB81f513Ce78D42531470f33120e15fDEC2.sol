contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of address stor2;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor1[stor1.length] = msg.value
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = msg.sender
    stor4 = 0
    stor5 = block.timestamp
    return code.data[326 len 1174]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
array of address stor2;
mapping of uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    revert
}

function withdrawPrize() {
    if stor3[address(msg.sender)] <= 0:
        return 0
    stor3[address(msg.sender)] = 0
    call msg.sender with:
       value stor3[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function finishGame() {
    require not stor4
    require stor1.length >= 2
    require msg.sender == stor0
    require block.timestamp - stor5 >= 60
    require stor2.length - 2 < stor2.length
    require stor1.length - 1 < stor1.length
    stor3[address(stor2[stor2.length])] = stor3[address(stor2[stor2.length])] + stor1[stor1.length] - (stor1[stor1.length] / 10)
    stor3[stor0] += stor1[stor1.length] / 10
    stor4 = 1
}

function bet() payable {
    require not stor4
    require stor1.length - 1 < stor1.length
    require msg.value >= stor1[stor1.length] + 10^13
    if stor1.length >= 2:
        require stor1.length - 2 < stor1.length
        require msg.value >= (2 * stor1[stor1.length]) - stor1[stor1.length]
    require stor2.length - 1 < stor2.length
    stor3[address(stor2[stor2.length])] += msg.value
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor1[stor1.length] = msg.value
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = msg.sender
    stor5 = block.timestamp
}



}
