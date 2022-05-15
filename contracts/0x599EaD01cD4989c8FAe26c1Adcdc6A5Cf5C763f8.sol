contract main {




// =====================  Runtime code  =====================


const RATE = 1000


address owner;
address thisAddress;
array of uint256 lastaction;
uint256 raisedAmount;
uint256 available_tokens;
uint256 lasttokencount;
uint8 stor6;

function last_transfer_state() {
    return bool(stor6)
}

function lasttokencount() {
    return lasttokencount
}

function owner() {
    return owner
}

function lastaction() {
    return lastaction[0 len lastaction.length].field_0
}

function available_tokens() {
    return available_tokens
}

function raisedAmount() {
    return raisedAmount
}

function thisAddress() {
    return thisAddress
}

function kill() {
    if owner != msg.sender:
    require ext_code.size(0x80248b05a810f685b12c78e51984f808293e57d3)
    call 0x80248b05a810f685b12c78e51984f808293e57d3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0x80248b05a810f685b12c78e51984f808293e57d3)
    call 0x80248b05a810f685b12c78e51984f808293e57d3.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(owner)
}

function owner_withdraw() {
    if msg.sender == owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        bool(lastaction.length) = 0
        lastaction.length.field_1 = 8
        lastaction.length.field_8 = 'Withdraw' / 256
        idx = 0
        while lastaction.length + 31 / 32 > idx:
            lastaction[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function _fallback() payable {
    require msg.value >= 125 * 10^13
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    require ext_code.size(0x80248b05a810f685b12c78e51984f808293e57d3)
    call 0x80248b05a810f685b12c78e51984f808293e57d3.0x70a08231 with:
         gas gas_remaining wei
        args thisAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    available_tokens = ext_call.return_data[0]
    require available_tokens >= 1000 * msg.value
    lasttokencount = 1000 * msg.value
    require raisedAmount + msg.value >= raisedAmount
    raisedAmount += msg.value
    require ext_code.size(0x80248b05a810f685b12c78e51984f808293e57d3)
    call 0x80248b05a810f685b12c78e51984f808293e57d3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1000 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6 = uint8(bool(ext_call.return_data[0]))
}



}
