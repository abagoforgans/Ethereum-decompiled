contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = -2
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[102 len 1824]
}



// =====================  Runtime code  =====================


address stor0;
uint256 whatWasTheVal;

function whatWasTheVal() payable {
    return whatWasTheVal
}

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
                    whatWasTheVal = idx
                    return idx
    whatWasTheVal = -1
    return -1
}

function sub_1eb21bfb(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if arg2.length == 1:
        if arg1.length >= 1:
            if arg1.length <= test266151307():
                idx = arg1.length - 1
                while idx > 0:
                    require 0 < arg2.length
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) != Mask(8, 248, mem[ceil32(arg1.length) + 160]):
                        idx = idx - 1
                        continue 
                    whatWasTheVal = idx
                    return idx
    whatWasTheVal = -1
    return -1
}



}
