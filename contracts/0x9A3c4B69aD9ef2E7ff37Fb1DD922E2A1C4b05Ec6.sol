contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 852]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function indexOf(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    if arg2.length == 1:
        if arg1.length >= 1:
            if arg1.length <= test266151307():
                idx = 0
                while idx < arg1.length:
                    require 0 < arg2.length
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) != Mask(8, 248, mem[ceil32(arg1.length) + 160]):
                        idx = idx + 1
                        continue 
                    return idx
    return -1
}



}
