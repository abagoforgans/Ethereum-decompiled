contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c55fd5b(?)
#
address stor0;
address makerAddress;
array of address participants;
mapping of uint8 stor3;
mapping of uint256 balances;
uint8 stor5;

function participant(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function participants(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < participants.length
    return participants[arg1]
}

function participantsLength() payable {
    return participants.length
}

function maker() payable {
    return makerAddress
}

function dissolved() payable {
    return bool(stor5)
}

function _fallback() payable {
    revert
}

function sub_7976b928(?) payable {
    require calldata.size - 4 >= 32
    require not stor5
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

function addParticipant(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor5
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require msg.sender == makerAddress
    stor3[address(arg1)] = 1
    participants.length++
    participants[participants.length] = arg1
}

function contribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor5
    require bool(stor3[address(msg.sender)]) == 1
    require not stor5
    require arg1 > 0
    require ext_code.size(stor0)
    call stor0.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balances[address(msg.sender)] += arg1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor5
    require bool(stor3[address(msg.sender)]) == 1
    require balances[address(msg.sender)] >= arg1
    require arg1 > 0
    require ext_code.size(stor0)
    call stor0.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balances[address(msg.sender)] -= arg1
}

function removeParticipant(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor5
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require msg.sender == makerAddress
    if stor3[address(arg1)]:
        idx = 0
        while idx < participants.length:
            mem[0] = 2
            if participants[idx] != arg1:
                idx = idx + 1
                continue 
}

function sub_5faf5e57(?) payable {
    require calldata.size - 4 >= 64
    require not stor5
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not stor5
    require arg2 > 0
    require ext_code.size(stor0)
    call stor0.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balances[address(arg1)] += arg2
}

function sub_016dc369(?) payable {
    require calldata.size - 4 >= 64
    require not stor5
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not stor5
    require bool(stor3[address(arg1)]) == 1
    require balances[address(arg1)] >= arg2
    require arg2 > 0
    require ext_code.size(stor0)
    call stor0.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balances[address(arg1)] -= arg2
}

function dissolve() payable {
    require not stor5
    require ext_code.size(stor0)
    call stor0.isManager(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require msg.sender == makerAddress
    idx = 0
    while idx < participants.length:
        mem[0] = participants[idx]
        mem[32] = 4
        if balances[stor2[idx]] > 0:
            require idx < participants.length
            mem[32] = 4
            balances[stor2[idx]] = 0
            mem[0] = 2
            mem[100] = this.address
            mem[132] = participants[idx]
            mem[164] = balances[stor2[idx]]
            require ext_code.size(stor0)
            call stor0.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), participants[idx], balances[stor2[idx]]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
    stor5 = 1
}

function sub_14d37274(?) payable {
    idx = 0
    s = 0
    while idx < participants.length:
        mem[0] = participants[idx]
        mem[32] = 4
        idx = idx + 1
        s = s + balances[stor2[idx]]
        continue 
    return (s * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length * participants.length)
}



}
