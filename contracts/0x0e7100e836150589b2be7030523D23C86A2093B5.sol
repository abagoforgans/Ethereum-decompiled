contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[961 len 32]
    stor1 = block.timestamp + code.data[993 len 32]
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[124 len 837]
}



// =====================  Runtime code  =====================


#
#  - refund()
#
uint256 stor0;
uint256 stor1;
address stor2;
array of struct stor4;

function _fallback() payable {
  stop
}

function collect() payable {
    if block.timestamp > stor1:
        if eth.balance(this.address) >= stor0:
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 0 wei
}

function contribute() payable {
    require block.timestamp <= stor1
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = 2 * stor4.length + 1
        while 2 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor4[stor4.length].field_0 = msg.value
    stor4[stor4.length].field_256 = msg.sender or Mask(96, 160, stor4[stor4.length].field_256)
}



}
