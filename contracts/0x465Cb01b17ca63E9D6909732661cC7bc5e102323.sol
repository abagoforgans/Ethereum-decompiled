contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'HELLO' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[338 len 863]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 greet;

function greet() payable {
    return greet[0 len greet.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function changeGreeting(string arg1) payable {
    greet[] = Array(len=arg1.length, data=arg1[all])
}



}
