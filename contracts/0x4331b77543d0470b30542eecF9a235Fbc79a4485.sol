contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[36 len 504]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function sub_0c5feb5d(?) payable {
    if msg.sender == stor3:
        selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function Test1() payable {
    stor1 = msg.value
    stor2 = eth.balance(this.address)
}

function Test3() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = stor0[stor0.length].field_160
    stor0[stor0.length].field_256 = msg.value
}

function sub_9932885e(?) payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = stor0[stor0.length].field_160
    stor0[stor0.length].field_256 = msg.value
}

function Test2() payable {
    stor1 = eth.balance(this.address)
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    stor2 = eth.balance(this.address)
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = stor0[stor0.length].field_160
    stor0[stor0.length].field_256 = msg.value
}



}
