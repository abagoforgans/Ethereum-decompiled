contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 750]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
uint256 stor2;

function close() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function returnAll() payable {
  stop
}

function _fallback() payable {
    revert 
}

function getAge() payable {
    if stor0 != msg.sender:
        return 0
    return stor2
}

function sub_e69bfc84(?) payable {
    if msg.sender == stor0:
        stor1[].field_0 = Array(len=arg1.length, data=arg1[all])
        stor2 = arg2
        return 0
    else:
        return 0
}

function getName() payable {
    if stor0 != msg.sender:
        return ''
    mem[160] = uint256(stor1.field_0)
    idx = 160
    s = 0
    while stor1.length + 128 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}



}
