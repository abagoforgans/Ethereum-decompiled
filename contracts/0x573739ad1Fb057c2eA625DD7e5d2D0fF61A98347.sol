contract main {




// =====================  Runtime code  =====================


const VERSION = 1


uint256 registrationDeposit;
array of address sub_f560c734;
array of struct sub_7f72185a;

function registrationDeposit() {
    return registrationDeposit
}

function sub_7f72185a(?) {
    require calldata.size - 4 >= 32
    if sub_7f72185a[address(arg1)].length <= 0:
        revert with 0, 'Please provide a listed Guardian'
    return sub_7f72185a[address(arg1)].field_768, sub_7f72185a[address(arg1)].field_1024
}

function sub_f560c734(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_f560c734.length
    return address(sub_f560c734[arg1])
}

function _fallback() payable {
    revert
}

function isGuardian(address arg1) {
    require calldata.size - 4 >= 32
    return (sub_7f72185a[address(arg1)].length > 0)
}

function leave() {
    if sub_7f72185a[address(msg.sender)].length <= 0:
        revert with 0, 'Sender is not a Guardian'
    require sub_7f72185a[address(msg.sender)].field_512 < sub_f560c734.length
    require address(sub_f560c734[stor2[address(msg.sender)].field_512]) == msg.sender
    require sub_f560c734.length - 1 < sub_f560c734.length
    require sub_7f72185a[address(msg.sender)].field_512 < sub_f560c734.length
    address(sub_f560c734[stor2[address(msg.sender)].field_512]) = address(sub_f560c734[sub_f560c734.length])
    sub_7f72185a[address(stor1[sub_7f72185a[address(msg.sender)].field_512])].field_512 = sub_7f72185a[address(msg.sender)].field_512
    sub_7f72185a[address(msg.sender)].field_0 = 0
    if 31 < sub_7f72185a[address(msg.sender)].length:
        idx = 0
        while sub_7f72185a[address(msg.sender)].length + 31 / 32 > idx:
            sub_7f72185a[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_7f72185a[address(msg.sender)].field_256 = 0
    if 31 < sub_7f72185a[address(msg.sender)][1].length:
        idx = 0
        while sub_7f72185a[address(msg.sender)][1].length + 31 / 32 > idx:
            sub_7f72185a[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_7f72185a[address(msg.sender)].field_512 = 0
    sub_7f72185a[address(msg.sender)].field_768 = 0
    sub_7f72185a[address(msg.sender)].field_1024 = 0
    sub_f560c734.length--
    if sub_f560c734.length > sub_f560c734.length - 1:
        idx = sub_f560c734.length - 1
        while sub_f560c734.length > idx:
            uint256(sub_f560c734[idx]) = 0
            idx = idx + 1
            continue 
    call msg.sender with:
       value registrationDeposit wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x30e7885e: msg.sender
}

function sub_d93d7d29(?) {
    require calldata.size - 4 >= 64
    if arg1 >= sub_f560c734.length:
        return ''
    if arg2 > 100:
        revert with 0, 'Page size may not exceed 100'
    require arg1 + arg2 >= arg1
    if arg1 + arg2 <= sub_f560c734.length:
        mem[96] = arg2
        idx = 0
        while idx < mem[96]:
            require arg1 + idx >= arg1
            require arg1 + idx < sub_f560c734.length
            mem[0] = 1
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor[('name', 'sub_f560c734', 1) + arg1 + idx])
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
    require arg1 <= sub_f560c734.length
    mem[96] = sub_f560c734.length - arg1
    mem[64] = (32 * sub_f560c734.length - arg1) + 128
    if sub_f560c734.length - arg1:
        mem[128 len 32 * sub_f560c734.length - arg1] = code.data[6191 len 32 * sub_f560c734.length - arg1]
    idx = 0
    while idx < mem[96]:
        require arg1 + idx >= arg1
        require arg1 + idx < sub_f560c734.length
        mem[0] = 1
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor[('name', 'sub_f560c734', 1) + arg1 + idx])
        idx = idx + 1
        continue 
    mem[(32 * sub_f560c734.length - arg1) + 128] = 32
    mem[(32 * sub_f560c734.length - arg1) + 160] = mem[96]
    s = 0
    while sub_f560c734.length - arg1 < 32 * mem[96]:
        mem[(32 * sub_f560c734.length - arg1) + sub_f560c734.length + -arg1 + 192] = mem[sub_f560c734.length + -arg1 + 128]
        s = sub_f560c734.length + -arg1 + 32
        continue 
    return memory
      from (32 * sub_f560c734.length - arg1) + 128
       len (32 * mem[96]) + 64
}

function sub_d46bdcad(?) {
    require calldata.size - 4 >= 32
    mem[32] = 2
    mem[96] = sub_7f72185a[arg1].length
    mem[0] = sha3(arg1, 2)
    mem[128] = sub_7f72185a[arg1].field_0
    idx = 128
    s = 0
    while sub_7f72185a[arg1].length + 96 > idx:
        mem[idx + 32] = sub_7f72185a[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 160
    mem[ceil32(sub_7f72185a[arg1].length) + 128] = sub_7f72185a[arg1][1].length
    mem[ceil32(sub_7f72185a[arg1].length) + 160] = sub_7f72185a[arg1][1].field_0
    idx = ceil32(sub_7f72185a[arg1].length) + 160
    s = 0
    while ceil32(sub_7f72185a[arg1].length) + sub_7f72185a[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_7f72185a[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 224] = sub_7f72185a[arg1].field_512
    mem[ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 256] = sub_7f72185a[arg1].field_768
    mem[ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 288] = sub_7f72185a[arg1].field_1024
    mem[ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 160] = 160
    mem[ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 320] = sub_7f72185a[arg1].length
    mem[ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 352 len ceil32(sub_7f72185a[arg1].length)] = mem[128 len ceil32(sub_7f72185a[arg1].length)]
    mem[ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 192] = sub_7f72185a[arg1].length + 192
    mem[sub_7f72185a[arg1].length + ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 352] = sub_7f72185a[arg1][1].length
    mem[sub_7f72185a[arg1].length + ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 384 len ceil32(sub_7f72185a[arg1][1].length)] = mem[ceil32(sub_7f72185a[arg1].length) + 160 len ceil32(sub_7f72185a[arg1][1].length)]
    if not sub_7f72185a[arg1][1].length % 32:
        return Array(len=sub_7f72185a[arg1].length, data=mem[128 len ceil32(sub_7f72185a[arg1].length)], mem[(2 * ceil32(sub_7f72185a[arg1].length)) + ceil32(sub_7f72185a[arg1][1].length) + 352 len sub_7f72185a[arg1][1].length + sub_7f72185a[arg1].length + -ceil32(sub_7f72185a[arg1].length) + 32]), 
               sub_7f72185a[arg1].length + 192,
               sub_7f72185a[arg1].field_512,
               sub_7f72185a[arg1].field_768,
               sub_7f72185a[arg1].field_1024
    mem[floor32(sub_7f72185a[arg1][1].length) + sub_7f72185a[arg1].length + ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + 384] = mem[floor32(sub_7f72185a[arg1][1].length) + sub_7f72185a[arg1].length + ceil32(sub_7f72185a[arg1].length) + ceil32(sub_7f72185a[arg1][1].length) + -sub_7f72185a[arg1][1].length % 32 + 416 len sub_7f72185a[arg1][1].length % 32]
    return Array(len=sub_7f72185a[arg1].length, data=mem[128 len ceil32(sub_7f72185a[arg1].length)], mem[(2 * ceil32(sub_7f72185a[arg1].length)) + ceil32(sub_7f72185a[arg1][1].length) + 352 len floor32(sub_7f72185a[arg1][1].length) + sub_7f72185a[arg1].length + -ceil32(sub_7f72185a[arg1].length) + 64]), 
           sub_7f72185a[arg1].length + 192,
           sub_7f72185a[arg1].field_512,
           sub_7f72185a[arg1].field_768,
           sub_7f72185a[arg1].field_1024
}

function getGuardianData(address arg1) {
    require calldata.size - 4 >= 32
    if sub_7f72185a[address(arg1)].length <= 0:
        revert with 0, 'Please provide a listed Guardian'
    mem[32] = 2
    mem[96] = sub_7f72185a[address(arg1)].length
    mem[128] = sub_7f72185a[address(arg1)].field_0
    idx = 128
    s = 0
    while sub_7f72185a[address(arg1)].length + 96 > idx:
        mem[idx + 32] = sub_7f72185a[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 160
    mem[ceil32(sub_7f72185a[address(arg1)].length) + 128] = sub_7f72185a[address(arg1)][1].length
    mem[0] = sha3(address(arg1), 2) + 1
    mem[ceil32(sub_7f72185a[address(arg1)].length) + 160] = sub_7f72185a[address(arg1)][1].field_0
    idx = ceil32(sub_7f72185a[address(arg1)].length) + 160
    s = 0
    while ceil32(sub_7f72185a[address(arg1)].length) + sub_7f72185a[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = sub_7f72185a[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 160] = 64
    mem[ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 224] = sub_7f72185a[address(arg1)].length
    mem[ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 256 len ceil32(sub_7f72185a[address(arg1)].length)] = mem[128 len ceil32(sub_7f72185a[address(arg1)].length)]
    mem[ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 192] = sub_7f72185a[address(arg1)].length + 96
    mem[sub_7f72185a[address(arg1)].length + ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 256] = sub_7f72185a[address(arg1)][1].length
    mem[sub_7f72185a[address(arg1)].length + ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 288 len ceil32(sub_7f72185a[address(arg1)][1].length)] = mem[ceil32(sub_7f72185a[address(arg1)].length) + 160 len ceil32(sub_7f72185a[address(arg1)][1].length)]
    if not sub_7f72185a[address(arg1)][1].length % 32:
        return Array(len=sub_7f72185a[address(arg1)].length, data=mem[128 len ceil32(sub_7f72185a[address(arg1)].length)], mem[(2 * ceil32(sub_7f72185a[address(arg1)].length)) + ceil32(sub_7f72185a[address(arg1)][1].length) + 256 len sub_7f72185a[address(arg1)][1].length + sub_7f72185a[address(arg1)].length + -ceil32(sub_7f72185a[address(arg1)].length) + 32]), 
               sub_7f72185a[address(arg1)].length + 96
    mem[floor32(sub_7f72185a[address(arg1)][1].length) + sub_7f72185a[address(arg1)].length + ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + 288] = mem[floor32(sub_7f72185a[address(arg1)][1].length) + sub_7f72185a[address(arg1)].length + ceil32(sub_7f72185a[address(arg1)].length) + ceil32(sub_7f72185a[address(arg1)][1].length) + -sub_7f72185a[address(arg1)][1].length % 32 + 320 len sub_7f72185a[address(arg1)][1].length % 32]
    return Array(len=sub_7f72185a[address(arg1)].length, data=mem[128 len ceil32(sub_7f72185a[address(arg1)].length)], mem[(2 * ceil32(sub_7f72185a[address(arg1)].length)) + ceil32(sub_7f72185a[address(arg1)][1].length) + 256 len floor32(sub_7f72185a[address(arg1)][1].length) + sub_7f72185a[address(arg1)].length + -ceil32(sub_7f72185a[address(arg1)].length) + 64]), 
           sub_7f72185a[address(arg1)].length + 96
}

function register(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if msg.sender != tx.origin:
        revert with 0, 
                    32,
                    33,
                    0xfe4f6e6c7920454f41206d61792072656769737465722061732047756172646961,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 261 len 31]
    if arg1.length <= 0:
        revert with 0, 'Please provide a valid name'
    if arg2.length <= 0:
        revert with 0, 'Please provide a valid website'
    if sub_7f72185a[address(msg.sender)].length > 0:
        if msg.value:
            revert with 0, 
                        32,
                        60,
                        0x74477561726469616e20697320616c726561647920726567697374657265642c206e6f206e65656420666f722061207365636f6e64206465706f7369,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len 4]
        emit 0x3f895d1a: msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = sub_7f72185a[address(msg.sender)].field_512
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = sub_7f72185a[address(msg.sender)].field_768
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = block.number
        sub_7f72185a[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        sub_7f72185a[address(msg.sender)][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    else:
        if registrationDeposit != msg.value:
            revert with 0, 
                        32,
                        45,
                        0x6e506c656173652070726f766964652074686520657861637420726567697374726174696f6e206465706f7369,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 273 len 19]
        sub_f560c734.length++
        address(sub_f560c734[sub_f560c734.length]) = msg.sender
        emit GuardianAdded(msg.sender);
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = sub_f560c734.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = block.number
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = block.number
        sub_7f72185a[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        sub_7f72185a[address(msg.sender)][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        sub_7f72185a[address(msg.sender)].field_512 = sub_f560c734.length
        sub_7f72185a[address(msg.sender)].field_768 = block.number
    sub_7f72185a[address(msg.sender)].field_1024 = block.number
}



}
