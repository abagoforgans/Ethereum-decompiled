contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of uint256 threshold;
mapping of uint256 sub_94b3e5a2;
array of struct stakes;

function threshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return threshold[arg1]
}

function stakes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakes[arg1].field_0
    return stakes[arg1][arg2].field_0
}

function owner() payable {
    return owner
}

function sub_94b3e5a2(?) payable {
    require calldata.size - 4 >= 32
    return sub_94b3e5a2[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_00fd0c4a(?) payable {
    require calldata.size - 4 >= 256
    require msg.sender == owner
    threshold[1] = arg1
    threshold[3] = arg3
    threshold[6] = arg5
    threshold[12] = arg7
    sub_94b3e5a2[1] = arg2
    sub_94b3e5a2[3] = arg4
    sub_94b3e5a2[6] = arg6
    sub_94b3e5a2[12] = arg8
}

function sub_f1a97ff0(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stakes[address(arg1)].field_0:
        require idx < stakes[address(arg1)].field_0
        require ext_code.size(stakes[address(arg1)][idx].field_0)
        staticcall stakes[address(arg1)][idx].field_0.0x15a1e966 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return 1
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
    return 0
}

function claim() payable {
    idx = 0
    s = 0
    while idx < stakes[address(msg.sender)].field_0:
        require idx < stakes[address(msg.sender)].field_0
        require ext_code.size(stakes[address(msg.sender)][idx].field_0)
        staticcall stakes[address(msg.sender)][idx].field_0.0x15a1e966 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require idx < stakes[address(msg.sender)].field_0
        mem[96] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stakes[address(msg.sender)][idx].field_0)
        call stakes[address(msg.sender)][idx].field_0.0x4e71d92d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = msg.sender
        mem[32] = 4
        idx = idx + 1
        s = 1
        continue 
    if s:
    revert
}

function getStakes(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stakes[address(arg1)].field_0:
        mem[(32 * stakes[address(arg1)].field_0) + 128] = 32
        mem[(32 * stakes[address(arg1)].field_0) + 160] = stakes[address(arg1)].field_0
        mem[(32 * stakes[address(arg1)].field_0) + 192 len floor32(stakes[address(arg1)].field_0)] = mem[128 len floor32(stakes[address(arg1)].field_0)]
        return memory
          from (32 * stakes[address(arg1)].field_0) + 128
           len (96 * stakes[address(arg1)].field_0) + 64
    mem[128] = stakes[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stakes[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stakes[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stakes[address(arg1)].field_0) + 192 len floor32(stakes[address(arg1)].field_0)] = mem[128 len floor32(stakes[address(arg1)].field_0)]
    return Array(len=stakes[address(arg1)].field_0, data=mem[128 len floor32(stakes[address(arg1)].field_0)], mem[(32 * stakes[address(arg1)].field_0) + floor32(stakes[address(arg1)].field_0) + 192 len (32 * stakes[address(arg1)].field_0) - floor32(stakes[address(arg1)].field_0)]), 
}

function sub_c3e7a86f(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stakes[address(arg1)].field_0:
        require idx < stakes[address(arg1)].field_0
        require ext_code.size(stakes[address(arg1)][idx].field_0)
        staticcall stakes[address(arg1)][idx].field_0.isClaimed() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require idx < stakes[address(arg1)].field_0
        require ext_code.size(stakes[address(arg1)][idx].field_0)
        staticcall stakes[address(arg1)][idx].field_0.0x80fad325 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return s
}

function sub_6a7bc78e(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stakes[address(arg1)].field_0:
        require idx < stakes[address(arg1)].field_0
        require ext_code.size(stakes[address(arg1)][idx].field_0)
        staticcall stakes[address(arg1)][idx].field_0.isClaimed() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require idx < stakes[address(arg1)].field_0
        require ext_code.size(stakes[address(arg1)][idx].field_0)
        staticcall stakes[address(arg1)][idx].field_0.principle() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return s
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != 1:
        if arg2 != 3:
            if arg2 != 6:
                require arg2 == 12
    require arg1 >= threshold[arg2]
    create contract with 0 wei
                    code: code.data[5472 len 1876], tokenAddress, msg.sender, arg1, arg1 * sub_94b3e5a2[arg2] / 10000, 30 * arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(create.new_address), arg1 * sub_94b3e5a2[arg2] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stakes[address(msg.sender)].field_0++
    stakes[address(msg.sender)][stakes[address(msg.sender)].field_0].field_0 = address(create.new_address)
    return address(create.new_address)
}



}
