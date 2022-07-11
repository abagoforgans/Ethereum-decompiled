contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
array of struct stor2;

function getN() {
    return stor1.length
}

function _fallback() payable {
    revert
}

function sub_72f12a5d(?) payable {
    emit Reveal(msg.sender, Array(len=arg1.length, data=arg1[all]));
}

function commit(bytes arg1) payable {
    emit 0xd92395da: msg.sender, Array(len=arg1.length, data=arg1[all])
}

function sub_bc1c0a58(?) payable {
    emit 0xd92395da: msg.sender, Array(len=arg1.length, data=arg1[all])
    emit Reveal(msg.sender, Array(len=arg2.length, data=arg2[all]));
}

function getParty(uint256 arg1) {
    if arg1 >= stor1.length:
        return 0, 64, 0
    require arg1 < stor2.length
    mem[128] = stor2[arg1].field_0
    idx = 128
    s = 0
    while stor2[arg1].length + 96 > idx:
        mem[idx + 32] = stor2[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1[arg1]), Array(len=stor2[arg1].length, data=mem[128 len stor2[arg1].length])
}

function register(bytes arg1) payable {
    if 5 * 10^16 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        stor1.length++
        address(stor1[stor1.length]) = msg.sender
        stor2.length++
        stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        emit 0x4cf66f6f: stor1.length, msg.sender, Array(len=arg1.length, data=arg1[all])
}

function sub_bdebe437(?) payable {
    if msg.sender == stor0:
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            call address(stor1[idx]) with:
               value 5 * 10^16 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        stor1.length = 0
        idx = 0
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
        stor2.length = 0
        mem[0] = 2
        idx = 0
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
}

function sub_3f40521c(?) payable {
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[(32 * arg1.length) + ceil32(arg2.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + ceil32(arg2.length) + 288] = arg2.length
    mem[(64 * arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[(32 * arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x3da3e85b: msg.sender, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + arg2.length + -floor32(arg1.length) + 32]), (32 * arg1.length) + 128
    else:
        mem[floor32(arg2.length) + (64 * arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + (64 * arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit 0x3da3e85b: msg.sender, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + floor32(arg2.length) + -floor32(arg1.length) + 64]), (32 * arg1.length) + 128
}



}
