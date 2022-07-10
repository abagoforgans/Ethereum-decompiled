contract main {




// =====================  Runtime code  =====================


address tokenOWLAddress;
address tokenGNOAddress;
mapping of uint256 lockedGNO;
uint256 endTime;
uint256 multiplier;

function multiplier() payable {
    return multiplier
}

function endTime() payable {
    return endTime
}

function tokenOWL() payable {
    return tokenOWLAddress
}

function lockedGNO(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockedGNO[arg1]
}

function tokenGNO() payable {
    return tokenGNOAddress
}

function _fallback() payable {
    revert
}

function withdrawGNO() payable {
    if block.timestamp <= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe49742773206e6f7420616c6c6f77656420746f20776974686472617720647572696e6720746865206c6f636b696e672074696d,
                    mem[216 len 12]
    require ext_code.size(tokenGNOAddress)
    call tokenGNOAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockedGNO[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The GNO withdrawal must succeed'
    lockedGNO[msg.sender] = 0
}

function lockGNO(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp > endTime:
        revert with 0, 'The locking period has ended'
    require ext_code.size(tokenGNOAddress)
    call tokenGNOAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The GNO transfer must succeed'
    require lockedGNO[msg.sender] + arg1 >= lockedGNO[msg.sender]
    lockedGNO[msg.sender] += arg1
    if multiplier:
        require multiplier
        require arg1 * multiplier / multiplier == arg1
    require ext_code.size(tokenOWLAddress)
    call tokenOWLAddress.mintOWL(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, multiplier * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
