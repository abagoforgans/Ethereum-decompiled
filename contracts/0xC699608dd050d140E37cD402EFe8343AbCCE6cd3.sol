contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1164]
}



// =====================  Runtime code  =====================


address readOwner;
array of struct sub_f1153f61;
mapping of address sub_78f21c8d;

function sub_78f21c8d(?) payable {
    return address(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))])
}

function readOwner() payable {
    return readOwner
}

function sub_f1153f61(?) payable {
    return sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_256
}

function kill() payable {
    if readOwner != msg.sender:
    selfdestruct(readOwner)
}

function _fallback() payable {
  stop
}

function sub_4ea019af(?) payable {
    if address(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]) != msg.sender:
        return 0
    if 0 == arg2:
        return 0
    uint256(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]) = arg2 or Mask(96, 160, uint256(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]))
    emit 0x9ce14753: msg.sender, arg2, ('signextend', 15, ('param', 'arg1'))
    return 1
}

function sub_5736df05(?) payable {
    if sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0:
        mem[160] = sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0
        idx = 160
        s = 0
        while sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0 + 128 > idx:
            mem[idx + 32] = sub_f1153f61[('signextend', 15, ('param', 'arg1'))][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0, data=mem[160 len sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0]), 
}

function sub_47b1ad09(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if address(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]) != 0:
        if address(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]) != msg.sender:
            return 0
    if not address(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]):
        uint256(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]) = msg.sender or Mask(96, 160, uint256(sub_78f21c8d[('signextend', 15, ('param', 'arg1'))]))
        emit 0x9ce14753: readOwner, msg.sender, ('signextend', 15, ('param', 'arg1'))
    mem[ceil32(arg2.length) + 128] = 96
    sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0 + 31 / 32 > idx:
            sub_f1153f61[('signextend', 15, ('param', 'arg1'))][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            sub_f1153f61[('signextend', 15, ('param', 'arg1'))][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_0 + 31 / 32 > idx:
            sub_f1153f61[('signextend', 15, ('param', 'arg1'))][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_f1153f61[('signextend', 15, ('param', 'arg1'))].field_256 = arg3
    return 1
}



}
