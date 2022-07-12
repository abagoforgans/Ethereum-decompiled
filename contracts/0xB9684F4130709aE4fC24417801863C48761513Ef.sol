contract main {




// =====================  Runtime code  =====================


address admin_address;
address account_address;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 air_drop_switch;
uint256 air_drop_rate;
address air_drop_address;
uint256 air_drop_count;
mapping of uint256 stor13;
uint8 air_drop_range;
uint256 air_drop_range_start;
uint256 air_drop_range_end;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function air_drop_switch() {
    return bool(air_drop_switch)
}

function air_drop_range() {
    return bool(air_drop_range)
}

function decimals() {
    return decimals
}

function air_drop_address() {
    return air_drop_address
}

function air_drop_rate() {
    return air_drop_rate
}

function account_address() {
    return account_address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function air_drop_range_end() {
    return air_drop_range_end
}

function air_drop_count() {
    return air_drop_count
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function air_drop_range_start() {
    return air_drop_range_start
}

function admin_address() {
    return admin_address
}

function setAirDrop(bool arg1) {
    require msg.sender == admin_address
    air_drop_switch = uint8(arg1)
    return 1
}

function setAdmin(address arg1) {
    require msg.sender == admin_address
    require arg1
    admin_address = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withDraw() {
    require msg.sender == admin_address
    require eth.balance(this.address) > 0
    call admin_address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function airDrop(address arg1) payable {
    require air_drop_switch
    require arg1
    if air_drop_range:
        require block.timestamp >= air_drop_range_start
        require block.timestamp <= air_drop_range_end
    if air_drop_count > 0:
        require stor13[address(arg1)] <= air_drop_count
    if not 10^decimals:
        require balanceOf[stor11] < 0
        revert
    require 10^decimals
    require 10^decimals * air_drop_rate / 10^decimals == air_drop_rate
    require balanceOf[stor11] >= 10^decimals * air_drop_rate
    require 10^decimals * air_drop_rate > 0
    require balanceOf[stor11] + balanceOf[address(arg1)] >= balanceOf[stor11]
    require 10^decimals * air_drop_rate <= balanceOf[stor11]
    balanceOf[stor11] += -1 * 10^decimals * air_drop_rate
    require balanceOf[address(arg1)] + (10^decimals * air_drop_rate) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^decimals * air_drop_rate
    require balanceOf[stor11] + balanceOf[address(arg1)] >= balanceOf[stor11]
    require balanceOf[stor11] + balanceOf[address(arg1)] == balanceOf[stor11] + balanceOf[address(arg1)]
    emit 0x7273e910: msg.value, air_drop_rate, msg.sender, arg1
    return 1
}

function _fallback() payable {
    require air_drop_switch
    require msg.sender
    if air_drop_range:
        require block.timestamp >= air_drop_range_start
        require block.timestamp <= air_drop_range_end
    if air_drop_count > 0:
        require stor13[address(msg.sender)] <= air_drop_count
    if not 10^decimals:
        require balanceOf[stor11] < 0
        revert
    require 10^decimals
    require 10^decimals * air_drop_rate / 10^decimals == air_drop_rate
    require balanceOf[stor11] >= 10^decimals * air_drop_rate
    require 10^decimals * air_drop_rate > 0
    require balanceOf[stor11] + balanceOf[address(msg.sender)] >= balanceOf[stor11]
    require 10^decimals * air_drop_rate <= balanceOf[stor11]
    balanceOf[stor11] += -1 * 10^decimals * air_drop_rate
    require balanceOf[address(msg.sender)] + (10^decimals * air_drop_rate) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^decimals * air_drop_rate
    require balanceOf[stor11] + balanceOf[address(msg.sender)] >= balanceOf[stor11]
    require balanceOf[stor11] + balanceOf[address(msg.sender)] == balanceOf[stor11] + balanceOf[address(msg.sender)]
    emit 0x7273e910: msg.value, air_drop_rate, msg.sender, msg.sender
}



}
