contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    return code.data[35 len 683]
}



// =====================  Runtime code  =====================


#
#  - totalOutstanding()
#
array of struct stor0;
uint256 stor1;
uint256 stor2;

function sub_9149bdf2(?) payable {
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), stor[code.data[651 len 32] + (2 * arg1)]
}

function _fallback() payable {
    stor1++
    require stor1 < stor0.length
    stor0[stor1].field_0 = msg.sender or Mask(96, 160, stor0[stor1].field_0)
    stor0[stor1].field_256 = (msg.value / 50) + msg.value
    if stor[code.data[651 len 32] + (2 * stor2)] > eth.balance(this.address):
    require stor2 < stor0.length
    call address(stor0[stor2].field_0) with:
       value stor[code.data[651 len 32] + (2 * stor2)] wei
         gas 0 wei
    address(stor0[stor2].field_0) = 0
    stor[code.data[651 len 32] + (2 * stor2)] = 0
    stor2++
    if stor[code.data[651 len 32] + (2 * stor2)] > eth.balance(this.address):
    require stor2 < stor0.length
    call address(stor0[stor2].field_0) with:
       value stor[code.data[651 len 32] + (2 * stor2)] wei
         gas 0 wei
    address(stor0[stor2].field_0) = 0
    stor[code.data[651 len 32] + (2 * stor2)] = 0
    stor2++
    if stor[code.data[651 len 32] + (2 * stor2)] > eth.balance(this.address):
    require stor2 < stor0.length
    call address(stor0[stor2].field_0) with:
       value stor[code.data[651 len 32] + (2 * stor2)] wei
         gas 0 wei
    address(stor0[stor2].field_0) = 0
    stor[code.data[651 len 32] + (2 * stor2)] = 0
    stor2++
    # nil
}



}
