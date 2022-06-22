contract main {




// =====================  Runtime code  =====================


address sub_7ba61ea5Address;
address lenderAddress;
address tokenAddress;
uint256 sub_8770998e;
uint256 sub_aa9826d2;
uint256 loanAmount;
uint256 collateralAmount;
uint256 totalAmount;
uint256 sub_19cc3aaa;
uint256 sub_67e198c8;
uint256 createdAt;
uint256 amountRaised;
uint256 sub_95950218;
uint256 sub_97394d9a;
uint256 count;
uint256 sub_ee86afd8;
uint8 currentState;
uint8 sub_16239248; offset 8
array of struct schedule;
array of struct payments;
array of struct sub_bfe59fc2;

function count() {
    return count
}

function currentState() {
    require currentState <= 4
    return currentState
}

function sub_16239248(?) {
    require sub_16239248 <= 1
    return sub_16239248
}

function sub_19cc3aaa(?) {
    return sub_19cc3aaa
}

function totalAmount() {
    return totalAmount
}

function sub_59e07bd6(?) {
    return sub_67e198c8
}

function sub_67e198c8(?) {
    return sub_67e198c8
}

function lenderAddress() {
    return lenderAddress
}

function schedule(uint256 arg1) {
    require arg1 < schedule.length
    return schedule[arg1].field_0, schedule[arg1].field_256, schedule[arg1].field_512
}

function amountRaised() {
    return amountRaised
}

function sub_7ba61ea5(?) {
    return sub_7ba61ea5Address
}

function sub_8770998e(?) {
    return sub_8770998e
}

function payments(uint256 arg1) {
    require arg1 < payments.length
    return payments[arg1].field_0, payments[arg1].field_256, payments[arg1].field_512
}

function collateralAmount() {
    return collateralAmount
}

function sub_95950218(?) {
    return sub_95950218
}

function sub_97394d9a(?) {
    return sub_97394d9a
}

function loanAmount() {
    return loanAmount
}

function getCount() {
    return count
}

function sub_aa9826d2(?) {
    return sub_aa9826d2
}

function sub_bfe59fc2(?) {
    require arg1 < sub_bfe59fc2.length
    return sub_bfe59fc2[arg1].field_0, sub_bfe59fc2[arg1].field_256, sub_bfe59fc2[arg1].field_512
}

function createdAt() {
    return createdAt
}

function sub_ee86afd8(?) {
    return sub_ee86afd8
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_0784427d(?) {
    currentState = 3
}

function sub_5edf0c9e(?) {
    return (totalAmount - sub_ee86afd8)
}

function sub_28b4e856(?) {
    if block.timestamp >= sub_19cc3aaa:
        if amountRaised < loanAmount:
            currentState = 4
}

function lend() payable {
    require currentState <= 4
    require not currentState
    if amountRaised <= loanAmount:
        amountRaised += msg.value
        currentState = 1
}

function sub_f602d622(?) {
    require msg.sender == lenderAddress
    call msg.sender with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39a273d2(?) {
    require msg.sender == lenderAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, collateralAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8f0905e4(?) {
    require msg.sender == sub_7ba61ea5Address
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, collateralAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b04a5280(?) {
    require msg.sender == sub_7ba61ea5Address
    require sub_16239248 <= 1
    require not sub_16239248
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == collateralAmount:
        sub_16239248 = 1
}

function sub_5d8a04e6(?) payable {
    require msg.sender == sub_7ba61ea5Address
    require currentState <= 4
    require currentState == 2
    require count < schedule.length
    require block.timestamp <= schedule[stor14].field_256
    sub_ee86afd8 += msg.value
    payments.length++
    payments[payments.length].field_0 = count
    payments[payments.length].field_256 = block.timestamp
    payments[payments.length].field_512 = msg.value
    call lenderAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    count++
    if count == sub_67e198c8:
        currentState = 3
}

function sub_cd288eca(?) payable {
    require msg.sender == sub_7ba61ea5Address
    require currentState <= 4
    require currentState == 2
    sub_ee86afd8 += sub_8770998e
    require sub_8770998e + (msg.value - sub_8770998e / 2) >= sub_8770998e
    payments.length++
    payments[payments.length].field_0 = count
    payments[payments.length].field_256 = block.timestamp
    payments[payments.length].field_512 = msg.value
    call lenderAddress with:
       value sub_8770998e + (msg.value - sub_8770998e / 2) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg1 with:
       value msg.value - sub_8770998e / 2 wei
         gas 2300 * is_zero(value) wei
    count++
    if count == sub_67e198c8:
        currentState = 3
}

function sub_5cdb9829(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == sub_7ba61ea5Address
    if amountRaised <= 0:
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < sub_67e198c8:
            _23 = mem[64]
            mem[64] = mem[64] + 96
            mem[_23] = idx
            mem[_23 + 32] = block.timestamp + (24 * 3600 * s) + (24 * 3600 * sub_95950218)
            mem[_23 + 64] = sub_8770998e
            schedule.length++
            mem[0] = 17
            schedule[schedule.length].field_0 = idx
            schedule[schedule.length].field_256 = block.timestamp + (24 * 3600 * s) + (24 * 3600 * sub_95950218)
            schedule[schedule.length].field_512 = sub_8770998e
            _28 = mem[64]
            mem[64] = mem[64] + 96
            mem[_28] = idx
            mem[_28 + 32] = block.timestamp + s + sub_95950218 + (24 * 3600 * sub_97394d9a)
            mem[_28 + 64] = sub_aa9826d2
            sub_bfe59fc2.length++
            mem[0] = 19
            sub_bfe59fc2[sub_bfe59fc2.length].field_0 = idx
            sub_bfe59fc2[sub_bfe59fc2.length].field_256 = block.timestamp + s + sub_95950218 + (24 * 3600 * sub_97394d9a)
            sub_bfe59fc2[sub_bfe59fc2.length].field_512 = sub_aa9826d2
            s = block.timestamp + s + sub_95950218 + (24 * 3600 * sub_97394d9a)
            s = block.timestamp + (24 * 3600 * s) + (24 * 3600 * sub_95950218)
            s = s + sub_95950218
            idx = idx + 1
            continue 
    else:
        currentState = 2
        call msg.sender with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < sub_67e198c8:
            _33 = mem[64]
            mem[64] = mem[64] + 96
            mem[_33] = idx
            mem[_33 + 32] = block.timestamp + (24 * 3600 * s) + (24 * 3600 * sub_95950218)
            mem[_33 + 64] = sub_8770998e
            schedule.length++
            mem[0] = 17
            schedule[schedule.length].field_0 = idx
            schedule[schedule.length].field_256 = block.timestamp + (24 * 3600 * s) + (24 * 3600 * sub_95950218)
            schedule[schedule.length].field_512 = sub_8770998e
            _38 = mem[64]
            mem[64] = mem[64] + 96
            mem[_38] = idx
            mem[_38 + 32] = block.timestamp + s + sub_95950218 + (24 * 3600 * sub_97394d9a)
            mem[_38 + 64] = sub_aa9826d2
            sub_bfe59fc2.length++
            mem[0] = 19
            sub_bfe59fc2[sub_bfe59fc2.length].field_0 = idx
            sub_bfe59fc2[sub_bfe59fc2.length].field_256 = block.timestamp + s + sub_95950218 + (24 * 3600 * sub_97394d9a)
            sub_bfe59fc2[sub_bfe59fc2.length].field_512 = sub_aa9826d2
            s = block.timestamp + s + sub_95950218 + (24 * 3600 * sub_97394d9a)
            s = block.timestamp + (24 * 3600 * s) + (24 * 3600 * sub_95950218)
            s = s + sub_95950218
            idx = idx + 1
            continue 
}



}
