contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor8;
address stor9;
uint8 stor10; offset 160
address stor11;

function _fallback() payable {
    stor2 = 25 * 10^14
    stor4 = 0
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor9 = code.data[7476 len 20]
    stor11 = code.data[7476 len 20]
    stor8 = code.data[7496 len 32]
    stor10 = 1
    return code.data[221 len 7243]
}



// =====================  Runtime code  =====================


address owner;
address sub_192093e0Address;
uint256 sub_858bcfa6;
uint256 sub_239b30ca;
uint256 sub_f975627c;
uint256 tokensBought;
uint256 tokensLeft;
uint256 presaleDeadline;
uint256 sub_30acee5d;
address tokenContractAddress;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint8 stor10; offset 176
address hotWalletAddress;
address tokenRewardAddress;
mapping of uint256 balances;
mapping of uint256 sub_37dec312;
mapping of uint256 stor14;

function sub_192093e0(?) {
    return sub_192093e0Address
}

function sub_20880a64(?) {
    return bool(uint8(stor10.field_176))
}

function sub_239b30ca(?) {
    return sub_239b30ca
}

function sub_2643793c(?) {
    return bool(uint8(stor10.field_168))
}

function balances(address arg1) {
    return balances[arg1]
}

function hotWallet() {
    return hotWalletAddress
}

function sub_30acee5d(?) {
    return sub_30acee5d
}

function sub_37dec312(?) {
    return sub_37dec312[arg1]
}

function tokenReward() {
    return tokenRewardAddress
}

function tokensBought() {
    return tokensBought
}

function tokenContractAddress() {
    return tokenContractAddress
}

function sub_858bcfa6(?) {
    return sub_858bcfa6
}

function owner() {
    return owner
}

function tokensLeft() {
    return tokensLeft
}

function sub_bf572dc1(?) {
    return bool(uint8(stor10.field_160))
}

function presaleDeadline() {
    return presaleDeadline
}

function sub_f975627c(?) {
    return sub_f975627c
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require owner == arg1
    owner = arg1
    return 1
}

function sub_141e3922(?) {
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require sub_192093e0Address == arg1
    sub_192093e0Address = arg1
    return 1
}

function sub_a07daf19(?) {
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require uint8(stor10.field_168)
    require uint8(stor10.field_160)
    uint8(stor10.field_160) = 0
    return 1
}

function sub_5cefd2d5(?) {
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require uint8(stor10.field_168)
    require not uint8(stor10.field_160)
    uint8(stor10.field_160) = 1
    return 1
}

function sub_e65d73c8(?) {
    require stor14[address(msg.sender)] > 0
    stor14[address(msg.sender)] = 0
    call msg.sender with:
       value stor14[address(msg.sender)] wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function setHotWallet(address arg1) {
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require uint8(stor10.field_160)
    require sub_30acee5d > 0
    hotWalletAddress = arg1
    uint8(stor10.field_176) = 1
    emit 0xca93d40f: 1
    return 1
}

function sub_eb440f56(?) {
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require uint8(stor10.field_160)
    require sub_30acee5d > 0
    require uint8(stor10.field_176)
    require arg1 > 0
    sub_f975627c = arg1
    tokensLeft = arg1
    uint8(stor10.field_160) = 0
    uint8(stor10.field_168) = 1
    balances[address(this.address)] = arg1
    presaleDeadline = (60 * sub_30acee5d) + block.timestamp
    emit 0xd8d4ee14: 1
    return 1
}

function withdrawRemainingTokens() {
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require block.timestamp > presaleDeadline
    require balances[address(this.address)] > 0
    balances[address(this.address)] = 0
    tokensLeft = 0
    sub_f975627c = 0
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balances[address(this.address)]
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x4af106c2: msg.sender, balances[address(this.address)], 1
    return 1
}

function sub_212bea21(?) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require uint8(stor10.field_168)
    require arg2 > 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    require arg2 + sub_37dec312[hash] >= sub_37dec312[hash]
    sub_37dec312[hash] += arg2
    require arg2 + tokensBought >= tokensBought
    tokensBought += arg2
    require arg2 <= tokensLeft
    tokensLeft -= arg2
    require arg2 <= sub_f975627c
    sub_f975627c -= arg2
    emit 0x1c917a43: arg2, hash, 1
    return 1
}

function sub_c9a63632(?) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require sub_192093e0Address == msg.sender
    require uint8(stor10.field_168)
    require owner != arg2
    require sub_192093e0Address != arg2
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    require sub_37dec312[hash] > 0
    sub_37dec312[hash] = 0
    require sub_37dec312[hash] <= balances[address(this.address)]
    balances[address(this.address)] -= sub_37dec312[hash]
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), sub_37dec312[hash]
    require ext_call.success
    require ext_call.return_data[0]
    emit 0xdb571110: address(arg2), sub_37dec312[hash], 1
    return 1
}

