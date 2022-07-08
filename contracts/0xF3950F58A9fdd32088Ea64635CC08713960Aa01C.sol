contract main {




// =====================  Runtime code  =====================


address owner;
address multisigAddress;
address tokenAddress;
mapping of uint256 balances;
uint256 COIN;
uint256 sub_5e1ca2cd;
uint256 sub_d025c071;
uint256 start;
uint256 period;
uint256 hardcap;
uint256 softcap;
uint256 sub_c1161dd8;
array of uint256 stor12;
uint256 stor14;
array of uint256 stor15;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function multisig() {
    return multisigAddress
}

function sub_5e1ca2cd(?) {
    return sub_5e1ca2cd
}

function owner() {
    return owner
}

function COIN() {
    return COIN
}

function hardcap() {
    return hardcap
}

function start() {
    return start
}

function sub_c1161dd8(?) {
    return sub_c1161dd8
}

function sub_d025c071(?) {
    return sub_d025c071
}

function period() {
    return period
}

function softcap() {
    return softcap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function _fallback() payable {
    require sub_c1161dd8 < stor14
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = msg.value
    t = 0
    u = 0
    u = 0
    v = 0
    w = 0
    while idx < 3:
        if sub_c1161dd8 >= stor12[idx]:
            idx = idx + 1
            s = s
            t = t
            u = stor12[idx]
            u = u
            v = v
            w = w
            continue 
        require idx < 3
        require stor15[idx]
        require idx < 3
        if msg.value / stor15[idx] < stor12[idx] - sub_c1161dd8:
            sub_c1161dd8 += msg.value / stor15[idx]
            idx = idx + 1
            s = s - (msg.value / stor15[idx] * stor15[idx])
            t = stor12[idx] - sub_c1161dd8
            u = stor12[idx]
            u = msg.value / stor15[idx]
            v = msg.value / stor15[idx]
            w = w + (msg.value / stor15[idx])
            continue 
        sub_c1161dd8 = stor12[idx]
        idx = idx + 1
        s = s - (stor12[idx] * stor15[idx]) + (sub_c1161dd8 * stor15[idx])
        t = stor12[idx] - sub_c1161dd8
        u = stor12[idx]
        u = stor12[idx] - sub_c1161dd8
        v = msg.value / stor15[idx]
        w = w + stor12[idx] - sub_c1161dd8
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, w
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createTokens() payable {
    require sub_c1161dd8 < stor14
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = msg.value
    t = 0
    u = 0
    u = 0
    v = 0
    w = 0
    while idx < 3:
        if sub_c1161dd8 >= stor12[idx]:
            idx = idx + 1
            s = s
            t = t
            u = stor12[idx]
            u = u
            v = v
            w = w
            continue 
        require idx < 3
        require stor15[idx]
        require idx < 3
        if msg.value / stor15[idx] < stor12[idx] - sub_c1161dd8:
            sub_c1161dd8 += msg.value / stor15[idx]
            idx = idx + 1
            s = s - (msg.value / stor15[idx] * stor15[idx])
            t = stor12[idx] - sub_c1161dd8
            u = stor12[idx]
            u = msg.value / stor15[idx]
            v = msg.value / stor15[idx]
            w = w + (msg.value / stor15[idx])
            continue 
        sub_c1161dd8 = stor12[idx]
        idx = idx + 1
        s = s - (stor12[idx] * stor15[idx]) + (sub_c1161dd8 * stor15[idx])
        t = stor12[idx] - sub_c1161dd8
        u = stor12[idx]
        u = stor12[idx] - sub_c1161dd8
        v = msg.value / stor15[idx]
        w = w + stor12[idx] - sub_c1161dd8
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, w
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
