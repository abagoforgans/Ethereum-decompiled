contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 1
    return code.data[29 len 132]
}



// =====================  Runtime code  =====================


uint8 stor0;

function _fallback() payable {
  stop
}

function set2(uint256 arg1) payable {
    return arg1
}

function set(uint256 arg1) payable {
    if arg1 != 0:
        if arg1 != 1:
            if arg1 != 2:
                if arg1 != 3:
                    return 0
            else:
                stor0 = 1
                if arg1 != 3:
                    return 3
        else:
            stor0 = 0
            if arg1 != 2:
                if arg1 != 3:
                    return 2
            else:
                stor0 = 1
                if arg1 != 3:
                    return 3
    else:
        if arg1 != 1:
            if arg1 != 2:
                if arg1 != 3:
                    return 1
            else:
                stor0 = 1
                if arg1 != 3:
                    return 3
        else:
            stor0 = 0
            if arg1 != 2:
                if arg1 != 3:
                    return 2
            else:
                stor0 = 1
                if arg1 != 3:
                    return 3
    ('eq', 3, ('param', 'arg1'))
    revert 
}



}
