contract main {


// =======================  Init code  ======================


mapping of uint256 stor4;

function _fallback() payable {
    stor4['r']['r'] = 0
    stor4['r']['p'] = 2
    stor4['r']['s'] = 1
    stor4['p']['r'] = 1
    stor4['p']['p'] = 0
    stor4['p']['s'] = 2
    stor4['s']['r'] = 2
    stor4['s']['p'] = 1
    stor4['s']['s'] = 0
    return code.data[319 len 1060]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
  stop
}

function sub_100e4e8b(?) payable {
    return msg.sender == address(stor0), address(stor1.length) == msg.sender
}

function play(string arg1, string arg2) payable {
    if address(stor0) == msg.sender:
        stor5 = sha3(sha3(arg1[all]) xor sha3(arg2[all]))
    if msg.sender == address(stor1.length):
        stor6 = sha3(sha3(arg1[all]) xor sha3(arg2[all]))
}

function register() payable {
    require msg.value >= 10
    if not address(stor0):
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    else:
        if 0 == address(stor1.length):
            stor1.length = msg.sender or Mask(96, 160, stor1.length)
}

function checkWinner() payable {
    mem[64] = 96
    mem[96] = stor2
    idx = 96
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while stor2.length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + 96] = 4
    _25 = sha3(mem[96 len stor2.length + 32])
    mem[96] = stor3
    idx = mem[64]
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    while stor3.length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor3.length + 96] = _25
    if stor[sha3(mem[mem[64] len stor3.length + -mem[64] + 128])] == 1:
        call address(stor0) with:
           value 200 wei
             gas 0 wei
    else:
        if 2 == stor[sha3(mem[mem[64] len stor3.length + -mem[64] + 128])]:
            call address(stor1.length) with:
               value 200 wei
                 gas 0 wei
}



}
