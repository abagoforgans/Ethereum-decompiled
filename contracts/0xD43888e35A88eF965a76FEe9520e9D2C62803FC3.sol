contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2)
#
address stor0;
array of address participants;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 balance;
mapping of struct sub_5ad0b75f;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint256 stor7;
uint256 stor8;
uint8 stor9;

function participant(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function participants(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < participants.length
    return participants[arg1]
}

function participantsLength() payable {
    return participants.length
}

function sub_5ad0b75f(?) payable {
    require calldata.size - 4 >= 32
    return sub_5ad0b75f[arg1].field_0, sub_5ad0b75f[arg1].field_256
}

function manager(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function dissolved() payable {
    return bool(stor9)
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    return balance[arg1]
}

function _fallback() payable {
    revert
}

function policy() payable {
    require uint8(stor6.field_0) <= 1
    require uint8(stor6.field_8) <= 1
    require uint8(stor6.field_16) <= 1
    return uint8(stor6.field_0), uint8(stor6.field_0), uint8(stor6.field_0), stor7, stor8
}

function sub_7976b928(?) payable {
    require calldata.size - 4 >= 32
    require not stor9
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor0 = arg1
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor9
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require stor2[address(msg.sender)]
    stor2[address(arg1)] = 1
    emit ManagerAdded(arg1);
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor9
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require stor2[address(msg.sender)]
    stor2[address(arg1)] = 0
    emit ManagerRemoved(arg1);
}

function addParticipant(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor9
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor3[address(arg1)] = 1
    participants.length++
    participants[participants.length] = arg1
    emit ParticipantAdded(arg1);
}

function removeParticipant(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor9
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require stor2[address(msg.sender)]
    if stor3[address(arg1)]:
        idx = 0
        while idx < participants.length:
            mem[0] = 1
            if participants[idx] != arg1:
                idx = idx + 1
                continue 
}

function dissolve() payable {
    require not stor9
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require stor2[address(msg.sender)]
    idx = 0
    while idx < participants.length:
        mem[0] = participants[idx]
        mem[32] = 4
        if balance[stor1[idx]] > 0:
            require idx < participants.length
            mem[32] = 4
            balance[stor1[idx]] = 0
            mem[0] = 1
            mem[100] = this.address
            mem[132] = participants[idx]
            mem[164] = balance[stor1[idx]]
            require ext_code.size(stor0)
            call stor0.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), participants[idx], balance[stor1[idx]]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
    stor9 = 1
}

function contribute(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor9
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require stor3[address(msg.sender)]
    require uint8(stor6.field_16) <= 1
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(stor6.field_16):
        if not ext_call.return_data[0]:
            require stor2[address(msg.sender)]
    if not ext_call.return_data[0]:
        require arg1 == msg.sender
    require not stor9
    require arg2 > 0
    require ext_code.size(stor0)
    call stor0.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balance[address(arg1)] += arg2
}

function sub_14d37274(?) payable {
    idx = 0
    s = 0
    while idx < participants.length:
        mem[0] = participants[idx]
        mem[32] = 4
        idx = idx + 1
        s = s + balance[stor1[idx]]
        continue 
    return (s * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length)
}



}
