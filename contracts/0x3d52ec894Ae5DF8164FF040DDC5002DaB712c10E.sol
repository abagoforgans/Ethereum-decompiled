contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
array of uint32 stor4;
address stor10;
array of uint256 stor11;
uint256 stor16;
address stor17;

function _fallback() {
    mem[96 len -15080] = code.data[15918 len -15080]
    mem[64] = -14984
    stor0 = msg.sender
    stor1 = mem[96]
    stor2 = mem[128]
    stor3 = mem[172 len 20]
    stor4.length = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        idx = 0
        while stor4.length + 9 / 10 > idx:
            stor4[idx] % 16777216 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[192] + 128
        while mem[192] + (32 * mem[mem[192] + 96]) + 128 > idx:
            uint256(stor4) = mem[idx len 3] * 256^s or !(16777215 * 256^s) and uint256(stor4)
            s = s + (-3 * s + 5 / 32) + (-1 * s * s + 5 / 32) + 3
            idx = idx + 32
            continue 
        idx = 3 * Mask(251, 0, (32 * mem[mem[192] + 96]) + 31) >> 5
        s = sha3(4)
        while idx:
            uint256(stor[s]) = !(16777215 * 256^idx) and uint256(stor[s])
            idx = idx + (-3 * idx + 5 / 32) + (-1 * idx * idx + 5 / 32) + 3
            s = (idx + 5 / 32) + s
            continue 
        idx = s
        while sha3(4) + (stor4.length + 9 / 10) > idx:
            stor[idx] % 16777216 = 0
            idx = idx + 1
            continue 
    stor11.length = mem[mem[224] + 96]
    mem[0] = 11
    if not mem[mem[224] + 96]:
        idx = 0
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[224] + 128
        while mem[224] + (32 * mem[mem[224] + 96]) + 128 > idx:
            stor11[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[224] + 96]) + 31) >> 5
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    create contract with 0 wei
                    code: code.data[11864 len 4054]
    require create.new_address
    stor10 = address(create.new_address)
    stor16 = mem[256]
    create contract with 0 wei
                    code: code.data[10278 len 1586], stor3
    stor17 = address(create.new_address)
    return code.data[838 len 9440]
}



// =====================  Runtime code  =====================


address owner;
uint256 startTime;
uint256 endTime;
address walletAddress;
array of uint256 stor4;
mapping of uint128 sub_b4c0f83a;
mapping of uint128 sub_af9772c1;
mapping of uint8 stor7;
mapping of uint256 funded;
mapping of uint256 raised;
address tokenAddress;
array of uint256 rates;
mapping of struct sub_329b8cea;
mapping of uint256 sub_cc630299;
mapping of address sub_cc2d1924;
mapping of uint128 sub_eec4d49b;
uint256 sub_9c031ace;
address vaultAddress;

function sub_16f7b56b(?) {
    return bool(stor7[arg1][arg2])
}

function endTime() {
    return endTime
}

function funded(uint128 arg1, uint8 arg2) {
    return funded[arg1][arg2]
}

function sub_329b8cea(?) {
    return sub_329b8cea[arg1].field_0, sub_329b8cea[arg1].field_256
}

