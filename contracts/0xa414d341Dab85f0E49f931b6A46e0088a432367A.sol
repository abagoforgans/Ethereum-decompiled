contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[87 len 1573]
}



// =====================  Runtime code  =====================


uint256 sub_3ffd81fb;
address stor1;
mapping of address sub_f2290731;

function sub_3ffd81fb(?) {
    return sub_3ffd81fb
}

function sub_f2290731(?) {
    return sub_f2290731[arg1[all]]
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert 
}

function sub_8f0f5178(?) {
    if not sub_f2290731[arg4[all]]:
        sub_3ffd81fb++
        sub_f2290731[arg4[all]] = arg2
        if not arg4.length % 32:
            emit 0xe80df27e: block.timestamp, Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, arg6, arg4.length + arg3.length + 256, arg1, arg2
        else:
            emit 0xe80df27e: block.timestamp, Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, arg6, floor32(arg4.length) + arg3.length + 288, arg1, arg2
    else:
        if sub_f2290731[arg4[all]] == arg1:
            sub_f2290731[arg4[all]] = arg2
            if not arg4.length % 32:
                emit 0xe80df27e: block.timestamp, Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, arg6, arg4.length + arg3.length + 256, arg1, arg2
            else:
                emit 0xe80df27e: block.timestamp, Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, arg6, floor32(arg4.length) + arg3.length + 288, arg1, arg2
        else:
            if not sub_f2290731[arg4[all]]:
                sub_f2290731[arg4[all]] = arg2
                if not arg4.length % 32:
                    emit 0xe80df27e: block.timestamp, Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, arg6, arg4.length + arg3.length + 256, arg1, arg2
                else:
                    emit 0xe80df27e: block.timestamp, Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, arg6, floor32(arg4.length) + arg3.length + 288, arg1, arg2
}



}
