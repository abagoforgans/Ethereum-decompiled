contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 eth_balance;
address tokenAddress;
mapping of uint8 contributor_rounds;
array of struct snapshots;
uint8 rounds; offset 160
address stor5;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function eth_balance() {
    return eth_balance
}

function contributor_rounds(address arg1) {
    return contributor_rounds[arg1]
}

function rounds() {
    return rounds
}

function snapshots(uint256 arg1) {
    require arg1 < snapshots.length
    return snapshots[arg1].field_0, snapshots[arg1].field_256
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function set_contract_address(address arg1) {
    require msg.sender == stor5
    stor0 = arg1
}

function set_token_address(address arg1) {
    require msg.sender == stor5
    require arg1
    tokenAddress = arg1
}

function emergency_withdraw(address arg1) {
    require msg.sender == stor5
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function set_tokens_received() {
    require msg.sender == stor5
    idx = 0
    s = 0
    while uint8(idx) < snapshots.length:
        mem[0] = 4
        idx = idx + 1
        s = snapshots[2 * uint8(idx)].field_0 + s
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] - (stor[(2 * uint8(None)) + _11] * None)
    snapshots.length++
    snapshots[snapshots.length].field_0 = ext_call.return_data[0] - (stor[(2 * uint8(None)) + _11] * None)
    stor8A35[stor4.length] = eth_balance
    rounds = uint8(rounds + 1)
}

function withdraw() {
    if contributor_rounds[msg.sender] < rounds:
        require ext_code.size(stor0)
        call stor0.balances_bonus(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require contributor_rounds[msg.sender] < snapshots.length
        require snapshots[stor3[msg.sender]].field_256
        snapshots[stor3[msg.sender]].field_0 -= ext_call.return_data[0] * snapshots[stor3[msg.sender]].field_0 / snapshots[stor3[msg.sender]].field_256
        snapshots[stor3[msg.sender]].field_256 -= ext_call.return_data[0]
        contributor_rounds[msg.sender] = uint8(contributor_rounds[msg.sender] + 1)
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * snapshots[stor3[msg.sender]].field_0 / snapshots[stor3[msg.sender]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}



}
