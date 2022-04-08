contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor4;
address stor5;
address stor6;
address stor7;
uint8 stor8; offset 152
address stor8;
address stor8;
uint8 stor9; offset 152
address stor9;
address stor10;
address stor11;
address stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0x5a0a46f082c4718c73f5b30667004ac350e2e140
    stor6 = 0xcd4fc8e4da5b25885c7d80b6c846afb6b170b49b
    stor7 = 0x3d382e76b430bf8fd65ea3ad9adfc3741d4746a4
    Mask(152, 0, stor8.field_0) = 0x5cd1194c1f088d9bd8bf9e70e5e44d2194c029
    uint8(stor8.field_152) = 0
    Mask(152, 0, stor9.field_0) = 0xd0aca6d3d07b3546fc76e60a90ccdccc7c0e0c
    uint8(stor9.field_152) = 0
    stor10 = 0x7d49c6a86fde3de9c47544c58b7b0f035197415b
    stor11 = 0xce1bffaae583c97b63d33cc94f333e16f65c3ddb
    stor12 = 0x5ca7f20427e4d202777ea8006dc8f614a289be2f
    stor13 = 1
    stor14 = 10^12
    stor15 = 10^15
    stor16 = 10^18
    stor19 = 0
    stor20 = 0
    require not msg.value
    stor17 = msg.sender
    stor21 = code.data[8712 len 32]
    stor23 = code.data[8744 len 32]
    stor22 = code.data[8776 len 32]
    stor24 = code.data[8808 len 32]
    stor18 = code.data[8712 len 32] + code.data[8776 len 32]
    stor1[address(msg.sender)] = 10 * 10^6
    stor1[stor5] = 4 * 10^6
    stor1[stor6] = 4 * 10^6
    stor1[stor7] = 4 * 10^6
    stor1[address(stor8.field_0)] = 4 * 10^6
    stor19 = code.data[8840 len 32]
    stor20 = code.data[8840 len 32] + (720 * 24 * 3600)
    return code.data[1703 len 7009]
}



// =====================  Runtime code  =====================


const name = 'SMT'

const getBalance = eth.balance(this.address)

const decimals = 0

const symbol = 'SMT'

const DURATION = (720 * 24 * 3600)

const PLATAMOUNT = 8 * 10^6

const LOCKPERIOD = (17520 * 24 * 3600)

const CORNERSTONEAMOUNT = 2 * 10^6

const LOCKAMOUNT4 = 4 * 10^6

const LOCKAMOUNT3 = 4 * 10^6

const LOCKAMOUNT1 = 4 * 10^6

const LOCKAMOUNT2 = 4 * 10^6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct funder;
array of uint256 version;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
uint256 stor15;
address creatorAddress;
uint256 totalSupply;
uint256 startTime;
uint256 endTime;
uint256 gcSupply;
uint256 ccSupply;
uint256 sub_dc6d447f;
uint256 sub_04c4a677;

function creator() {
    return creatorAddress
}

function sub_04c4a677(?) {
    return sub_04c4a677
}

function gcSupply() {
    return gcSupply
}

function totalSupply() {
    return totalSupply
}

function endTime() {
    return endTime
}

