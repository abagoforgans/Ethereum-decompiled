contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;

function _fallback() payable {
    mem[128 len 1344] = code.data[3954 len 1344]
    stor1.length = 2689
    s = 0
    idx = 128
    while 1472 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 42
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    mem[1504 len 324] = code.data[5298 len 324]
    stor2.length = 649
    s = 0
    idx = 1504
    while 1828 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 11
    while stor2.length + 31 / 32 > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    mem[1888 len 859] = code.data[5622 len 859]
    stor3.length = 1719
    s = 0
    idx = 1888
    while 2747 > idx:
        stor3[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 27
    while stor3.length + 31 / 32 > idx:
        stor3[idx] = 0
        idx = idx + 1
        continue 
    if not msg.value:
        return code.data[372 len 3582]
    revert
}



// =====================  Runtime code  =====================


address owner;
array of uint256 sub_bda7b323;
array of uint256 sub_830c0c25;
array of uint256 sub_e9138b33;

function sub_22d340c8(?) {
    return sub_830c0c25[0 len sub_830c0c25.length]
}

function sub_3f943a98(?) {
    return sub_bda7b323[0 len sub_bda7b323.length]
}

function sub_53fe3a39(?) {
    return sub_e9138b33[0 len sub_e9138b33.length]
}

function sub_830c0c25(?) {
    return sub_830c0c25[0 len sub_830c0c25.length]
}

function owner() {
    return owner
}

function sub_bda7b323(?) {
    return sub_bda7b323[0 len sub_bda7b323.length]
}

function sub_e9138b33(?) {
    return sub_e9138b33[0 len sub_e9138b33.length]
}

function _fallback() payable {
    revert
}

function sub_308049f0(?) {
    owner = msg.sender
}

function sub_4bac02b8(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.sender == owner:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 4
        if arg2.length > 0:
            stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 0
            if 31 < stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                idx = 0
                while stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx] = 0
                    idx = idx + 1
                    continue 
}

function sub_bd2ea3f9(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 4
    _33 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 192
    mem[ceil32(arg1.length) + 160] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _33
    mem[ceil32(arg1.length) + 192] = stor[sha3(_33)]
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_33].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_33) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _63 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 160]
    _65 = mem[ceil32(arg1.length) + 160]
    if not mem[ceil32(arg1.length) + 160]:
        if not mem[ceil32(arg1.length) + 160] % 32:
            return 32, mem[mem[64] + 32 len mem[ceil32(arg1.length) + 160] + 32]
        mem[floor32(mem[ceil32(arg1.length) + 160]) + mem[64] + 64] = mem[floor32(mem[ceil32(arg1.length) + 160]) + mem[64] + -(mem[ceil32(arg1.length) + 160] % 32) + 96 len mem[ceil32(arg1.length) + 160] % 32]
        return 32, mem[mem[64] + 32 len floor32(_65) + 64]
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 192]
    mem[mem[64] + 96 len floor32(_65 - 1)] = mem[ceil32(arg1.length) + 224 len floor32(_65 - 1)]
    if not _65 % 32:
        return 32, mem[mem[64] + 32 len _65 + 32]
    mem[floor32(_65) + mem[64] + 64] = mem[floor32(_65) + mem[64] + -(_65 % 32) + 96 len _65 % 32]
    return memory
      from mem[64]
       len floor32(_65) + _63 + -mem[64] + 96
}



}
