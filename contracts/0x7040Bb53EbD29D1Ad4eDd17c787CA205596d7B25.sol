contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -2054] = code.data[2423 len -2054]
    mem[64] = -1958
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = stor2.length + 1
        while sha3(2) + stor2.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    stor2[stor2.length][] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[369 len 2054]
}



// =====================  Runtime code  =====================


address deployerAddress;
array of struct sub_069ac1ca;
array of struct _register;

function sub_069ac1ca(?) payable {
    return stor[sub_069ac1ca.length + ('name', 'sub_069ac1ca', 1) - 1][0 len stor[sub_069ac1ca.length + ('name', 'sub_069ac1ca', 1) - 1].length].field_0
}

function sub_0b9c0268(?) payable {
    return stor[stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acd][0 len stor[stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acd].length]
}

function sub_a774a522(?) payable {
    return sub_069ac1ca[arg1][0 len sub_069ac1ca[arg1].length].field_0
}

function deployer() payable {
    return deployerAddress
}

function _register(uint256 arg1) payable {
    return _register[arg1][0 len _register[arg1].length].field_0
}

function _fallback() payable {
  stop
}

function sub_e5c23ff3(?) payable {
    if _register.length < arg1:
        return ''
    require arg1 < _register.length
    mem[160] = _register[arg1].field_0
    idx = 160
    s = 0
    while _register[arg1].length + 128 > idx:
        mem[idx + 32] = _register[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=_register[arg1].length, data=mem[160 len _register[arg1].length])
}

function sub_db75efea(?) payable {
    if sub_069ac1ca.length < arg1:
        return ''
    require arg1 < sub_069ac1ca.length
    mem[160] = sub_069ac1ca[arg1].field_0
    idx = 160
    s = 0
    while sub_069ac1ca[arg1].length + 128 > idx:
        mem[idx + 32] = sub_069ac1ca[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_069ac1ca[arg1].length, data=mem[160 len sub_069ac1ca[arg1].length])
}

function setRegister(string arg1) payable {
    if deployerAddress != msg.sender:
        return 0
    _register.length++
    if not _register.length <= _register.length + 1:
        mem[0] = 2
        idx = _register.length + 1
        while sha3(2) + _register.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    _register[_register.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}

function sub_d4c1a5fd(?) payable {
    if deployerAddress != msg.sender:
        return 0
    sub_069ac1ca.length++
    if not sub_069ac1ca.length <= sub_069ac1ca.length + 1:
        mem[0] = 1
        idx = sub_069ac1ca.length + 1
        while sha3(1) + sub_069ac1ca.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_069ac1ca[sub_069ac1ca.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
