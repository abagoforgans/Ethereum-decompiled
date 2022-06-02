contract main {




// =====================  Runtime code  =====================


address managerAddress;
uint256 ticket_price;
uint256 final_price;
array of struct players;

function final_price() {
    return final_price
}

function ticket_price() {
    return ticket_price
}

function manager() {
    return managerAddress
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1].field_0, players[arg1].field_256
}

function _fallback() payable {
    revert
}

function update_price(uint256 arg1) {
    require msg.sender == managerAddress
    ticket_price = arg1
    final_price = 10^15 * ticket_price
}

function sub_25aecfe0(?) {
    require msg.sender == managerAddress
    call managerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function join(address arg1, uint256 arg2) payable {
    mem[64] = 96
    final_price = (-1 * 10^15 * arg2) + (10^15 * ticket_price * arg2)
    require msg.value > final_price
    idx = 0
    while idx < arg2:
        _5 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5] = msg.sender
        mem[_5 + 32] = arg1
        players.length++
        mem[0] = 3
        players[players.length].field_0 = msg.sender
        players[players.length].field_256 = arg1
        idx = idx + 1
        continue 
}



}