function sub_a01fd1bd(?) payable {
    require not uint8(stor10.field_160)
    require sub_30acee5d > 0
    require arg1
    require block.timestamp <= presaleDeadline
    require tokensLeft > 0
    require msg.value > 0
    require msg.value >= sub_858bcfa6
    require sub_858bcfa6
    if msg.value / sub_858bcfa6:
        require msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 / msg.value / sub_858bcfa6 == 10^18
    if 10^18 * msg.value / sub_858bcfa6 < tokensLeft:
        require (10^18 * msg.value / sub_858bcfa6) + balances[address(arg1)] >= balances[address(arg1)]
        balances[address(arg1)] += 10^18 * msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 <= balances[this.address]
        balances[address(this.address)] = balances[this.address] - (10^18 * msg.value / sub_858bcfa6)
        require (10^18 * msg.value / sub_858bcfa6) + tokensBought >= tokensBought
        tokensBought += 10^18 * msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 <= tokensLeft
        tokensLeft += -1 * 10^18 * msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 <= sub_f975627c
        sub_f975627c += -1 * 10^18 * msg.value / sub_858bcfa6
        if not tokensLeft:
            uint8(stor10.field_160) = 1
        require 10^18 * msg.value / sub_858bcfa6 > 0
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 10^18 * msg.value / sub_858bcfa6
        require ext_call.success
        require ext_call.return_data[0]
        emit FundTransfer(address(arg1), 10^18 * msg.value / sub_858bcfa6, 1);
        call hotWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if tokensLeft:
            require tokensLeft
            require sub_858bcfa6 * tokensLeft / tokensLeft == sub_858bcfa6
        if msg.value - (sub_858bcfa6 * tokensLeft / 10^18) > 0:
            require msg.value - (sub_858bcfa6 * tokensLeft / 10^18) + stor14[address(arg1)] >= stor14[address(arg1)]
            stor14[address(arg1)] = msg.value - (sub_858bcfa6 * tokensLeft / 10^18) + stor14[address(arg1)]
        require tokensLeft + balances[address(arg1)] >= balances[address(arg1)]
        balances[address(arg1)] += tokensLeft
        require tokensLeft <= balances[this.address]
        balances[address(this.address)] = balances[this.address] - tokensLeft
        require tokensLeft + tokensBought >= tokensBought
        tokensBought += tokensLeft
        require tokensLeft <= tokensLeft
        tokensLeft = 0
        require tokensLeft <= sub_f975627c
        sub_f975627c -= tokensLeft
        if not tokensLeft:
            uint8(stor10.field_160) = 1
        require tokensLeft > 0
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), tokensLeft
        require ext_call.success
        require ext_call.return_data[0]
        emit FundTransfer(address(arg1), tokensLeft, 1);
        call hotWalletAddress with:
           value sub_858bcfa6 * tokensLeft / 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor10.field_160)
    require sub_30acee5d > 0
    require msg.sender
    require block.timestamp <= presaleDeadline
    require tokensLeft > 0
    require msg.value > 0
    require msg.value >= sub_858bcfa6
    require sub_858bcfa6
    if msg.value / sub_858bcfa6:
        require msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 / msg.value / sub_858bcfa6 == 10^18
    if 10^18 * msg.value / sub_858bcfa6 < tokensLeft:
        require (10^18 * msg.value / sub_858bcfa6) + balances[address(msg.sender)] >= balances[address(msg.sender)]
        balances[address(msg.sender)] += 10^18 * msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 <= balances[this.address]
        balances[address(this.address)] = balances[this.address] - (10^18 * msg.value / sub_858bcfa6)
        require (10^18 * msg.value / sub_858bcfa6) + tokensBought >= tokensBought
        tokensBought += 10^18 * msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 <= tokensLeft
        tokensLeft += -1 * 10^18 * msg.value / sub_858bcfa6
        require 10^18 * msg.value / sub_858bcfa6 <= sub_f975627c
        sub_f975627c += -1 * 10^18 * msg.value / sub_858bcfa6
        if not tokensLeft:
            uint8(stor10.field_160) = 1
        require 10^18 * msg.value / sub_858bcfa6 > 0
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^18 * msg.value / sub_858bcfa6
        require ext_call.success
        require ext_call.return_data[0]
        emit FundTransfer(msg.sender, 10^18 * msg.value / sub_858bcfa6, 1);
        call hotWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if tokensLeft:
            require tokensLeft
            require sub_858bcfa6 * tokensLeft / tokensLeft == sub_858bcfa6
        if msg.value - (sub_858bcfa6 * tokensLeft / 10^18) > 0:
            require msg.value - (sub_858bcfa6 * tokensLeft / 10^18) + stor14[address(msg.sender)] >= stor14[address(msg.sender)]
            stor14[address(msg.sender)] = msg.value - (sub_858bcfa6 * tokensLeft / 10^18) + stor14[address(msg.sender)]
        require tokensLeft + balances[address(msg.sender)] >= balances[address(msg.sender)]
        balances[address(msg.sender)] += tokensLeft
        require tokensLeft <= balances[this.address]
        balances[address(this.address)] = balances[this.address] - tokensLeft
        require tokensLeft + tokensBought >= tokensBought
        tokensBought += tokensLeft
        require tokensLeft <= tokensLeft
        tokensLeft = 0
        require tokensLeft <= sub_f975627c
        sub_f975627c -= tokensLeft
        if not tokensLeft:
            uint8(stor10.field_160) = 1
        require tokensLeft > 0
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, tokensLeft
        require ext_call.success
        require ext_call.return_data[0]
        emit FundTransfer(msg.sender, tokensLeft, 1);
        call hotWalletAddress with:
           value sub_858bcfa6 * tokensLeft / 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
