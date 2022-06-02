contract main {




// =====================  Runtime code  =====================


address managerAddress;
uint256 ticket_price;
uint8 stor2;
uint256 stor2; offset 2
uint256 sub_3400f292;
uint256 final_price;
array of struct players;

function final_price() {
    return final_price
}

function ticket_price() {
    return ticket_price
}

function sub_3400f292(?) {
    return sub_3400f292
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
    stor2.field_0 % 4 = 0
    Mask(254, 0, stor2.field_2) = Mask(254, 0, arg1)
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

function sub_9566525e(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == managerAddress
    idx = 0
    while idx < arg3:
        _5 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5] = arg1
        mem[_5 + 32] = arg2
        players.length++
        mem[0] = 4
        players[players.length].field_0 = arg1
        players[players.length].field_256 = arg2
        idx = idx + 1
        continue 
}

function sub_0b4ee703(?) payable {
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
        mem[0] = 4
        players[players.length].field_0 = msg.sender
        players[players.length].field_256 = arg1
        idx = idx + 1
        continue 
}

function sub_d5be3661(?) payable {
    mem[64] = 96
    final_price = 10^15 * 4 * ticket_price - 1
    require msg.value > final_price
    idx = 0
    while idx < 4:
        _5 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5] = msg.sender
        mem[_5 + 32] = 0
        players.length++
        mem[0] = 4
        players[players.length].field_0 = msg.sender
        players[players.length].field_256 = 0
        players[players.length].field_512 = 0
        idx = idx + 1
        continue 
}



}
