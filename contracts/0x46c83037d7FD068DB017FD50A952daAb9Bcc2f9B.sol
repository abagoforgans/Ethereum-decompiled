contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint8 stor6; offset 8
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor6 = 1
    stor10 = 20 * 10^18
    stor11 = 2 * 10^6
    stor12 = 453550
    require not msg.value
    stor0 = msg.sender
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'PREVE' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 18
    stor3.length.field_8 = 'Presale EVE Tokens' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    require address(code.data[5702 len 32])
    stor9 = address(code.data[5702 len 32])
    return code.data[521 len 5181]
}



// =====================  Runtime code  =====================


const TEST_CONTRIBUTION = 10^16

const START_DATE = (420362 * 3600)


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint8 stor6;
uint8 stor6; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor9; offset 160
address walletAddress;
uint256 ethMinContribution;
uint256 usdCap;
uint256 usdPerKEther;
uint256 contributedEth;
uint256 contributedUsd;
address whitelistAddress;
address picopsCertifierAddress;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function ethMinContribution() {
    return ethMinContribution
}

function mintable() {
    return bool(uint8(stor6.field_8))
}

function wallet() {
    return walletAddress
}

function closed() {
    return bool(stor9)
}

function picopsCertifier() {
    return picopsCertifierAddress
}

function usdCap() {
    return usdCap
}

function contributedUsd() {
    return contributedUsd
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferable() {
    return bool(uint8(stor6.field_0))
}

function whitelist() {
    return whitelistAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function contributedEth() {
    return contributedEth
}

function usdPerKEther() {
    return usdPerKEther
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function ethCap() {
    require usdPerKEther
    return (1000 * 10^18 * usdCap / usdPerKEther)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function setUsdCap(uint256 arg1) {
    require owner == msg.sender
    emit UsdCapUpdated(usdCap, arg1);
    usdCap = arg1
}

function setUsdPerKEther(uint256 arg1) {
    require owner == msg.sender
    emit UsdPerKEtherUpdated(usdPerKEther, arg1);
    usdPerKEther = arg1
}

function setWhitelist(address arg1) {
    require owner == msg.sender
    emit WhitelistUpdated(whitelistAddress, arg1);
    whitelistAddress = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function enableTransfers() {
    require owner == msg.sender
    require not uint8(stor6.field_0)
    uint8(stor6.field_0) = 1
    emit TransfersEnabled()
}

function setEthMinContribution(uint256 arg1) {
    require owner == msg.sender
    emit EthMinContributionUpdated(ethMinContribution, arg1);
    ethMinContribution = arg1
}

function setPICOPSCertifier(address arg1) {
    require owner == msg.sender
    emit PICOPSCertifierUpdated(picopsCertifierAddress, arg1);
    picopsCertifierAddress = arg1
}

function closeSale() {
    require owner == msg.sender
    require not stor9
    stor9 = 1
    require uint8(stor6.field_8)
    uint8(stor6.field_8) = 0
    emit MintingDisabled()
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor6.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor6.field_0)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor6.field_0)
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addressCanContribute(address arg1) {
    require ext_code.size(whitelistAddress)
    call whitelistAddress.0x9b19251a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        return (ext_call.return_data[0] > 0)
    require ext_code.size(picopsCertifierAddress)
    call picopsCertifierAddress.certified(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if block.timestamp < 420362 * 3600:
        require owner == msg.sender
        require msg.value == 10^16
    require not stor9
    require ext_code.size(whitelistAddress)
    call whitelistAddress.0x9b19251a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        require ext_code.size(picopsCertifierAddress)
        call picopsCertifierAddress.certified(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    require msg.value >= ethMinContribution
    require usdPerKEther
    require msg.value + contributedEth >= contributedEth
    if msg.value + contributedEth <= 1000 * 10^18 * usdCap / usdPerKEther:
        require msg.value > 0
        require msg.value + contributedEth >= contributedEth
        contributedEth += msg.value
        require (msg.value * usdPerKEther / 1000 * 10^18) + contributedUsd >= contributedUsd
        contributedUsd += msg.value * usdPerKEther / 1000 * 10^18
        require uint8(stor6.field_8)
        require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value
        require msg.value + _totalSupply >= _totalSupply
        _totalSupply += msg.value
        emit Transfer(msg.value, 0, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Contributed(msg.value, 0, msg.value * usdPerKEther / 1000 * 10^18, contributedEth, contributedUsd, msg.sender);
    else:
        require usdPerKEther
        require contributedEth <= 1000 * 10^18 * usdCap / usdPerKEther
        require (1000 * 10^18 * usdCap / usdPerKEther) - contributedEth <= msg.value
        require (1000 * 10^18 * usdCap / usdPerKEther) - contributedEth > 0
        require 1000 * 10^18 * usdCap / usdPerKEther >= contributedEth
        contributedEth = 1000 * 10^18 * usdCap / usdPerKEther
        require ((1000 * 10^18 * usdCap / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18) + contributedUsd >= contributedUsd
        contributedUsd += (1000 * 10^18 * usdCap / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18
        require uint8(stor6.field_8)
        require (1000 * 10^18 * usdCap / usdPerKEther) - contributedEth + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (1000 * 10^18 * usdCap / usdPerKEther) - contributedEth + balanceOf[address(msg.sender)]
        require (1000 * 10^18 * usdCap / usdPerKEther) - contributedEth + _totalSupply >= _totalSupply
        _totalSupply = (1000 * 10^18 * usdCap / usdPerKEther) - contributedEth + _totalSupply
        emit Transfer(((1000 * 10^18 * usdCap / usdPerKEther) - contributedEth), 0, msg.sender);
        call walletAddress with:
           value (1000 * 10^18 * usdCap / usdPerKEther) - contributedEth wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Contributed((1000 * 10^18 * usdCap / usdPerKEther) - contributedEth, 0, (1000 * 10^18 * usdCap / usdPerKEther * usdPerKEther) - (contributedEth * usdPerKEther) / 1000 * 10^18, contributedEth, contributedUsd, msg.sender);
        if msg.value - (1000 * 10^18 * usdCap / usdPerKEther) + contributedEth > 0:
            call msg.sender with:
               value msg.value - (1000 * 10^18 * usdCap / usdPerKEther) + contributedEth wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
