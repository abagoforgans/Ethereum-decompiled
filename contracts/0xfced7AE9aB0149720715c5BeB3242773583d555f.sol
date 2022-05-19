contract main {




// =====================  Runtime code  =====================


#
#  - sub_09da191b(?)
#  - sub_1260aca7(?)
#  - sub_3e2c08ef(?)
#  - sub_ddc834d1(?)
#
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 token_balance;
mapping of uint256 sub_4e61e2ed;
mapping of uint256 allowance;
uint256 stor8;
mapping of struct sub_763a198d;
array of address sub_98a3f6c6;
mapping of uint8 stor16;
array of uint256 stor99;

function name() {
    return name[0 len name.length]
}

function token_balance(address arg1) {
    return token_balance[arg1]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_4e61e2ed(?) {
    return sub_4e61e2ed[arg1]
}

function sub_52b6eb72(?) {
    return sub_98a3f6c6.length
}

function sub_763a198d(?) {
    require sub_763a198d[address(msg.sender)] <= 2
    return sub_763a198d[address(msg.sender)]
}

function owner() {
    return owner
}

function get_eth_balance(address arg1) {
    return sub_4e61e2ed[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_98a3f6c6(?) {
    require arg1 < sub_98a3f6c6.length
    return sub_98a3f6c6[arg1]
}

function get_token_balance(address arg1) {
    return token_balance[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_eb71b828(?) {
    require sub_763a198d[address(arg1)] <= 2
    return sub_763a198d[address(arg1)]
}

function greet_omar(uint256 arg1) {
    return stor[arg1 + 9][0 len stor[arg1 + 9].length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function set_master_exchange_rate(uint256 arg1) {
    require msg.sender == owner
    stor8 = arg1
    return stor8
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor16[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require token_balance[address(msg.sender)] >= arg1
    token_balance[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    token_balance[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require token_balance[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    token_balance[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer_token(address arg1, uint256 arg2) {
    require arg1
    require token_balance[address(msg.sender)] >= arg2
    require token_balance[address(arg1)] + arg2 > token_balance[address(arg1)]
    token_balance[address(msg.sender)] -= arg2
    token_balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require token_balance[address(msg.sender)] + token_balance[address(arg1)] == token_balance[address(msg.sender)] + token_balance[address(arg1)]
}

function buy() payable {
    require msg.sender
    require token_balance[stor0] >= msg.value * stor8
    require token_balance[address(msg.sender)] + (msg.value * stor8) > token_balance[address(msg.sender)]
    require not stor16[stor0]
    require not stor16[address(msg.sender)]
    token_balance[stor0] += -1 * msg.value * stor8
    token_balance[address(msg.sender)] += msg.value * stor8
    emit Transfer((msg.value * stor8), owner, msg.sender);
    sub_4e61e2ed[address(msg.sender)] += msg.value
    token_balance[address(msg.sender)] += msg.value * stor8
}

function transfer_token_from(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require token_balance[address(arg1)] >= arg3
    require token_balance[address(arg2)] + arg3 > token_balance[address(arg2)]
    token_balance[address(arg1)] -= arg3
    token_balance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require token_balance[address(arg1)] + token_balance[address(arg2)] == token_balance[address(arg1)] + token_balance[address(arg2)]
    return 1
}

function sell(uint256 arg1) {
    require stor8
    require sub_4e61e2ed[address(this.address)] >= arg1 / stor8
    require owner
    require token_balance[address(msg.sender)] >= arg1
    require token_balance[stor0] + arg1 > token_balance[stor0]
    require not stor16[address(msg.sender)]
    require not stor16[stor0]
    token_balance[address(msg.sender)] -= arg1
    token_balance[stor0] += arg1
    emit Transfer(arg1, msg.sender, owner);
    require stor8
    call msg.sender with:
       value arg1 / stor8 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    token_balance[address(msg.sender)] -= arg1
    require stor8
    sub_4e61e2ed[address(msg.sender)] -= arg1 / stor8
}



}
