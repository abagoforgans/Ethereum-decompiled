contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 42000
    stor7 = 30
    stor14 = 60
    stor15 = 30
    stor16 = 0
    stor17 = 0
    stor18 = 336 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    require code.data[8396 len 32] >= 0
    require code.data[8440 len 20]
    require code.data[8472 len 20]
    require code.data[8620 len 32] >= 0
    require code.data[8652 len 32] >= 0
    require code.data[8684 len 32] >= 0
    require msg.sender == stor0
    stor1 = code.data[8396 len 32]
    if stor18:
        require stor18
        require 6 * stor18 / stor18 == 6
    stor2 = stor1 + (6 * stor18)
    stor12 = code.data[8440 len 20]
    stor13 = code.data[8472 len 20]
    stor15 = code.data[8620 len 32]
    stor16 = code.data[8652 len 32]
    stor17 = code.data[8684 len 32]
    require msg.sender == stor0
    require code.data[8504 len 20]
    stor8 = code.data[8504 len 20]
    require msg.sender == stor0
    require code.data[8536 len 20]
    stor9 = code.data[8536 len 20]
    require msg.sender == stor0
    require code.data[8568 len 20]
    stor10 = code.data[8568 len 20]
    require msg.sender == stor0
    require code.data[8600 len 20]
    stor11 = code.data[8600 len 20]
    return code.data[1728 len 6668]
}



// =====================  Runtime code  =====================


address owner;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint256 weiRaised;
uint256 sub_cbec9657;
uint256 centsPerEther;
uint256 centsPerToken;
address fundsWalletAddress;
address tokensWalletAddress;
address sub_8f715722Address;
address sub_c76237c7Address;
address sub_4d2c682bAddress;
address sub_ddacbd9bAddress;
uint256 sub_4186f09f;
uint256 sub_ada0fc96;
uint256 tokenBonus;
uint256 sub_70d43d3b;
uint256 sub_9c9563a2;

function tokensWallet() {
    return tokensWalletAddress
}

function centsPerEther() {
    return centsPerEther
}

function endsAt() {
    return endsAt
}

function fundsWallet() {
    return fundsWalletAddress
}

function weiRaised() {
    return weiRaised
}

function sub_4186f09f(?) {
    return sub_4186f09f
}

function sub_4d2c682b(?) {
    return sub_4d2c682bAddress
}

function tokensSold() {
    return tokensSold
}

function tokenBonus() {
    return tokenBonus
}

function sub_70d43d3b(?) {
    return sub_70d43d3b
}

function owner() {
    return owner
}

function centsPerToken() {
    return centsPerToken
}

function sub_8f715722(?) {
    return sub_8f715722Address
}

function sub_9c9563a2(?) {
    return sub_9c9563a2
}

function sub_ada0fc96(?) {
    return sub_ada0fc96
}

function startsAt() {
    return startsAt
}

function sub_c76237c7(?) {
    return sub_c76237c7Address
}

function sub_cbec9657(?) {
    return sub_cbec9657
}

function sub_ddacbd9b(?) {
    return sub_ddacbd9bAddress
}

function sub_cc0e598e(?) {
    require msg.sender == owner
    sub_70d43d3b = arg1
}

function sub_77d5153d(?) {
    require msg.sender == owner
    require arg1
    sub_c76237c7Address = arg1
}

function sub_7ba52ece(?) {
    require msg.sender == owner
    require arg1
    sub_8f715722Address = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setFundsWallet(address arg1) {
    require msg.sender == owner
    require arg1
    fundsWalletAddress = arg1
}

function setTokensWallet(address arg1) {
    require msg.sender == owner
    require arg1
    tokensWalletAddress = arg1
}

function sub_3b1fee6c(?) {
    require sub_9c9563a2
    return (block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2)
}

function getDiscount() {
    require sub_9c9563a2
    return (sub_4186f09f - (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2))
}

function setCentsPerEther(uint256 arg1) {
    require msg.sender == sub_c76237c7Address
    require arg1 > 0
    centsPerEther = arg1
    emit EventCentsPerEtherChanged(centsPerEther, centsPerEther);
}

function setStartsAt(uint256 arg1) {
    require msg.sender == owner
    startsAt = arg1
    if sub_9c9563a2:
        require sub_9c9563a2
        require 6 * sub_9c9563a2 / sub_9c9563a2 == 6
    endsAt = startsAt + (6 * sub_9c9563a2)
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function sub_371b7c43(?) {
    require sub_9c9563a2
    require sub_4186f09f - (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) <= 100
    if not centsPerToken:
        return (centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100))
    require centsPerToken
    require (100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / centsPerToken == -sub_4186f09f + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) + 100
    return (centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100))
}

