contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = -10
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[102 len 1290]
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
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if arg1.length < 1:
        whatWasTheVal = -2
    else:
        if arg2.length < 1:
            whatWasTheVal = -2
        else:
            if arg2.length > arg1.length:
                whatWasTheVal = -2
            else:
                if arg1.length > test266151307():
                    whatWasTheVal = -3
                else:
                    idx = 0
                    s = 0
                    while idx < arg1.length:
                        require 0 < arg2.length
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) != Mask(8, 248, mem[ceil32(arg1.length) + 160]):
                            idx = idx + 1
                            s = s
                            continue 
                        if var21002 >= arg2.length:
                            if var21002 != arg2.length:
                                idx = idx + 1
                                s = var21002
                                continue 
                        else:
                            require var23003 < arg2.length
                            require idx + var25004 < arg1.length
                            if not var29001:
                                if var29003 != arg2.length:
                                    idx = idx + 1
                                    s = var29003
                                    continue 
                            else:
                                s = var29003
                                while s + 1 < arg2.length:
                                    require s + 1 < arg2.length
                                    require idx + s + 1 < arg1.length
                                    if Mask(8, 248, mem[idx + s + 129]) == Mask(8, 248, mem[ceil32(arg1.length) + s + 161]):
                                        s = s + 1
                                        continue 
                                    if s + 1 != arg2.length:
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    whatWasTheVal = idx
                                    return idx
                                if s + 1 != arg2.length:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                        whatWasTheVal = idx
                        return idx
                    whatWasTheVal = -4
    return -1
}



}