function ccSupply() {
    return ccSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function getFunder(uint256 arg1) {
    require arg1 < funder.length
    return funder[arg1].field_0, funder[arg1].field_256
}

function sub_dc6d447f(?) {
    return sub_dc6d447f
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function clearSmet() {
    require msg.sender == creatorAddress
    balanceOf[stor17] += ccSupply
    balanceOf[stor17] += gcSupply
    ccSupply = 0
    gcSupply = 0
    totalSupply = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if msg.sender == stor5:
        return 0
    if msg.sender == stor6:
        return 0
    if msg.sender == stor7:
        return 0
    if msg.sender == stor8:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= stor15
    require stor15
    require not msg.value % stor15
    require stor15
    funder.length++
    if not funder.length <= funder.length + 1:
        idx = 2 * funder.length + 1
        while 2 * funder.length > idx:
            funder[idx].field_0 = 0
            funder[idx].field_256 = 0
            idx = idx + 2
            continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / stor15
    if msg.value < 10 * stor15:
        require sub_dc6d447f
        require totalSupply >= msg.value / sub_dc6d447f
        require gcSupply >= msg.value / sub_dc6d447f
        require balanceOf[address(msg.sender)] + (msg.value / sub_dc6d447f) >= balanceOf[address(msg.sender)]
        totalSupply -= msg.value / sub_dc6d447f
        gcSupply -= msg.value / sub_dc6d447f
        balanceOf[address(msg.sender)] += msg.value / sub_dc6d447f
    else:
        require stor15
        if msg.value % stor15:
            require sub_dc6d447f
            require totalSupply >= msg.value / sub_dc6d447f
            require gcSupply >= msg.value / sub_dc6d447f
            require balanceOf[address(msg.sender)] + (msg.value / sub_dc6d447f) >= balanceOf[address(msg.sender)]
            totalSupply -= msg.value / sub_dc6d447f
            gcSupply -= msg.value / sub_dc6d447f
            balanceOf[address(msg.sender)] += msg.value / sub_dc6d447f
        else:
            require sub_04c4a677
            require totalSupply >= msg.value / sub_04c4a677
            require ccSupply >= msg.value / sub_04c4a677
            require balanceOf[address(msg.sender)] + (msg.value / sub_04c4a677) >= balanceOf[address(msg.sender)]
            totalSupply -= msg.value / sub_04c4a677
            ccSupply -= msg.value / sub_04c4a677
            balanceOf[address(msg.sender)] += msg.value / sub_04c4a677
    call stor5 with:
       value 750 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor6 with:
       value 3000 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor7 with:
       value 1000 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor8 with:
       value 1800 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor9 with:
       value 450 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor10 with:
       value 375 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor11 with:
       value 375 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor12 with:
       value 2250 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= stor15
    require stor15
    require not msg.value % stor15
    require stor15
    funder.length++
    if not funder.length <= funder.length + 1:
        idx = 2 * funder.length + 1
        while 2 * funder.length > idx:
            funder[idx].field_0 = 0
            funder[idx].field_256 = 0
            idx = idx + 2
            continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / stor15
    if msg.value < 10 * stor15:
        require sub_dc6d447f
        require totalSupply >= msg.value / sub_dc6d447f
        require gcSupply >= msg.value / sub_dc6d447f
        require balanceOf[address(msg.sender)] + (msg.value / sub_dc6d447f) >= balanceOf[address(msg.sender)]
        totalSupply -= msg.value / sub_dc6d447f
        gcSupply -= msg.value / sub_dc6d447f
        balanceOf[address(msg.sender)] += msg.value / sub_dc6d447f
    else:
        require stor15
        if msg.value % stor15:
            require sub_dc6d447f
            require totalSupply >= msg.value / sub_dc6d447f
            require gcSupply >= msg.value / sub_dc6d447f
            require balanceOf[address(msg.sender)] + (msg.value / sub_dc6d447f) >= balanceOf[address(msg.sender)]
            totalSupply -= msg.value / sub_dc6d447f
            gcSupply -= msg.value / sub_dc6d447f
            balanceOf[address(msg.sender)] += msg.value / sub_dc6d447f
        else:
            require sub_04c4a677
            require totalSupply >= msg.value / sub_04c4a677
            require ccSupply >= msg.value / sub_04c4a677
            require balanceOf[address(msg.sender)] + (msg.value / sub_04c4a677) >= balanceOf[address(msg.sender)]
            totalSupply -= msg.value / sub_04c4a677
            ccSupply -= msg.value / sub_04c4a677
            balanceOf[address(msg.sender)] += msg.value / sub_04c4a677
    call stor5 with:
       value 750 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor6 with:
       value 3000 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor7 with:
       value 1000 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor8 with:
       value 1800 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor9 with:
       value 450 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor10 with:
       value 375 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor11 with:
       value 375 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor12 with:
       value 2250 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
