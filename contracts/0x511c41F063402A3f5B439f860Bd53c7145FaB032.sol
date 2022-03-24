contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = code.data[1026 len 32]
    stor1 = code.data[1058 len 32]
    stor2 = block.timestamp + code.data[1090 len 32]
    return code.data[134 len 892]
}



// =====================  Runtime code  =====================


#
#  - refund()
#
array of struct stor0;
uint256 stor1;
uint256 deadline;
address stor3;

function deadline() payable {
    return deadline
}

function _fallback() payable {
  stop
}

function collect() payable {
    if block.timestamp > deadline:
        if eth.balance(this.address) >= stor1:
            call stor3 with:
               value eth.balance(this.address) wei
                 gas 0 wei
}

function fund() payable {
    require block.timestamp <= deadline
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
    stor0[stor0.length].field_256 = msg.value
}



}
