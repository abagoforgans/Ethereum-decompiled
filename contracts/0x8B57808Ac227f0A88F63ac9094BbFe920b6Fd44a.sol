contract main {




// =====================  Runtime code  =====================


#
#  - join(address arg1)
#
address sub_801f1c7fAddress;
address stor1;
array of struct sub_939fcd03;
mapping of address inviter;
uint8 sub_98e7c138;
uint256 joinFee;
uint256 sub_d6860bc0;
uint256 sub_34b85408;
uint8 closed;

function sub_34b85408(?) payable {
    return sub_34b85408
}

function closed() payable {
    return bool(closed)
}

function sub_801f1c7f(?) payable {
    return sub_801f1c7fAddress
}

function sub_939fcd03(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_939fcd03[arg1].field_0
    return address(sub_939fcd03[arg1][arg2].field_0)
}

function sub_98e7c138(?) payable {
    return sub_98e7c138
}

function sub_d6860bc0(?) payable {
    return sub_d6860bc0
}

function inviter(address arg1) payable {
    require calldata.size - 4 >= 32
    return inviter[arg1]
}

function sub_f5c8b200(?) payable {
    require calldata.size - 4 >= 32
    return sub_939fcd03[address(arg1)].field_0
}

function joinFee() payable {
    return joinFee
}

function _fallback() payable {
    revert
}

function sub_a2029f68(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    sub_34b85408 = arg1
    return 1
}

function sub_d5412166(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    sub_d6860bc0 = arg1
    return 1
}

function setJoinFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    joinFee = arg1
    return 1
}

function setClosed(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    closed = uint8(arg1)
    return 1
}

function sub_fea43dd9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require arg1 <= 100
    sub_98e7c138 = arg1
    return 1
}

function sub_1aa77f2f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_939fcd03[address(arg1)].field_0:
        mem[(32 * sub_939fcd03[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_939fcd03[address(arg1)].field_0) + 160] = sub_939fcd03[address(arg1)].field_0
        mem[(32 * sub_939fcd03[address(arg1)].field_0) + 192 len floor32(sub_939fcd03[address(arg1)].field_0)] = mem[128 len floor32(sub_939fcd03[address(arg1)].field_0)]
        return memory
          from (32 * sub_939fcd03[address(arg1)].field_0) + 128
           len (96 * sub_939fcd03[address(arg1)].field_0) + 64
    mem[128] = address(sub_939fcd03[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * sub_939fcd03[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = address(sub_939fcd03[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_939fcd03[address(arg1)].field_0) + 192 len floor32(sub_939fcd03[address(arg1)].field_0)] = mem[128 len floor32(sub_939fcd03[address(arg1)].field_0)]
    return Array(len=sub_939fcd03[address(arg1)].field_0, data=mem[128 len floor32(sub_939fcd03[address(arg1)].field_0)], mem[(32 * sub_939fcd03[address(arg1)].field_0) + floor32(sub_939fcd03[address(arg1)].field_0) + 192 len (32 * sub_939fcd03[address(arg1)].field_0) - floor32(sub_939fcd03[address(arg1)].field_0)]), 
}

function sub_030f0078(?) payable {
    if not inviter[msg.sender]:
        revert with 0, 'Not join.'
    if inviter[msg.sender] != inviter[address(msg.sender)]:
        revert with 0, 'invalid inviter'
    idx = 0
    while idx < sub_939fcd03[stor3[msg.sender]].field_0:
        mem[0] = sha3(inviter[msg.sender], 2)
        if address(sub_939fcd03[stor3[msg.sender]][idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if idx >= sub_939fcd03[stor3[msg.sender]].field_0:
            revert with 0, 'invalid invitee'
        inviter[address(msg.sender)] = 0
        require sub_939fcd03[stor3[msg.sender]].field_0 - 1 < sub_939fcd03[stor3[msg.sender]].field_0
        require idx < sub_939fcd03[stor3[msg.sender]].field_0
        address(sub_939fcd03[stor3[msg.sender]][idx].field_0) = address(sub_939fcd03[stor3[msg.sender]][sub_939fcd03[stor3[msg.sender]].field_0].field_0)
        require sub_939fcd03[stor3[msg.sender]].field_0 - 1 < sub_939fcd03[stor3[msg.sender]].field_0
        address(sub_939fcd03[stor3[msg.sender]][sub_939fcd03[stor3[msg.sender]].field_0].field_0) = 0
        sub_939fcd03[stor3[msg.sender]].field_0--
        if sub_939fcd03[stor3[msg.sender]].field_0 > sub_939fcd03[stor3[msg.sender]].field_0 - 1:
            idx = sub_939fcd03[stor3[msg.sender]].field_0 + sha3(sha3(inviter[msg.sender], 2)) - 1
            while sha3(sha3(inviter[msg.sender], 2)) + sub_939fcd03[stor3[msg.sender]].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require ext_code.size(sub_801f1c7fAddress)
        call sub_801f1c7fAddress.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, sub_d6860bc0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x8d87e5fc: msg.sender, inviter[msg.sender]
        return 1
    revert with 0, 'invalid invitee'
}

function sub_b7ea2777(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid address.'
    if inviter[address(arg1)] != msg.sender:
        revert with 0, 'invalid inviter'
    idx = 0
    while idx < sub_939fcd03[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 2)
        if address(sub_939fcd03[address(msg.sender)][idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx >= sub_939fcd03[address(msg.sender)].field_0:
            revert with 0, 'invalid invitee'
        inviter[address(arg1)] = 0
        require sub_939fcd03[address(msg.sender)].field_0 - 1 < sub_939fcd03[address(msg.sender)].field_0
        require idx < sub_939fcd03[address(msg.sender)].field_0
        address(sub_939fcd03[address(msg.sender)][idx].field_0) = address(sub_939fcd03[address(msg.sender)][sub_939fcd03[address(msg.sender)].field_0].field_0)
        require sub_939fcd03[address(msg.sender)].field_0 - 1 < sub_939fcd03[address(msg.sender)].field_0
        address(sub_939fcd03[address(msg.sender)][sub_939fcd03[address(msg.sender)].field_0].field_0) = 0
        sub_939fcd03[address(msg.sender)].field_0--
        if sub_939fcd03[address(msg.sender)].field_0 > sub_939fcd03[address(msg.sender)].field_0 - 1:
            idx = sub_939fcd03[address(msg.sender)].field_0 + sha3(sha3(address(msg.sender), 2)) - 1
            while sha3(sha3(address(msg.sender), 2)) + sub_939fcd03[address(msg.sender)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require ext_code.size(sub_801f1c7fAddress)
        call sub_801f1c7fAddress.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, sub_34b85408
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'lack of FDS.'
        emit 0xca1b0466: msg.sender, arg1
        return 1
    revert with 0, 'invalid invitee'
}



}
