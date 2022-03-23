contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 602]
}



// =====================  Runtime code  =====================


uint256 sub_8764abe3;
uint256 stor1;
address stor2;
array of struct stor3;

function sub_8764abe3(?) payable {
    return sub_8764abe3
}

function sub_0c5feb5d(?) payable {
    if msg.sender == stor2:
        selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function Test1() payable {
    sub_8764abe3 = msg.value
    stor1 = eth.balance(this.address)
}

function Test3() payable {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 2 * stor3.length + 1
        while 2 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor3[stor3.length].field_0 = msg.sender or Mask(96, 160, stor3[stor3.length].field_0)
    stor3[stor3.length].field_256 = msg.value
    emit 0x1290dc23: msg.value, 15, msg.sender
}

function sub_9932885e(?) payable {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 2 * stor3.length + 1
        while 2 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor3[stor3.length].field_0 = msg.sender or Mask(96, 160, stor3[stor3.length].field_0)
    stor3[stor3.length].field_256 = msg.value
    emit 0x1290dc23: msg.value, 15, msg.sender
}

function Test2() payable {
    sub_8764abe3 = eth.balance(this.address)
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    stor1 = eth.balance(this.address)
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 2 * stor3.length + 1
        while 2 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor3[stor3.length].field_0 = stor3[stor3.length].field_160
    stor3[stor3.length].field_256 = msg.value
}



}