function sub_2e15a1da(?) {
    require sub_9c9563a2
    require sub_4186f09f - (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) <= 100
    if not centsPerToken:
        if not arg1:
            if not 100 * 10^6 * arg1:
                if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                    return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
            else:
                if 100 * 10^6 * arg1:
                    if (10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / 100 * 10^6 * arg1 == tokenBonus + 100:
                        if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                            return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
        else:
            if arg1:
                if 100 * 10^6 * arg1 / arg1 == 100 * 10^6:
                    if not 100 * 10^6 * arg1:
                        if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                            return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
                    else:
                        if 100 * 10^6 * arg1:
                            if (10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / 100 * 10^6 * arg1 == tokenBonus + 100:
                                if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                                    return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
    else:
        if centsPerToken:
            if (100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / centsPerToken == -sub_4186f09f + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) + 100:
                if not arg1:
                    if not 100 * 10^6 * arg1:
                        if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                            return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
                    else:
                        if 100 * 10^6 * arg1:
                            if (10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / 100 * 10^6 * arg1 == tokenBonus + 100:
                                if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                                    return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
                else:
                    if arg1:
                        if 100 * 10^6 * arg1 / arg1 == 100 * 10^6:
                            if not 100 * 10^6 * arg1:
                                if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                                    return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
                            else:
                                if 100 * 10^6 * arg1:
                                    if (10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / 100 * 10^6 * arg1 == tokenBonus + 100:
                                        if centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100):
                                            return ((10^10 * arg1) + (100 * 10^6 * tokenBonus * arg1) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100)
    revert
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startsAt
    require block.timestamp <= endsAt
    require msg.value
    require msg.value
    require msg.value * centsPerEther / msg.value == centsPerEther
    require sub_9c9563a2
    require sub_4186f09f - (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) <= 100
    if centsPerToken:
        require centsPerToken
        require (100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / centsPerToken == -sub_4186f09f + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) + 100
    if msg.value * centsPerEther / 10^18:
        require msg.value * centsPerEther / 10^18
        require 100 * 10^6 * msg.value * centsPerEther / 10^18 / msg.value * centsPerEther / 10^18 == 100 * 10^6
    if 100 * 10^6 * msg.value * centsPerEther / 10^18:
        require 100 * 10^6 * msg.value * centsPerEther / 10^18
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / 100 * 10^6 * msg.value * centsPerEther / 10^18 == tokenBonus + 100
    require centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100)
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require sub_cbec9657 + (msg.value * centsPerEther / 10^18) >= sub_cbec9657
    sub_cbec9657 += msg.value * centsPerEther / 10^18
    require ext_code.size(sub_4d2c682bAddress)
    call sub_4d2c682bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
    require ext_call.success
    require ext_code.size(sub_ddacbd9bAddress)
    call sub_ddacbd9bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
    require ext_call.success
    if (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100:
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 == sub_ada0fc96
    require ext_code.size(sub_4d2c682bAddress)
    call sub_4d2c682bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args tokensWalletAddress, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / 100
    require ext_call.success
    if (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100:
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 == sub_ada0fc96
    require ext_code.size(sub_ddacbd9bAddress)
    call sub_ddacbd9bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args tokensWalletAddress, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / 100
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * sub_70d43d3b / msg.value == sub_70d43d3b
    emit TokenPurchase(msg.value, msg.value * centsPerEther / 10^18, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100, msg.value * sub_70d43d3b / 100, msg.sender);
    if msg.value:
        require msg.value
        require (100 * msg.value) - (sub_70d43d3b * msg.value) / msg.value == -sub_70d43d3b + 100
    call fundsWalletAddress with:
       value (100 * msg.value) - (sub_70d43d3b * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if sub_70d43d3b > 0:
        require (100 * msg.value) - (sub_70d43d3b * msg.value) / 100 <= msg.value
        call sub_8f715722Address with:
           value msg.value - ((100 * msg.value) - (sub_70d43d3b * msg.value) / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startsAt
    require block.timestamp <= endsAt
    require msg.value
    require msg.value
    require msg.value * centsPerEther / msg.value == centsPerEther
    require sub_9c9563a2
    require sub_4186f09f - (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) <= 100
    if centsPerToken:
        require centsPerToken
        require (100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / centsPerToken == -sub_4186f09f + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2) + 100
    if msg.value * centsPerEther / 10^18:
        require msg.value * centsPerEther / 10^18
        require 100 * 10^6 * msg.value * centsPerEther / 10^18 / msg.value * centsPerEther / 10^18 == 100 * 10^6
    if 100 * 10^6 * msg.value * centsPerEther / 10^18:
        require 100 * 10^6 * msg.value * centsPerEther / 10^18
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / 100 * 10^6 * msg.value * centsPerEther / 10^18 == tokenBonus + 100
    require centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100)
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require sub_cbec9657 + (msg.value * centsPerEther / 10^18) >= sub_cbec9657
    sub_cbec9657 += msg.value * centsPerEther / 10^18
    require ext_code.size(sub_4d2c682bAddress)
    call sub_4d2c682bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
    require ext_call.success
    require ext_code.size(sub_ddacbd9bAddress)
    call sub_ddacbd9bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
    require ext_call.success
    if (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100:
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 == sub_ada0fc96
    require ext_code.size(sub_4d2c682bAddress)
    call sub_4d2c682bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args tokensWalletAddress, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / 100
    require ext_call.success
    if (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100:
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100
        require (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 == sub_ada0fc96
    require ext_code.size(sub_ddacbd9bAddress)
    call sub_ddacbd9bAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args tokensWalletAddress, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100 * sub_ada0fc96 / 100
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * sub_70d43d3b / msg.value == sub_70d43d3b
    emit TokenPurchase(msg.value, msg.value * centsPerEther / 10^18, (10^10 * msg.value * centsPerEther / 10^18) + (100 * 10^6 * tokenBonus * msg.value * centsPerEther / 10^18) / centsPerToken - ((100 * centsPerToken) - (sub_4186f09f * centsPerToken) + (10 * block.timestamp + -startsAt + -(block.timestamp + -startsAt - 1 % sub_9c9563a2) - 1 / sub_9c9563a2 * centsPerToken) / 100) / 100, msg.value * sub_70d43d3b / 100, arg1);
    if msg.value:
        require msg.value
        require (100 * msg.value) - (sub_70d43d3b * msg.value) / msg.value == -sub_70d43d3b + 100
    call fundsWalletAddress with:
       value (100 * msg.value) - (sub_70d43d3b * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if sub_70d43d3b > 0:
        require (100 * msg.value) - (sub_70d43d3b * msg.value) / 100 <= msg.value
        call sub_8f715722Address with:
           value msg.value - ((100 * msg.value) - (sub_70d43d3b * msg.value) / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
