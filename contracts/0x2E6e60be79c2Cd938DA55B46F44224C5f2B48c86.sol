contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;

function owner() {
    return owner
}

function getUsersCount() {
    require msg.sender == owner
    return stor1.length
}

function removeContract() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function getTotalBalance() {
    require msg.sender == owner
    return eth.balance(this.address)
}

function sub_68a69681(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    require msg.value <= 84 * 10^15
    uint256(stor1[arg1].field_1024) += msg.value
}

function sub_3929a30b(?) payable {
    require msg.value <= 84 * 10^15
    idx = 0
    while idx < stor1.length:
        require stor1.length
        require idx < stor1.length
        mem[0] = 1
        uint256(stor1[idx].field_1024) += msg.value / stor1.length
        idx = idx + 1
        continue 
}

function sub_5c554f1d(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 < stor1.length
    require arg2 <= uint256(stor1[arg1].field_1024)
    uint256(stor1[arg1].field_1024) -= arg2
    call address(stor1[arg1].field_512) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_13ac986e(?) {
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < stor1.length:
        uint256(stor1[idx].field_1024) = 0
        mem[0] = 1
        call address(stor1[idx].field_512) with:
           value uint256(stor1[idx].field_1024) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = uint256(stor1[idx].field_1024)
        continue 
}

function sub_d4b31731(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    require msg.sender == owner
    stor1.length++
    if stor1.length <= stor1.length + 1:
        require stor1.length - 1 < stor1.length
        uint256(stor1[stor1.length].field_0) = stor1.length
        uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) - 4)][].field_0) = Array(len=arg1.length, data=arg1[all])
        require stor1.length - 1 < stor1.length
        uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) - 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    else:
        mem[0] = 1
        idx = (5 * stor1.length) + 5
        while sha3(1) + (5 * stor1.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            idx = idx + 5
            continue 
        require stor1.length - 1 < stor1.length
        uint256(stor1[stor1.length].field_0) = stor1.length
        uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) - 4)][].field_0) = Array(len=arg1.length, data=arg1[all])
        require stor1.length - 1 < stor1.length
        uint256(stor[sha3((5 * stor1.length) + ('name', 'stor1', 1) - 2)][].field_0) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require stor1.length - 1 < stor1.length
    address(stor1[stor1.length].field_0) = arg2
}

function users(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    mem[96] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[128] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 160
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 128] = stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length
    mem[0] = (5 * arg1) + sha3(1) + 3
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 3)].field_0)
    idx = ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160
    s = 0
    while ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 160] = uint256(stor1[arg1].field_0)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 224] = address(stor1[arg1].field_512)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 288] = uint256(stor1[arg1].field_1024)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 192] = 160
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 320] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)] = mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)]
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 256] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 192
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352] = stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 384 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length)] = mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length)]
    if not stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length % 32:
        return uint256(stor1[arg1].field_0), 
               Array(len=stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352 len stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 32]),
               address(stor1[arg1].field_512),
               stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 192,
               uint256(stor1[arg1].field_1024)
    mem[floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 384] = mem[floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + -stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length % 32 + 416 len stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length % 32]
    return uint256(stor1[arg1].field_0), 
           Array(len=stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352 len floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 64]),
           address(stor1[arg1].field_512),
           stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 192,
           uint256(stor1[arg1].field_1024)
}

function getUser(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < stor1.length
    mem[96] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[128] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 160
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 128] = stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length
    mem[0] = (5 * arg1) + sha3(1) + 3
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160] = uint256(stor[sha3((5 * arg1) + ('name', 'stor1', 1) + 3)].field_0)
    idx = ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160
    s = 0
    while ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor1', 1) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 160] = uint256(stor1[arg1].field_0)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 224] = address(stor1[arg1].field_512)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 288] = uint256(stor1[arg1].field_1024)
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 192] = 160
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 320] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)] = mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)]
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 256] = stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 192
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352] = stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length
    mem[stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 384 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length)] = mem[ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length)]
    if not stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length % 32:
        return uint256(stor1[arg1].field_0), 
               Array(len=stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352 len stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 32]),
               address(stor1[arg1].field_512),
               stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 192,
               uint256(stor1[arg1].field_1024)
    mem[floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 384] = mem[floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + -stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length % 32 + 416 len stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length % 32]
    return uint256(stor1[arg1].field_0), 
           Array(len=stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + 352 len floor32(stor[(5 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length) + 64]),
           address(stor1[arg1].field_512),
           stor[(5 * arg1) + ('name', 'stor1', 1) + 1].length + 192,
           uint256(stor1[arg1].field_1024)
}



}
