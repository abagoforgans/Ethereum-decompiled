contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1245]




// =====================  Runtime code  =====================


array of address sub_a603ac6d;

function sub_a603ac6d(?) payable {
    require arg2 < uint256(sub_a603ac6d[arg1])
    return address(sub_a603ac6d[arg1][arg2])
}

function _fallback() payable {
  stop
}

function sub_221e2efc(?) payable {
    call arg1.validate(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_9a9bed58(?) payable {
    call arg1.validate(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    mem[0] = arg2
    mem[32] = 0
    idx = 0
    while idx < uint256(sub_a603ac6d[address(arg2)]):
        require idx < uint256(stor[sha3(mem[0 len 64])])
        if address(stor[sha3(sha3(mem[0 len 64])) + idx]) != arg3:
            mem[0] = arg2
            mem[32] = 0
            idx = idx + 1
            continue 
        require idx < uint256(sub_a603ac6d[address(arg2)])
        address(sub_a603ac6d[address(arg2)][idx]) = 0
        return 1
    return 0
}

function sub_12627c59(?) payable {
    call arg1.validate(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    mem[0] = arg2
    mem[32] = 0
    idx = 0
    while idx < uint256(sub_a603ac6d[address(arg2)]):
        require idx < uint256(stor[sha3(mem[0 len 64])])
        mem[0] = sha3(mem[0 len 64])
        if address(stor[sha3(mem[0]) + idx]) == arg3:
            return 0
        mem[0] = arg2
        mem[32] = 0
        idx = idx + 1
        continue 
    uint256(sub_a603ac6d[address(arg2)])++
    if not uint256(sub_a603ac6d[address(arg2)]) <= uint256(sub_a603ac6d[address(arg2)]) + 1:
        idx = uint256(sub_a603ac6d[address(arg2)]) + 1
        while uint256(sub_a603ac6d[address(arg2)]) > idx:
            uint256(sub_a603ac6d[address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
    require uint256(sub_a603ac6d[address(arg2)]) < uint256(sub_a603ac6d[address(arg2)])
    uint256(sub_a603ac6d[address(arg2)][uint256(sub_a603ac6d[address(arg2)])]) = arg3 or Mask(96, 160, uint256(sub_a603ac6d[address(arg2)][uint256(sub_a603ac6d[address(arg2)])]))
    return 1
}

function sub_0ceed41c(?) payable {
    call arg1.validate(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    mem[0] = arg2
    mem[32] = 0
    idx = 0
    while idx < uint256(sub_a603ac6d[address(arg2)]):
        require idx < uint256(stor[sha3(mem[0 len 64])])
        mem[0] = sha3(mem[0 len 64])
        if address(stor[sha3(mem[0]) + idx]) != arg4:
            mem[0] = arg2
            mem[32] = 0
            idx = idx + 1
            continue 
        require idx < uint256(sub_a603ac6d[address(arg2)])
        call address(sub_a603ac6d[address(arg2)][idx]).0x8da5cb5b with:
             gas gas_remaining - 25050 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if arg2 != ext_call.return_data[12 len 20]:
            mem[0] = arg2
            mem[32] = 0
            idx = idx + 1
            continue 
        require idx < uint256(sub_a603ac6d[address(arg2)])
        address(sub_a603ac6d[address(arg2)][idx]) = 0
        uint256(sub_a603ac6d[arg3])++
        if not uint256(sub_a603ac6d[arg3]) <= uint256(sub_a603ac6d[arg3]) + 1:
            mem[0] = sha3(arg3, 0)
            idx = sha3(mem[0]) + uint256(sub_a603ac6d[arg3]) + 1
            while sha3(sha3(arg3, 0)) + uint256(sub_a603ac6d[arg3]) > idx:
                uint256(stor[idx]) = 0
                mem[0] = arg2
                mem[32] = 0
                idx = idx + 1
                continue 
        require uint256(sub_a603ac6d[arg3]) < uint256(sub_a603ac6d[arg3])
        uint256(sub_a603ac6d[arg3][uint256(sub_a603ac6d[arg3])]) = arg4 or Mask(96, 160, uint256(sub_a603ac6d[arg3][uint256(sub_a603ac6d[arg3])]))
        return 1
    return 0
}



}
