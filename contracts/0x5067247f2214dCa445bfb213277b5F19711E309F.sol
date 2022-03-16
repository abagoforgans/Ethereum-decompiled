contract main {


// =======================  Init code  ======================


const _fallback = code.data[21 len 2082]




// =====================  Runtime code  =====================


const version = '0.0.2'


array of struct sub_56260a71;
mapping of struct owner;

function sub_3e6b1c16(?) payable {
    return sub_56260a71.length
}

function sub_56260a71(?) payable {
    require arg1 < sub_56260a71.length
    return sub_56260a71[arg1].field_0
}

function getOwner(bytes32 arg1) payable {
    return owner[arg1].field_0
}

function _fallback() payable {
  stop
}

function sub_58b83ba4(?) payable {
    if owner[arg1].field_0 == msg.sender:
        owner[arg1].field_0 = arg2 or Mask(96, 160, owner[arg1].field_0)
}

function sub_f7291121(?) payable {
    if owner[arg1].field_256:
        mem[160] = owner[arg1][1].field_0
        idx = 160
        s = 0
        while owner[arg1].field_256 + 128 > idx:
            mem[idx + 32] = owner[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=owner[arg1].field_256, data=mem[160 len owner[arg1].field_256])
}

function getAll() payable {
    if sub_56260a71.length:
        mem[160] = uint256(sub_56260a71.field_0)
        idx = 160
        s = 0
        while (32 * sub_56260a71.length) + 128 > idx:
            mem[idx + 32] = sub_56260a71[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_56260a71.length, data=mem[160 len 32 * sub_56260a71.length])
}

function registerPackage(bytes32 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if not owner[arg1].field_0:
        sub_56260a71.length++
        if not sub_56260a71.length <= sub_56260a71.length + 1:
            idx = sub_56260a71.length + 1
            while sub_56260a71.length > idx:
                sub_56260a71[idx].field_0 = 0
                idx = idx + 1
                continue 
        require sub_56260a71.length - 1 < sub_56260a71.length
        sub_56260a71[sub_56260a71.length].field_0 = arg1
    else:
        if owner[arg1].field_0 != msg.sender:
            return 0
        if not owner[arg1].field_0:
            sub_56260a71.length++
            if not sub_56260a71.length <= sub_56260a71.length + 1:
                idx = sub_56260a71.length + 1
                while sub_56260a71.length > idx:
                    sub_56260a71[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require sub_56260a71.length - 1 < sub_56260a71.length
            sub_56260a71[sub_56260a71.length].field_0 = arg1
    mem[ceil32(arg2.length) + 128] = msg.sender
    owner[arg1].field_0 = msg.sender or Mask(96, 160, owner[arg1].field_0)
    owner[arg1].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while owner[arg1].field_256 + 31 / 32 > idx:
            owner[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            owner[arg1][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while owner[arg1].field_256 + 31 / 32 > idx:
            owner[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x6e7287b1: arg1, Array(len=arg2.length, data=arg2[all])
    return 1
}



}
