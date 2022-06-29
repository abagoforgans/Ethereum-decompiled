contract main {




// =====================  Runtime code  =====================


const VERSION = 1


uint256 sub_1201b4bd;
uint256 sub_f5660650;
array of address stor2;
array of struct sub_50d8f786;

function sub_1201b4bd(?) {
    return sub_1201b4bd
}

function sub_50d8f786(?) {
    if sub_50d8f786[address(arg1)].field_768 <= 0:
        revert with 0, 'Please provide a listed Guardian'
    return sub_50d8f786[address(arg1)].field_768, sub_50d8f786[address(arg1)].field_1024
}

function sub_f5660650(?) {
    return sub_f5660650
}

function _fallback() payable {
    revert
}

function isGuardian(address arg1) {
    return (sub_50d8f786[address(arg1)].field_768 > 0)
}

function register(string arg1, string arg2) payable {
    if ext_code.size(msg.sender) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only EOA may register as Guardian'
    if arg1.length <= 0:
        revert with 0, 'Please provide a valid name'
    if arg2.length <= 0:
        revert with 0, 'Please provide a valid website'
    if sub_50d8f786[address(msg.sender)].field_768 > 0:
        revert with 0, 'Cannot be a guardian'
    if sub_1201b4bd != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please provide the exact registration deposit'
    stor2.length++
    address(stor2[stor2.length]) = msg.sender
    sub_50d8f786[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_50d8f786[address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_50d8f786[address(msg.sender)].field_512 = stor2.length
    sub_50d8f786[address(msg.sender)].field_768 = block.number
    sub_50d8f786[address(msg.sender)].field_1024 = block.number
    sub_50d8f786[address(msg.sender)].field_1280 = block.timestamp
    emit GuardianRegistered(msg.sender);
}

function update(string arg1, string arg2) {
    if sub_50d8f786[address(msg.sender)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be a registered guardian'
    if ext_code.size(msg.sender) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only EOA may register as Guardian'
    if arg1.length <= 0:
        revert with 0, 'Please provide a valid name'
    if arg2.length <= 0:
        revert with 0, 'Please provide a valid website'
    sub_50d8f786[address(msg.sender)].field_0 = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        sub_50d8f786[address(msg.sender)][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while sub_50d8f786[address(msg.sender)].length + 31 / 32 > idx:
        sub_50d8f786[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_50d8f786[address(msg.sender)].field_256 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        sub_50d8f786[address(msg.sender)][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while sub_50d8f786[address(msg.sender)][1].length + 31 / 32 > idx:
        sub_50d8f786[address(msg.sender)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_50d8f786[address(msg.sender)].field_1024 = block.number
    emit 0x6bb7ff33: msg.sender
}

function sub_d93d7d29(?) {
    if arg1 >= stor2.length:
        return ''
    require arg2 + arg1 >= arg1
    if arg2 + arg1 <= stor2.length:
        mem[96] = arg2
        idx = 0
        while idx < mem[96]:
            require idx + arg1 >= arg1
            require idx + arg1 < stor2.length
            mem[0] = 2
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor[('name', 'stor2', 2) + idx + arg1])
            idx = idx + 1
            continue 
        mem[(32 * arg2) + 128] = 32
        mem[(32 * arg2) + 160] = mem[96]
        s = 0
        while arg2 < 32 * mem[96]:
            mem[(34 * arg2) + 192] = mem[arg2 + 128]
            s = arg2 + 32
            continue 
        return 32, mem[(32 * arg2) + 160 len (32 * mem[96]) + 32]
    require arg1 <= stor2.length
    mem[96] = stor2.length - arg1
    mem[64] = (32 * stor2.length - arg1) + 128
    if stor2.length - arg1:
        mem[128 len 32 * stor2.length - arg1] = code.data[4772 len 32 * stor2.length - arg1]
    idx = 0
    while idx < mem[96]:
        require idx + arg1 >= arg1
        require idx + arg1 < stor2.length
        mem[0] = 2
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor[('name', 'stor2', 2) + idx + arg1])
        idx = idx + 1
        continue 
    mem[(32 * stor2.length - arg1) + 128] = 32
    mem[(32 * stor2.length - arg1) + 160] = mem[96]
    s = 0
    while stor2.length - arg1 < 32 * mem[96]:
        mem[stor2.length + -arg1 + (32 * stor2.length - arg1) + 192] = mem[stor2.length + -arg1 + 128]
        s = stor2.length + -arg1 + 32
        continue 
    return memory
      from (32 * stor2.length - arg1) + 128
       len (32 * mem[96]) + 64
}

function leave() {
    if sub_50d8f786[address(msg.sender)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be a registered guardian'
    if ext_code.size(msg.sender) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only EOA may register as Guardian'
    require sub_f5660650 + sub_50d8f786[msg.sender].field_1280 >= sub_50d8f786[msg.sender].field_1280
    if block.timestamp < sub_f5660650 + sub_50d8f786[msg.sender].field_1280:
        revert with 0, 'Minimal guardian time didnt pass'
    require sub_50d8f786[address(msg.sender)].field_512 < stor2.length
    require address(stor2[stor3[address(msg.sender)].field_512]) == msg.sender
    require stor2.length - 1 < stor2.length
    require sub_50d8f786[address(msg.sender)].field_512 < stor2.length
    address(stor2[stor3[address(msg.sender)].field_512]) = address(stor2[stor2.length])
    sub_50d8f786[address(stor2[sub_50d8f786[address(msg.sender)].field_512])].field_512 = sub_50d8f786[address(msg.sender)].field_512
    stor2.length--
    if stor2.length > stor2.length - 1:
        idx = stor2.length - 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    sub_50d8f786[address(msg.sender)].field_0 = 0
    if 31 < sub_50d8f786[address(msg.sender)].length:
        idx = 0
        while sub_50d8f786[address(msg.sender)].length + 31 / 32 > idx:
            sub_50d8f786[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_50d8f786[address(msg.sender)].field_256 = 0
    if 31 < sub_50d8f786[address(msg.sender)][1].length:
        idx = 0
        while sub_50d8f786[address(msg.sender)][1].length + 31 / 32 > idx:
            sub_50d8f786[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_50d8f786[address(msg.sender)].field_512 = 0
    sub_50d8f786[address(msg.sender)].field_768 = 0
    sub_50d8f786[address(msg.sender)].field_1024 = 0
    sub_50d8f786[address(msg.sender)].field_1280 = 0
    call msg.sender with:
       value sub_1201b4bd wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x30e7885e: msg.sender
}

function getGuardianData(address arg1) {
    if sub_50d8f786[address(arg1)].field_768 <= 0:
        revert with 0, 'Please provide a listed Guardian'
    mem[96] = sub_50d8f786[address(arg1)].length
    mem[128] = sub_50d8f786[address(arg1)].field_0
    idx = 128
    s = 0
    while sub_50d8f786[address(arg1)].length + 96 > idx:
        mem[idx + 32] = sub_50d8f786[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 3
    mem[64] = ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 160
    mem[ceil32(sub_50d8f786[address(arg1)].length) + 128] = sub_50d8f786[address(arg1)][1].length
    mem[0] = sha3(address(arg1), 3) + 1
    mem[ceil32(sub_50d8f786[address(arg1)].length) + 160] = sub_50d8f786[address(arg1)][1].field_0
    idx = ceil32(sub_50d8f786[address(arg1)].length) + 160
    s = 0
    while ceil32(sub_50d8f786[address(arg1)].length) + sub_50d8f786[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = sub_50d8f786[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 160] = 64
    mem[ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 224] = sub_50d8f786[address(arg1)].length
    mem[ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 256 len ceil32(sub_50d8f786[address(arg1)].length)] = mem[128 len ceil32(sub_50d8f786[address(arg1)].length)]
    mem[ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 192] = sub_50d8f786[address(arg1)].length + 96
    mem[sub_50d8f786[address(arg1)].length + ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 256] = sub_50d8f786[address(arg1)][1].length
    mem[sub_50d8f786[address(arg1)].length + ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 288 len ceil32(sub_50d8f786[address(arg1)][1].length)] = mem[ceil32(sub_50d8f786[address(arg1)].length) + 160 len ceil32(sub_50d8f786[address(arg1)][1].length)]
    if not sub_50d8f786[address(arg1)][1].length % 32:
        return Array(len=sub_50d8f786[address(arg1)].length, data=mem[128 len ceil32(sub_50d8f786[address(arg1)].length)], mem[(2 * ceil32(sub_50d8f786[address(arg1)].length)) + ceil32(sub_50d8f786[address(arg1)][1].length) + 256 len sub_50d8f786[address(arg1)][1].length + sub_50d8f786[address(arg1)].length + -ceil32(sub_50d8f786[address(arg1)].length) + 32]), 
               sub_50d8f786[address(arg1)].length + 96
    mem[floor32(sub_50d8f786[address(arg1)][1].length) + sub_50d8f786[address(arg1)].length + ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + 288] = mem[floor32(sub_50d8f786[address(arg1)][1].length) + sub_50d8f786[address(arg1)].length + ceil32(sub_50d8f786[address(arg1)].length) + ceil32(sub_50d8f786[address(arg1)][1].length) + -sub_50d8f786[address(arg1)][1].length % 32 + 320 len sub_50d8f786[address(arg1)][1].length % 32]
    return Array(len=sub_50d8f786[address(arg1)].length, data=mem[128 len ceil32(sub_50d8f786[address(arg1)].length)], mem[(2 * ceil32(sub_50d8f786[address(arg1)].length)) + ceil32(sub_50d8f786[address(arg1)][1].length) + 256 len floor32(sub_50d8f786[address(arg1)][1].length) + sub_50d8f786[address(arg1)].length + -ceil32(sub_50d8f786[address(arg1)].length) + 64]), 
           sub_50d8f786[address(arg1)].length + 96
}

function sub_4cf1f60b(?) {
    if arg1 >= stor2.length:
        mem[128] = 0
        idx = 0
        while idx < 0:
            require idx < 0
            require idx < 0
            mem[(32 * idx) + 160] = address(mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        return ''
    require arg2 + arg1 >= arg1
    if arg2 + arg1 <= stor2.length:
        mem[96] = arg2
        if arg2:
            mem[128 len 32 * arg2] = code.data[4772 len 32 * arg2]
        idx = 0
        while idx < mem[96]:
            require idx + arg1 >= arg1
            require idx + arg1 < stor2.length
            mem[0] = 2
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor[('name', 'stor2', 2) + idx + arg1])
            idx = idx + 1
            continue 
        mem[(32 * arg2) + 128] = mem[96]
        if mem[96]:
            mem[(32 * arg2) + 160 len 32 * mem[96]] = code.data[4772 len 32 * mem[96]]
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require idx < mem[(32 * arg2) + 128]
            mem[(32 * arg2) + (32 * idx) + 160] = address(mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        mem[(32 * arg2) + (32 * mem[96]) + 160] = 32
        mem[(32 * arg2) + (32 * mem[96]) + 192] = mem[(32 * arg2) + 128]
        mem[(32 * arg2) + (32 * mem[96]) + 224 len floor32(mem[(32 * arg2) + 128])] = mem[(32 * arg2) + 160 len floor32(mem[(32 * arg2) + 128])]
        return Array(len=mem[(32 * arg2) + 128], data=mem[(32 * arg2) + (32 * mem[96]) + 224 len 32 * mem[(32 * arg2) + 128]])
    require arg1 <= stor2.length
    mem[96] = stor2.length - arg1
    if not stor2.length - arg1:
        idx = 0
        while idx < mem[96]:
            require idx + arg1 >= arg1
            require idx + arg1 < stor2.length
            mem[0] = 2
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor[('name', 'stor2', 2) + idx + arg1])
            idx = idx + 1
            continue 
        _122 = mem[96]
        mem[(32 * stor2.length - arg1) + 128] = mem[96]
        if _122:
            mem[(32 * stor2.length - arg1) + 160 len 32 * _122] = code.data[4772 len 32 * _122]
        idx = 0
        while idx < _122:
            require idx < mem[96]
            require idx < mem[(32 * stor2.length - arg1) + 128]
            mem[(32 * stor2.length - arg1) + (32 * idx) + 160] = address(mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        mem[(32 * stor2.length - arg1) + (32 * _122) + 160] = 32
        mem[(32 * stor2.length - arg1) + (32 * _122) + 192] = mem[(32 * stor2.length - arg1) + 128]
        mem[(32 * stor2.length - arg1) + (32 * _122) + 224 len floor32(mem[(32 * stor2.length - arg1) + 128])] = mem[(32 * stor2.length - arg1) + 160 len floor32(mem[(32 * stor2.length - arg1) + 128])]
        return Array(len=mem[(32 * stor2.length - arg1) + 128], data=mem[(32 * stor2.length - arg1) + (32 * _122) + 224 len 32 * mem[(32 * stor2.length - arg1) + 128]]), 
    mem[128 len 32 * stor2.length - arg1] = code.data[4772 len 32 * stor2.length - arg1]
    idx = 0
    while idx < mem[96]:
        require idx + arg1 >= arg1
        require idx + arg1 < stor2.length
        mem[0] = 2
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor[('name', 'stor2', 2) + idx + arg1])
        idx = idx + 1
        continue 
    _124 = mem[96]
    mem[(32 * stor2.length - arg1) + 128] = mem[96]
    if _124:
        mem[(32 * stor2.length - arg1) + 160 len 32 * _124] = code.data[4772 len 32 * _124]
    idx = 0
    while idx < _124:
        require idx < mem[96]
        require idx < mem[(32 * stor2.length - arg1) + 128]
        mem[(32 * stor2.length - arg1) + (32 * idx) + 160] = address(mem[(32 * idx) + 128])
        idx = idx + 1
        continue 
    mem[(32 * stor2.length - arg1) + (32 * _124) + 160] = 32
    mem[(32 * stor2.length - arg1) + (32 * _124) + 192] = mem[(32 * stor2.length - arg1) + 128]
    mem[(32 * stor2.length - arg1) + (32 * _124) + 224 len floor32(mem[(32 * stor2.length - arg1) + 128])] = mem[(32 * stor2.length - arg1) + 160 len floor32(mem[(32 * stor2.length - arg1) + 128])]
    return Array(len=mem[(32 * stor2.length - arg1) + 128], data=mem[(32 * stor2.length - arg1) + (32 * _124) + 224 len 32 * mem[(32 * stor2.length - arg1) + 128]]), 
}



}
