contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1; offset 1
uint256 totalPower;
uint256 sub_d6740cdb;
mapping of uint256 powerOf;
mapping of uint256 sub_6530735e;
mapping of uint8 stor5;
mapping of uint256 stor6;
address owner;
address tokenAddress;
array of struct stor9;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;

function powerOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return powerOf[address(arg1)]
}

function sub_6530735e(?) payable {
    require calldata.size - 4 >= 32
    return sub_6530735e[arg1]
}

function isCompleted(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function sub_d6740cdb(?) payable {
    return sub_d6740cdb
}

function totalPower() payable {
    return totalPower
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (owner == arg1)
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'owner_access'
    owner = arg1
    emit OwnershipTransferred(arg1, owner);
}

function addVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'owner_access'
    if not arg1:
        revert with 0, 'voter_req'
    if powerOf[address(arg1)]:
        revert with 0, 'exists_not'
    powerOf[address(arg1)] = 1
    require totalPower + 1 >= totalPower
    totalPower++
}

function removeVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'owner_access'
    if not arg1:
        revert with 0, 'voter_req'
    if not powerOf[address(arg1)]:
        revert with 0, 'exists_not'
    require powerOf[address(arg1)] <= totalPower
    totalPower -= powerOf[address(arg1)]
    powerOf[address(arg1)] = 0
}

function sub_b9f05f2f(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'owner_access'
    if not arg1:
        revert with 0, 'voter_req'
    if powerOf[address(arg1)]:
        revert with 0, 'exists_not'
    if arg2 <= 0:
        revert with 0, 'votes_gt'
    powerOf[address(arg1)] = arg2
    require arg2 + totalPower >= totalPower
    totalPower += arg2
}

function revoke(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not powerOf[msg.sender]:
        revert with 0, 'voter_access'
    if stor5[arg1]:
        revert with 0, 'completed_eq'
    if arg1 <= 0:
        revert with 0, 'n_gt'
    if arg1 > sub_d6740cdb:
        revert with 0, 'n_lte'
    if not stor6[arg1][msg.sender]:
        revert with 0, 'givenVotes_ok'
    require stor6[arg1][msg.sender] <= sub_6530735e[arg1]
    sub_6530735e[arg1] -= stor6[arg1][msg.sender]
    stor6[arg1][msg.sender] = 0
    emit 0x64fe3672: msg.sender, arg1, stor6[arg1][msg.sender]
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not powerOf[msg.sender]:
        revert with 0, 'voter_access'
    if stor5[arg1]:
        revert with 0, 'completed_eq'
    if arg1 <= 0:
        revert with 0, 'n_gt'
    if arg1 > sub_d6740cdb:
        revert with 0, 'n_lte'
    stor0++
    if stor6[arg1][msg.sender]:
        revert with 0, 'givenVotes_eq'
    require not stor5[arg1]
    require powerOf[msg.sender] + sub_6530735e[arg1] >= sub_6530735e[arg1]
    sub_6530735e[arg1] += powerOf[msg.sender]
    emit 0x7fceb43e: msg.sender, arg1, powerOf[msg.sender]
    stor6[arg1][msg.sender] = powerOf[msg.sender]
    if stor1 + 1 <= sub_6530735e[arg1]:
        stor5[arg1] = 1
        require arg1 - 1 < stor9.length
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor9[arg1 - 1].field_256 > ext_call.return_data[0]:
            revert with 0, 'amount_enough'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor9[arg1 - 1].field_0, stor9[arg1 - 1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transferred'
        emit Transferred(stor9[arg1 - 1].field_0, stor9[arg1 - 1].field_256);
    require stor0 + 1 == stor0
}

function proposeTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not powerOf[msg.sender]:
        revert with 0, 'voter_access'
    stor0++
    stor9.length++
    stor9[stor9.length].field_0 = arg1
    stor6E15[stor9.length] = arg2
    if stor9.length <= sub_d6740cdb:
        revert with 0, 'n_gt'
    if sub_6530735e[stor9.length]:
        revert with 0, 'votes_eq'
    sub_d6740cdb = stor9.length
    emit ProposalAdded(msg.sender, stor9.length);
    require powerOf[msg.sender] + sub_6530735e[stor9.length] >= sub_6530735e[stor9.length]
    sub_6530735e[stor9.length] += powerOf[msg.sender]
    emit 0x7fceb43e: msg.sender, stor9.length, powerOf[msg.sender]
    stor6[stor9.length][msg.sender] = powerOf[msg.sender]
    if stor1 + 1 <= sub_6530735e[stor9.length]:
        stor5[stor9.length] = 1
        require stor9.length - 1 < stor9.length
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor9[stor9.length - 1].field_256 > ext_call.return_data[0]:
            revert with 0, 'amount_enough'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor9[stor9.length - 1].field_0, stor9[stor9.length - 1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transferred'
        emit Transferred(stor9[stor9.length - 1].field_0, stor9[stor9.length - 1].field_256);
    require stor0 + 1 == stor0
    return stor9.length
}



}
