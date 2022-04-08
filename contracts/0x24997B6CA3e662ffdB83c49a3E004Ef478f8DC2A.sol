contract main {


// =======================  Init code  ======================


uint8 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor11;

function _fallback() payable {
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor11 = 0
    require not msg.value
    stor11 = msg.sender
    return code.data[264 len 7770]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - _fallback()
#
uint256 stor7;
uint256 stor8;
address stor9;
uint256 stor10;
address stor11;

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function drain() {
    require msg.sender == stor11
    call stor11 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function checkWinner() {
    if stor7 < stor8:
        call stor9 with:
           value 175 * stor10 / 100 wei
             gas 2300 * is_zero(value) wei
        emit 0x6f3f50de: Array(len=3, data='WIN')
    else:
        if stor7 > stor8:
            call stor9 with:
               value 1 wei
                 gas 0 wei
            emit 0x6f3f50de: Array(len=4, data='LOSE')
        else:
            if stor7 == stor8:
                call stor9 with:
                   value stor10 wei
                     gas 2300 * is_zero(value) wei
                emit 0x6f3f50de: Array(len=4, data='DRAW')
}

function stringToUint(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] < 48:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        if mem[idx + 128 len 1] > 57:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (10 * s) + mem[idx + 128 len 1] - 48
        continue 
    return s
}



}
