contract main {




// =====================  Runtime code  =====================


const sub_8db7e833(?) = 2625000 * 10^18

const maxSupply = 2625000 * 10^18


address sub_a3e05c18Address;
address sub_b672edfeAddress;
address sub_af9f47c0Address;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 sub_e405c462;
uint256 sub_54626587;
uint256 sub_b6ab61a7;
mapping of uint256 balances;
mapping of uint256 approvals;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8
uint256 endSaleTime;

function name() {
    return name[0 len name.length]
}

function saleTime() {
    return bool(uint8(stor11.field_8))
}

function totalSupply() {
    return sub_e405c462
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function sub_54626587(?) {
    return sub_54626587
}

function endSaleTime() {
    return endSaleTime
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function approvals(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return approvals[arg1][arg2]
}

function sub_a3e05c18(?) {
    return sub_a3e05c18Address
}

function sub_af9f47c0(?) {
    return sub_af9f47c0Address
}

function sub_b672edfe(?) {
    return sub_b672edfeAddress
}

function sub_b6ab61a7(?) {
    return sub_b6ab61a7
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return approvals[address(arg1)][address(arg2)]
}

function sub_e405c462(?) {
    return sub_e405c462
}

function tokenLock() {
    return bool(uint8(stor11.field_0))
}

function close() {
    require msg.sender == sub_a3e05c18Address
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setTokenLock() {
    require msg.sender == sub_af9f47c0Address
    require not uint8(stor11.field_0)
    uint8(stor11.field_0) = 1
}

function endSale() {
    require msg.sender == sub_af9f47c0Address
    require bool(uint8(stor11.field_8)) == 1
    Mask(248, 0, stor11.field_8) = 0
    endSaleTime = block.timestamp
}

function setTokenUnlock() {
    require msg.sender == sub_af9f47c0Address
    require bool(uint8(stor11.field_0)) == 1
    require not uint8(stor11.field_8)
    uint8(stor11.field_0) = 0
}

function sub_2d8c5811(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_a3e05c18Address
    require arg1 != sub_a3e05c18Address
    require arg1 != sub_b672edfeAddress
    require arg1 != sub_af9f47c0Address
    require arg1
    sub_b672edfeAddress = arg1
    emit 0x844a4a07: sub_b672edfeAddress, arg1
}

function sub_a07bbbfe(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_a3e05c18Address
    require arg1 != sub_a3e05c18Address
    require arg1 != sub_b672edfeAddress
    require arg1 != sub_af9f47c0Address
    require arg1
    sub_a3e05c18Address = arg1
    emit 0xfb59157e: sub_a3e05c18Address, arg1
}

function sub_f40c2918(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_a3e05c18Address
    require arg1 != sub_a3e05c18Address
    require arg1 != sub_b672edfeAddress
    require arg1 != sub_af9f47c0Address
    require arg1
    sub_af9f47c0Address = arg1
    emit 0xde74b34b: sub_af9f47c0Address, arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor11.field_0):
        require msg.sender == sub_af9f47c0Address
    require balances[address(msg.sender)] >= arg2
    approvals[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor11.field_0):
        require msg.sender == sub_af9f47c0Address
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_af9f47c0Address
    require balances[address(msg.sender)] >= 10^18 * arg1
    require 10^18 * arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] += -1 * 10^18 * arg1
    require sub_b6ab61a7 + (10^18 * arg1) >= sub_b6ab61a7
    sub_b6ab61a7 += 10^18 * arg1
    require 10^18 * arg1 <= sub_e405c462
    sub_e405c462 += -1 * 10^18 * arg1
    emit Burn((10^18 * arg1), msg.sender);
}

function sub_ec6976c3(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require sub_54626587 + (10^18 * arg2) >= sub_54626587
    require 2625000 * 10^18 >= sub_54626587 + (10^18 * arg2)
    require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
    balances[address(arg1)] += 10^18 * arg2
    require sub_e405c462 + (10^18 * arg2) >= sub_e405c462
    sub_e405c462 += 10^18 * arg2
    require sub_54626587 + (10^18 * arg2) >= sub_54626587
    sub_54626587 += 10^18 * arg2
    emit 0x82dd79f3: (10^18 * arg2), arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if uint8(stor11.field_0):
        require msg.sender == sub_af9f47c0Address
    require balances[address(arg1)] >= arg3
    require approvals[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= approvals[address(arg1)][address(msg.sender)]
    approvals[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawTokens(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == sub_af9f47c0Address
    if arg3:
        require arg3
        require arg3 * 10^arg2 / arg3 == 10^arg2
    if not arg1:
        call msg.sender with:
           value arg3 * 10^arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg3 * 10^arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg3 * 10^arg2), 0, msg.sender);
}



}
