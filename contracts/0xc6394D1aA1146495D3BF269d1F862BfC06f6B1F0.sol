contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[41 len 1240]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 sub_f1000872;
uint256 counter;
address stor3;
uint256 stor3;

function counter() payable {
    return counter
}

function sub_f1000872(?) payable {
    return sub_f1000872[arg1][0 len sub_f1000872[arg1].length]
}

function remove() payable {
    if address(stor3) != msg.sender:
    selfdestruct(address(stor3))
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor3):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function sub_811658ee(?) payable {
    if msg.sender == address(stor3):
        stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_7526e165(?) payable {
    if msg.sender == address(stor3):
        sub_f1000872[stor2][] = Array(len=arg1.length, data=arg1[all])
        counter++
}

function sub_7825026a(?) payable {
    if address(stor3) != msg.sender:
        return ''
    mem[160] = stor0[arg1].field_0
    idx = 160
    s = 0
    while stor0[arg1].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[160 len stor0[arg1].length])
}



}
