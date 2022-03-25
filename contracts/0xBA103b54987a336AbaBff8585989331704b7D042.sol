contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[1001 len 32]
    stor1 = code.data[1033 len 32]
    stor2 = block.timestamp + code.data[1065 len 32]
    return code.data[134 len 867]
}



// =====================  Runtime code  =====================


#
#  - refund()
#
address stor0;
uint256 stor1;
uint256 stor2;
array of struct stor4;

function _fallback() payable {
    revert 
}

function payout() {
    if block.timestamp > stor2:
        if eth.balance(this.address) >= stor1:
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function contribute() {
    require block.timestamp <= stor2
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = 2 * stor4.length + 1
        while 2 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor4[stor4.length].field_0 = msg.sender or Mask(96, 160, stor4[stor4.length].field_0)
    stor4[stor4.length].field_256 = msg.value
}



}
