contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 180
    return code.data[34 len 448]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
array of address stor2;

function _fallback() payable {
    if not stor2.length:
        stor1 = block.timestamp + stor0
    if block.timestamp <= stor1:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        address(stor2[stor2.length]) = msg.sender
    else:
        if stor2.length <= 0:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    uint256(stor2[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor2[stor2.length]) = msg.sender
        else:
            require stor2.length
            require block.hash(block.number - 1) % stor2.length < stor2.length
            call address(stor2[block.hash(block.number - 1) % stor2.length]) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            stor2.length = 0
            idx = 0
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
}



}
