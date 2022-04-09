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
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.1' / 256
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
    stor9 = 0x5ca7f20427e4d202777ea8006dc8f614a289be2f
    stor10 = 1
    stor11 = 10^12
    stor12 = 10^15
    stor13 = 10^18
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    stor19 = 10000000 * 10^18
    stor20 = 4000000 * 10^18
    stor21 = 0
    require not msg.value
    stor14 = msg.sender
    stor21 = stor19 + stor20
    stor1[address(msg.sender)] = 10000000 * 10^18
    stor1[stor5] = 4000000 * 10^18
    stor1[stor6] = 4000000 * 10^18
    stor1[stor7] = 4000000 * 10^18
    stor1[address(stor8.field_0)] = 4000000 * 10^18
    stor15 = code.data[8024 len 32]
    stor16 = code.data[8056 len 32]
    stor17 = code.data[8088 len 32]
    stor18 = code.data[8120 len 32]
    return code.data[1501 len 6523]
}



// =====================  Runtime code  =====================


const name = 'SMET'

const gcExchangeRate = 1000

const decimals = 18

const symbol = 'SMET'

const ccExchangeRate = 1250

const PLATAMOUNT = 8000000 * 10^18

const LOCKPERIOD = (17520 * 24 * 3600)

const CORNERSTONEAMOUNT = 2000000 * 10^18

const LOCKAMOUNT4 = 4000000 * 10^18

const LOCKAMOUNT3 = 4000000 * 10^18

const LOCKAMOUNT1 = 4000000 * 10^18

const LOCKAMOUNT2 = 4000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct funder;
array of uint256 version;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
uint256 stor12;
address creatorAddress;
uint256 gcStartTime;
uint256 gcEndTime;
uint256 ccStartTime;
uint256 ccEndTime;
uint256 gcSupply;
uint256 ccSupply;
uint256 totalSupply;

function creator() {
    return creatorAddress
}

function gcSupply() {
    return gcSupply
}

function gcStartTime() {
    return gcStartTime
}

function totalSupply() {
    return totalSupply
}

function ccSupply() {
    return ccSupply
}

function gcEndTime() {
    return gcEndTime
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ccEndTime() {
    return ccEndTime
}

function getFunder(uint256 arg1) {
    require arg1 < funder.length
    return funder[arg1].field_0, funder[arg1].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ccStartTime() {
    return ccStartTime
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function clearSmet() {
    require msg.sender == creatorAddress
    balanceOf[stor14] += ccSupply
    balanceOf[stor14] += gcSupply
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
    require block.timestamp >= ccStartTime
    require block.timestamp <= gcEndTime
    require msg.value >= stor12
    if msg.value < 10 * stor12:
        require block.timestamp >= gcStartTime
        require totalSupply >= 1000 * msg.value
        require gcSupply >= 1000 * msg.value
        totalSupply += -1000 * msg.value
        gcSupply += -1000 * msg.value
        balanceOf[address(msg.sender)] += 1000 * msg.value
        require stor12
        funder.length++
        if not funder.length <= funder.length + 1:
            idx = 2 * funder.length + 1
            while 2 * funder.length > idx:
                funder[idx].field_0 = 0
                funder[idx].field_256 = 0
                idx = idx + 2
                continue 
    else:
        if block.timestamp <= ccEndTime:
            require totalSupply >= 1250 * msg.value
            require ccSupply >= 1250 * msg.value
            totalSupply += -1250 * msg.value
            ccSupply += -1250 * msg.value
            balanceOf[address(msg.sender)] += 1250 * msg.value
            require stor12
            funder.length++
            if not funder.length <= funder.length + 1:
                idx = 2 * funder.length + 1
                while 2 * funder.length > idx:
                    funder[idx].field_0 = 0
                    funder[idx].field_256 = 0
                    idx = idx + 2
                    continue 
        else:
            require block.timestamp >= gcStartTime
            require totalSupply >= 1000 * msg.value
            require gcSupply >= 1000 * msg.value
            totalSupply += -1000 * msg.value
            gcSupply += -1000 * msg.value
            balanceOf[address(msg.sender)] += 1000 * msg.value
            require stor12
            funder.length++
            if not funder.length <= funder.length + 1:
                idx = 2 * funder.length + 1
                while 2 * funder.length > idx:
                    funder[idx].field_0 = 0
                    funder[idx].field_256 = 0
                    idx = idx + 2
                    continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / stor12
    call stor5 with:
       value 75 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor6 with:
       value 300 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor7 with:
       value 100 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor8 with:
       value 225 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor9 with:
       value 300 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp >= ccStartTime
    require block.timestamp <= gcEndTime
    require msg.value >= stor12
    if msg.value < 10 * stor12:
        require block.timestamp >= gcStartTime
        require totalSupply >= 1000 * msg.value
        require gcSupply >= 1000 * msg.value
        totalSupply += -1000 * msg.value
        gcSupply += -1000 * msg.value
        balanceOf[address(msg.sender)] += 1000 * msg.value
        require stor12
        funder.length++
        if not funder.length <= funder.length + 1:
            idx = 2 * funder.length + 1
            while 2 * funder.length > idx:
                funder[idx].field_0 = 0
                funder[idx].field_256 = 0
                idx = idx + 2
                continue 
    else:
        if block.timestamp <= ccEndTime:
            require totalSupply >= 1250 * msg.value
            require ccSupply >= 1250 * msg.value
            totalSupply += -1250 * msg.value
            ccSupply += -1250 * msg.value
            balanceOf[address(msg.sender)] += 1250 * msg.value
            require stor12
            funder.length++
            if not funder.length <= funder.length + 1:
                idx = 2 * funder.length + 1
                while 2 * funder.length > idx:
                    funder[idx].field_0 = 0
                    funder[idx].field_256 = 0
                    idx = idx + 2
                    continue 
        else:
            require block.timestamp >= gcStartTime
            require totalSupply >= 1000 * msg.value
            require gcSupply >= 1000 * msg.value
            totalSupply += -1000 * msg.value
            gcSupply += -1000 * msg.value
            balanceOf[address(msg.sender)] += 1000 * msg.value
            require stor12
            funder.length++
            if not funder.length <= funder.length + 1:
                idx = 2 * funder.length + 1
                while 2 * funder.length > idx:
                    funder[idx].field_0 = 0
                    funder[idx].field_256 = 0
                    idx = idx + 2
                    continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / stor12
    call stor5 with:
       value 75 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor6 with:
       value 300 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor7 with:
       value 100 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor8 with:
       value 225 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor9 with:
       value 300 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
