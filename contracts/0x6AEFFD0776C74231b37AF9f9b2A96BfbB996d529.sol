contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 120
    return code.data[31 len 544]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
array of address stor2;

function getNumPlayers() {
    return stor2.length
}

function sub_72230d46(?) {
    return (stor1 - block.timestamp)
}

function sub_9b88e4b9(?) {
    require not stor2.length
    stor0 = arg1
}

function _fallback() payable {
    if not stor2.length:
        stor1 = block.timestamp + stor0
    if block.timestamp <= stor1:
        stor2.length++
        stor2[stor2.length] = msg.sender
    else:
        if stor2.length <= 0:
            stor2.length++
            stor2[stor2.length] = msg.sender
        else:
            require stor2.length
            require block.timestamp % stor2.length < stor2.length
            call stor2[block.timestamp % stor2.length] with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            stor2.length = 0
            idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
            while stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}



}