function raised(uint8 arg1) {
    return raised[arg1]
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_9c031ace(?) {
    return sub_9c031ace
}

function sub_af9772c1(?) {
    return sub_af9772c1[arg1]
}

function sub_b4c0f83a(?) {
    return sub_b4c0f83a[arg1]
}

function sub_cc2d1924(?) {
    return sub_cc2d1924[arg1]
}

function sub_cc630299(?) {
    return sub_cc630299[arg1][arg2]
}

function rates(uint256 arg1) {
    require arg1 < rates.length
    return rates[arg1]
}

function sub_eec4d49b(?) {
    return sub_eec4d49b[arg1]
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function collectors(uint256 arg1) {
    require arg1 < stor4.length
    return (stor4[arg1 / 10] / 256^(3 * arg1 % 10) << 232)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a9ed56b4(?) {
    require owner == msg.sender
    require arg1
    require arg2
    require not sub_b4c0f83a[address(arg1)]
    sub_b4c0f83a[address(arg1)] = arg2
    sub_af9772c1[address(arg1)] = arg2
}

function sub_96a4ca27(?) {
    require owner == msg.sender
    require arg1
    require arg2
    require not sub_cc2d1924[arg1 << 128]
    require not sub_eec4d49b[address(arg2)]
    sub_cc2d1924[arg1 << 128] = arg2
    sub_eec4d49b[address(arg2)] = arg1
}

function sub_fbe09984(?) payable {
    if sub_9c031ace > 0:
        require msg.value == sub_9c031ace
    require arg1
    require msg.sender
    require not sub_cc2d1924[arg1 << 128]
    require not sub_eec4d49b[address(msg.sender)]
    sub_cc2d1924[arg1 << 128] = msg.sender
    sub_eec4d49b[address(msg.sender)] = arg1
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_3187944d(?) payable {
    require msg.value > 0
    sub_af9772c1[address(msg.sender)] = arg1
    require arg1
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require sub_cc2d1924[arg1 << 128]
    require msg.value + funded[arg1 << 128][0] >= funded[arg1 << 128][0]
    funded[arg1 << 128][0] += msg.value
    require msg.value + raised[0] >= raised[0]
    raised[0] += msg.value
    require 0 < rates.length
    if msg.value:
        require msg.value
        require rates * msg.value / msg.value == rates
    require (rates * msg.value) + sub_329b8cea[arg1 << 128].field_0 >= sub_329b8cea[arg1 << 128].field_0
    sub_329b8cea[arg1 << 128].field_0 += rates * msg.value
    emit 0x1031494f: msg.value, arg1, 0
    if msg.value > 0:
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(uint128 rg1) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args sub_af9772c1[address(msg.sender)]
        require ext_call.success
}

function sub_b3011efa(?) payable {
    if owner != msg.sender:
        require sub_b4c0f83a[address(msg.sender)]
    require not stor7[arg2 << 248][arg4]
    if owner == msg.sender:
        require not msg.value
    stor7[arg2 << 248][arg4] = 1
    require arg1
    require arg3 > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require sub_cc2d1924[arg1 << 128]
    require arg3 + funded[arg1 << 128][arg2 << 248] >= funded[arg1 << 128][arg2 << 248]
    funded[arg1 << 128][arg2 << 248] += arg3
    require arg3 + raised[arg2 << 248] >= raised[arg2 << 248]
    raised[arg2 << 248] += arg3
    require arg2 < rates.length
    if arg3:
        require arg3
        require rates[arg2] * arg3 / arg3 == rates[arg2]
    require (rates[arg2] * arg3) + sub_329b8cea[arg1 << 128].field_0 >= sub_329b8cea[arg1 << 128].field_0
    sub_329b8cea[arg1 << 128].field_0 += rates[arg2] * arg3
    emit 0x1031494f: arg3, arg1, arg2
    if msg.value > 0:
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(uint128 rg1) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args sub_af9772c1[address(msg.sender)]
        require ext_call.success
}

function sub_58282b73(?) {
    require owner == msg.sender
    require sub_329b8cea[arg1 << 128].field_256 <= sub_329b8cea[arg1 << 128].field_0
    require sub_329b8cea[arg1 << 128].field_0 - sub_329b8cea[arg1 << 128].field_256 > 0
    require sub_329b8cea[arg1 << 128].field_0 - sub_329b8cea[arg1 << 128].field_256 <= sub_329b8cea[arg1 << 128].field_0
    sub_329b8cea[arg1 << 128].field_0 = sub_329b8cea[arg1 << 128].field_256
    idx = 0
    s = 0
    while uint8(idx) < stor4.length:
        require sub_cc630299[arg1 << 128][idx << 248] <= funded[arg1 << 128][idx << 248]
        require funded[arg1 << 128][idx << 248] - sub_cc630299[arg1 << 128][idx << 248] <= raised[idx << 248]
        raised[idx << 248] = raised[idx << 248] - funded[arg1 << 128][idx << 248] + sub_cc630299[arg1 << 128][idx << 248]
        require funded[arg1 << 128][idx << 248] - sub_cc630299[arg1 << 128][idx << 248] <= funded[arg1 << 128][idx << 248]
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1 << 128, 8)
        funded[arg1 << 128][idx << 248] = sub_cc630299[arg1 << 128][idx << 248]
        idx = idx + 1
        s = funded[arg1 << 128][idx << 248] - sub_cc630299[arg1 << 128][idx << 248]
        continue 
    require ext_code.size(vaultAddress)
    call vaultAddress.0xad4220ea with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function claimTokens() {
    require sub_329b8cea[stor15[address(msg.sender)]].field_256 <= sub_329b8cea[stor15[address(msg.sender)]].field_0
    require sub_eec4d49b[address(msg.sender)]
    require sub_329b8cea[stor15[address(msg.sender)]].field_0 - sub_329b8cea[stor15[address(msg.sender)]].field_256 > 0
    require sub_329b8cea[stor15[address(msg.sender)]].field_0 >= sub_329b8cea[stor15[address(msg.sender)]].field_256
    sub_329b8cea[stor15[address(msg.sender)]].field_256 = sub_329b8cea[stor15[address(msg.sender)]].field_0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, sub_329b8cea[stor15[address(msg.sender)]].field_0 - sub_329b8cea[stor15[address(msg.sender)]].field_256
    require ext_call.success
    idx = 0
    while uint8(idx) < stor4.length:
        mem[0] = uint8(idx)
        mem[32] = sha3(sub_eec4d49b[address(msg.sender)], 13)
        sub_cc630299[stor15[address(msg.sender)]][idx << 248] = funded[stor15[address(msg.sender)]][idx << 248]
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    call vaultAddress.0x34354786 with:
         gas gas_remaining - 710 wei
        args sub_eec4d49b[address(msg.sender)]
    require ext_call.success
    emit 0x5da5033f: (sub_329b8cea[stor15[address(msg.sender)]].field_0 - sub_329b8cea[stor15[address(msg.sender)]].field_256), sub_eec4d49b[address(msg.sender)]
}

function claimRefund() {
    require sub_eec4d49b[address(msg.sender)]
    require sub_329b8cea[stor15[address(msg.sender)]].field_256 <= sub_329b8cea[stor15[address(msg.sender)]].field_0
    require sub_329b8cea[stor15[address(msg.sender)]].field_0 - sub_329b8cea[stor15[address(msg.sender)]].field_256 > 0
    require sub_329b8cea[stor15[address(msg.sender)]].field_0 - sub_329b8cea[stor15[address(msg.sender)]].field_256 <= sub_329b8cea[stor15[address(msg.sender)]].field_0
    sub_329b8cea[stor15[address(msg.sender)]].field_0 = sub_329b8cea[stor15[address(msg.sender)]].field_256
    idx = 0
    s = 0
    while uint8(idx) < stor4.length:
        require sub_cc630299[stor15[address(msg.sender)]][idx << 248] <= funded[stor15[address(msg.sender)]][idx << 248]
        require funded[stor15[address(msg.sender)]][idx << 248] - sub_cc630299[stor15[address(msg.sender)]][idx << 248] <= raised[idx << 248]
        raised[idx << 248] = raised[idx << 248] - funded[stor15[address(msg.sender)]][idx << 248] + sub_cc630299[stor15[address(msg.sender)]][idx << 248]
        require funded[stor15[address(msg.sender)]][idx << 248] - sub_cc630299[stor15[address(msg.sender)]][idx << 248] <= funded[stor15[address(msg.sender)]][idx << 248]
        mem[0] = uint8(idx)
        mem[32] = sha3(sub_eec4d49b[address(msg.sender)], 8)
        funded[stor15[address(msg.sender)]][idx << 248] = sub_cc630299[stor15[address(msg.sender)]][idx << 248]
        idx = idx + 1
        s = funded[stor15[address(msg.sender)]][idx << 248] - sub_cc630299[stor15[address(msg.sender)]][idx << 248]
        continue 
    require ext_code.size(vaultAddress)
    call vaultAddress.0xad4220ea with:
         gas gas_remaining - 710 wei
        args sub_eec4d49b[address(msg.sender)]
    require ext_call.success
}



}
