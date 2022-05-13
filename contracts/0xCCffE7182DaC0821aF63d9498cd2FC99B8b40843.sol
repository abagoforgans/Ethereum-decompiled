contract main {




// =====================  Runtime code  =====================


const DEVELOPER2 = 0x63f7547ac277ea0b52a0b060be6af8c5904953aa

const DEVELOPER1 = 0x8c006d807ebae91f341a4308132fd756808e0126

const FEE_DEV = 670


address owner;
uint256 FEE_OWNER;
array of uint8 stor2;
uint256 min_amount;
uint256 individual_cap;
uint256 gas_price_max;
uint8 rounds;
uint8 stor6; offset 8
uint256 stor6; offset 8
mapping of struct contributors;
array of struct snapshots;
uint256 const_contract_eth_value;
uint256 percent_reduction;
address saleAddress;
uint8 bought_tokens; offset 160
uint8 owner_supplied_eth; offset 168
uint8 allow_contributions; offset 176
uint128 stor12; offset 176
uint128 stor12; offset 168
uint128 stor12; offset 160
address tokenAddress;

function allow_contributions() {
    return bool(allow_contributions)
}

function individual_cap() {
    return individual_cap
}

function max_amount() {
    return stor2.length
}

function contributors(address arg1) {
    return contributors[arg1].field_0, 
           contributors[arg1].field_256,
           contributors[arg1].field_512,
           bool(contributors[arg1].field_520)
}

function FEE_OWNER() {
    return FEE_OWNER
}

function const_contract_eth_value() {
    return const_contract_eth_value
}

function bought_tokens() {
    return bool(bought_tokens)
}

function owner_supplied_eth() {
    return bool(owner_supplied_eth)
}

function sale() {
    return saleAddress
}

function min_amount() {
    return min_amount
}

function gas_price_max() {
    return gas_price_max
}

function whitelist_enabled() {
    return bool(uint8(stor6.field_8))
}

function owner() {
    return owner
}

function rounds() {
    return rounds
}

function percent_reduction() {
    return percent_reduction
}

function snapshots(uint256 arg1) {
    require arg1 < snapshots.length
    return snapshots[arg1].field_0, snapshots[arg1].field_256
}

function token() {
    return tokenAddress
}

function provide_eth() payable {
  stop
}

function change_fee(uint256 arg1) {
    require msg.sender == owner
    FEE_OWNER = arg1
}

function set_gas_price_max(uint256 arg1) {
    require msg.sender == owner
    gas_price_max = arg1
}

function change_owner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function change_individual_cap(uint256 arg1) {
    require msg.sender == owner
    individual_cap = arg1
}

function set_sale_address(address arg1) {
    require msg.sender == owner
    require arg1
    saleAddress = arg1
}

function set_token_address(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function set_whitelist_enabled(bool arg1) {
    require msg.sender == owner
    Mask(248, 0, stor6.field_8) = Mask(248, 0, arg1)
}

function set_allow_contributions(bool arg1) {
    require msg.sender == owner
    Mask(80, 0, stor12.field_176) = Mask(80, 0, arg1)
}

function emergency_eth_withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function change_min_amount(uint256 arg1) {
    require msg.sender == owner
    require arg1 + (arg1 / 335) >= arg1
    if not FEE_OWNER:
        min_amount = arg1 + (arg1 / 335)
    else:
        require FEE_OWNER
        require arg1 / FEE_OWNER >= 0
        min_amount = arg1 + (arg1 / 335) + (arg1 / FEE_OWNER)
}

function change_max_amount(uint256 arg1) {
    require msg.sender == owner
    require arg1 + (arg1 / 335) >= arg1
    if not FEE_OWNER:
        stor2.length = arg1 + (arg1 / 335)
    else:
        require FEE_OWNER
        require arg1 / FEE_OWNER >= 0
        stor2.length = arg1 + (arg1 / 335) + (arg1 / FEE_OWNER)
}

function whitelist_addys(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        contributors[mem[(32 * idx) + 140 len 20]].field_520 = Mask(248, 0, arg2)
        s = sha3(mem[(32 * idx) + 140 len 20], 7)
        idx = idx + 1
        continue 
}

function set_percent_reduction(uint256 arg1) payable {
    require msg.sender == owner
    require bought_tokens
    require not rounds
    require arg1 <= 100
    percent_reduction = arg1
    if msg.value > 0:
        Mask(88, 0, stor12.field_168) = 1
    if not const_contract_eth_value:
        require 0 <= const_contract_eth_value
    require const_contract_eth_value
    require const_contract_eth_value * arg1 / const_contract_eth_value == arg1
    require const_contract_eth_value * arg1 / 100 <= const_contract_eth_value
    const_contract_eth_value -= const_contract_eth_value * arg1 / 100
}

function refund_my_ether() {
    require not bought_tokens
    require not percent_reduction
    require contributors[address(msg.sender)].field_0 + contributors[address(msg.sender)].field_256 >= contributors[address(msg.sender)].field_0
    contributors[address(msg.sender)].field_0 = 0
    contributors[address(msg.sender)].field_256 = 0
    call msg.sender with:
       value contributors[address(msg.sender)].field_0 + contributors[address(msg.sender)].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function emergency_token_withdraw(address arg1) {
    require msg.sender == owner
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function _fallback() payable {
    if stor2.length:
        require eth.balance(this.address) <= stor2.length
    require not bought_tokens
    require allow_contributions
    if gas_price_max:
        require block.gasprice <= gas_price_max
    if uint8(stor6.field_8):
        require contributors[address(msg.sender)].field_520
    if not FEE_OWNER:
        require msg.value / 335 >= 0
        require contributors[address(msg.sender)].field_0 + msg.value >= contributors[address(msg.sender)].field_0
        require msg.value / 335 <= contributors[address(msg.sender)].field_0 + msg.value
        contributors[address(msg.sender)].field_0 = contributors[address(msg.sender)].field_0 + msg.value - (msg.value / 335)
        require contributors[address(msg.sender)].field_256 + (msg.value / 335) >= contributors[address(msg.sender)].field_256
        contributors[address(msg.sender)].field_256 += msg.value / 335
    else:
        require FEE_OWNER
        require (msg.value / FEE_OWNER) + (msg.value / 335) >= msg.value / FEE_OWNER
        require contributors[address(msg.sender)].field_0 + msg.value >= contributors[address(msg.sender)].field_0
        require (msg.value / FEE_OWNER) + (msg.value / 335) <= contributors[address(msg.sender)].field_0 + msg.value
        contributors[address(msg.sender)].field_0 = contributors[address(msg.sender)].field_0 + msg.value - (msg.value / FEE_OWNER) - (msg.value / 335)
        require contributors[address(msg.sender)].field_256 + (msg.value / FEE_OWNER) + (msg.value / 335) >= contributors[address(msg.sender)].field_256
        contributors[address(msg.sender)].field_256 = contributors[address(msg.sender)].field_256 + (msg.value / FEE_OWNER) + (msg.value / 335)
    if individual_cap:
        require contributors[address(msg.sender)].field_0 <= individual_cap
}

function set_tokens_received() {
    require msg.sender == owner
    idx = 0
    s = 0
    while uint8(idx) < snapshots.length:
        mem[0] = 8
        require s + snapshots[2 * uint8(idx)].field_0 >= s
        idx = idx + 1
        s = s + snapshots[2 * uint8(idx)].field_0
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None <= ext_call.return_data[0]
    snapshots.length++
    snapshots[snapshots.length].field_0 = ext_call.return_data[0] - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    snapshots[snapshots.length].field_256 = const_contract_eth_value
    rounds = uint8(rounds + 1)
}

function buy_the_tokens(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    require eth.balance(this.address) >= min_amount
    require not bought_tokens
    require saleAddress
    Mask(96, 0, stor12.field_160) = 1
    const_contract_eth_value = eth.balance(this.address)
    call 0x8c006d807ebae91f341a4308132fd756808e0126 with:
       value const_contract_eth_value / 670 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x63f7547ac277ea0b52a0b060be6af8c5904953aa with:
       value const_contract_eth_value / 670 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if FEE_OWNER:
        require FEE_OWNER
        call owner with:
           value const_contract_eth_value / FEE_OWNER wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    const_contract_eth_value = eth.balance(this.address)
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        call saleAddress.mem[ceil32(arg1.length) + 128 len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call saleAddress.mem[ceil32(arg1.length) + 128 len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
    require ext_call.success
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    if msg.sender == tokenAddress:
        idx = 0
        s = 0
        while uint8(idx) < snapshots.length:
            mem[0] = 8
            require s + snapshots[2 * uint8(idx)].field_0 >= s
            idx = idx + 1
            s = s + snapshots[2 * uint8(idx)].field_0
            continue 
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None <= ext_call.return_data[0]
        snapshots.length++
        snapshots[snapshots.length].field_0 = ext_call.return_data[0] - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
        snapshots[snapshots.length].field_256 = const_contract_eth_value
        rounds = uint8(rounds + 1)
}

function partial_refund_my_ether() {
    require bought_tokens
    require not rounds
    require percent_reduction > 0
    require not contributors[address(msg.sender)].field_512
    if not contributors[address(msg.sender)].field_0:
        require 0 <= contributors[address(msg.sender)].field_0
        if not owner_supplied_eth:
            call msg.sender with:
                 gas 2300 wei
        else:
            if not contributors[address(msg.sender)].field_256:
                call msg.sender with:
                     gas 2300 wei
            else:
                require contributors[address(msg.sender)].field_256
                require contributors[address(msg.sender)].field_256 * percent_reduction / contributors[address(msg.sender)].field_256 == percent_reduction
                require contributors[address(msg.sender)].field_256 * percent_reduction / 100 >= 0
                call msg.sender with:
                   value contributors[address(msg.sender)].field_256 * percent_reduction / 100 wei
                     gas 2300 * is_zero(value) wei
    else:
        require contributors[address(msg.sender)].field_0
        require contributors[address(msg.sender)].field_0 * percent_reduction / contributors[address(msg.sender)].field_0 == percent_reduction
        require contributors[address(msg.sender)].field_0 * percent_reduction / 100 <= contributors[address(msg.sender)].field_0
        contributors[address(msg.sender)].field_0 -= contributors[address(msg.sender)].field_0 * percent_reduction / 100
        if not owner_supplied_eth:
            call msg.sender with:
               value contributors[address(msg.sender)].field_0 * percent_reduction / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            if not contributors[address(msg.sender)].field_256:
                require contributors[address(msg.sender)].field_0 * percent_reduction / 100 >= contributors[address(msg.sender)].field_0 * percent_reduction / 100
                call msg.sender with:
                   value contributors[address(msg.sender)].field_0 * percent_reduction / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                require contributors[address(msg.sender)].field_256
                require contributors[address(msg.sender)].field_256 * percent_reduction / contributors[address(msg.sender)].field_256 == percent_reduction
                require (contributors[address(msg.sender)].field_0 * percent_reduction / 100) + (contributors[address(msg.sender)].field_256 * percent_reduction / 100) >= contributors[address(msg.sender)].field_0 * percent_reduction / 100
                call msg.sender with:
                   value (contributors[address(msg.sender)].field_0 * percent_reduction / 100) + (contributors[address(msg.sender)].field_256 * percent_reduction / 100) wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw_tokens_for(address arg1) {
    mem[0] = arg1
    mem[32] = 7
    idx = stor2[sha3(mem[0 len 64])]
    while uint8(idx) < rounds:
        require bought_tokens
        mem[100] = this.address
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 7
        if contributors[address(arg1)].field_512 < rounds:
            require contributors[address(arg1)].field_512 < snapshots.length
            mem[0] = 8
            if not contributors[address(arg1)].field_0:
                require snapshots[stor7[address(arg1)].field_512].field_256
                require 0 / snapshots[stor7[address(arg1)].field_512].field_256 <= snapshots[stor7[address(arg1)].field_512].field_0
                snapshots[stor7[address(arg1)].field_512].field_0 -= 0 / snapshots[stor7[address(arg1)].field_512].field_256
                require contributors[address(arg1)].field_0 <= snapshots[stor7[address(arg1)].field_512].field_256
                snapshots[stor7[address(arg1)].field_512].field_256 -= contributors[address(arg1)].field_0
                contributors[address(arg1)].field_512 = uint8(contributors[address(arg1)].field_512 + 1)
                mem[100] = arg1
                mem[132] = 0 / snapshots[stor7[address(arg1)].field_512].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0 / snapshots[stor7[address(arg1)].field_512].field_256
            else:
                require contributors[address(arg1)].field_0
                require contributors[address(arg1)].field_0 * snapshots[stor7[address(arg1)].field_512].field_0 / contributors[address(arg1)].field_0 == snapshots[stor7[address(arg1)].field_512].field_0
                require snapshots[stor7[address(arg1)].field_512].field_256
                require contributors[address(arg1)].field_0 * snapshots[stor7[address(arg1)].field_512].field_0 / snapshots[stor7[address(arg1)].field_512].field_256 <= snapshots[stor7[address(arg1)].field_512].field_0
                snapshots[stor7[address(arg1)].field_512].field_0 -= contributors[address(arg1)].field_0 * snapshots[stor7[address(arg1)].field_512].field_0 / snapshots[stor7[address(arg1)].field_512].field_256
                require contributors[address(arg1)].field_0 <= snapshots[stor7[address(arg1)].field_512].field_256
                snapshots[stor7[address(arg1)].field_512].field_256 -= contributors[address(arg1)].field_0
                contributors[address(arg1)].field_512 = uint8(contributors[address(arg1)].field_512 + 1)
                mem[100] = arg1
                mem[132] = contributors[address(arg1)].field_0 * snapshots[stor7[address(arg1)].field_512].field_0 / snapshots[stor7[address(arg1)].field_512].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), contributors[address(arg1)].field_0 * snapshots[stor7[address(arg1)].field_512].field_0 / snapshots[stor7[address(arg1)].field_512].field_256
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function withdraw_my_tokens() {
    mem[0] = msg.sender
    mem[32] = 7
    idx = stor2[sha3(mem[0 len 64])]
    while uint8(idx) < rounds:
        require bought_tokens
        mem[100] = this.address
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[0] = msg.sender
        mem[32] = 7
        if contributors[address(msg.sender)].field_512 < rounds:
            require contributors[address(msg.sender)].field_512 < snapshots.length
            mem[0] = 8
            if not contributors[address(msg.sender)].field_0:
                require snapshots[stor7[address(msg.sender)].field_512].field_256
                require 0 / snapshots[stor7[address(msg.sender)].field_512].field_256 <= snapshots[stor7[address(msg.sender)].field_512].field_0
                snapshots[stor7[address(msg.sender)].field_512].field_0 -= 0 / snapshots[stor7[address(msg.sender)].field_512].field_256
                require contributors[address(msg.sender)].field_0 <= snapshots[stor7[address(msg.sender)].field_512].field_256
                snapshots[stor7[address(msg.sender)].field_512].field_256 -= contributors[address(msg.sender)].field_0
                contributors[address(msg.sender)].field_512 = uint8(contributors[address(msg.sender)].field_512 + 1)
                mem[100] = msg.sender
                mem[132] = 0 / snapshots[stor7[address(msg.sender)].field_512].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / snapshots[stor7[address(msg.sender)].field_512].field_256
            else:
                require contributors[address(msg.sender)].field_0
                require contributors[address(msg.sender)].field_0 * snapshots[stor7[address(msg.sender)].field_512].field_0 / contributors[address(msg.sender)].field_0 == snapshots[stor7[address(msg.sender)].field_512].field_0
                require snapshots[stor7[address(msg.sender)].field_512].field_256
                require contributors[address(msg.sender)].field_0 * snapshots[stor7[address(msg.sender)].field_512].field_0 / snapshots[stor7[address(msg.sender)].field_512].field_256 <= snapshots[stor7[address(msg.sender)].field_512].field_0
                snapshots[stor7[address(msg.sender)].field_512].field_0 -= contributors[address(msg.sender)].field_0 * snapshots[stor7[address(msg.sender)].field_512].field_0 / snapshots[stor7[address(msg.sender)].field_512].field_256
                require contributors[address(msg.sender)].field_0 <= snapshots[stor7[address(msg.sender)].field_512].field_256
                snapshots[stor7[address(msg.sender)].field_512].field_256 -= contributors[address(msg.sender)].field_0
                contributors[address(msg.sender)].field_512 = uint8(contributors[address(msg.sender)].field_512 + 1)
                mem[100] = msg.sender
                mem[132] = contributors[address(msg.sender)].field_0 * snapshots[stor7[address(msg.sender)].field_512].field_0 / snapshots[stor7[address(msg.sender)].field_512].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, contributors[address(msg.sender)].field_0 * snapshots[stor7[address(msg.sender)].field_512].field_0 / snapshots[stor7[address(msg.sender)].field_512].field_256
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
