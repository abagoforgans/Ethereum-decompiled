contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;
uint256 stor3;
mapping of struct vestingAmount;

function vestingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_256
}

function releaseTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_0
}

function beneficiary(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_512
}

function vestings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_0, 
           vestingAmount[arg1].field_256,
           vestingAmount[arg1].field_512,
           bool(vestingAmount[arg1].field_672)
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeVesting(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not vestingAmount[arg1].field_512:
        revert with 0, 'Invalid vesting id'
    if vestingAmount[arg1].field_672:
        revert with 0, 'Vesting already released'
    vestingAmount[arg1].field_672 = 1
    require vestingAmount[arg1].field_256 <= stor2
    stor2 -= vestingAmount[arg1].field_256
    emit TokenVestingRemoved(vestingAmount[arg1].field_256, arg1, vestingAmount[arg1].field_512);
}

function addVesting(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid beneficiary address'
    require arg3 + stor2 >= stor2
    stor2 += arg3
    require stor3 + 1 >= stor3
    stor3++
    vestingAmount[stor3 + 1].field_0 = arg2
    vestingAmount[stor3 + 1].field_256 = arg3
    vestingAmount[stor3 + 1].field_512 = arg1
    vestingAmount[stor3 + 1].field_672 = 0
    emit TokenVestingAdded(arg3, stor3, arg1);
}

function retrieveExcessTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor2 <= ext_call.return_data[0]
    if arg1 > ext_call.return_data[0] - stor2:
        revert with 0, 'Insufficient balance'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function release(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not vestingAmount[arg1].field_512:
        revert with 0, 'Invalid vesting id'
    if vestingAmount[arg1].field_672:
        revert with 0, 'Vesting already released'
    if block.timestamp < vestingAmount[arg1].field_0:
        revert with 0, 'Tokens have not vested yet'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if vestingAmount[arg1].field_256 > ext_call.return_data[0]:
        revert with 0, 'Insufficient balance'
    vestingAmount[arg1].field_672 = 1
    require vestingAmount[arg1].field_256 <= stor2
    stor2 -= vestingAmount[arg1].field_256
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args vestingAmount[arg1].field_512, vestingAmount[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenVestingReleased(vestingAmount[arg1].field_256, arg1, vestingAmount[arg1].field_512);
}



}
