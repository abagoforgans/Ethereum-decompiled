contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
uint8 stor14; offset 160
address stor14;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'SOLA COIN' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'SLC' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 500 * 10^6 * 10^stor4
    stor7 = 10^9 * 10^stor4
    stor10 = 500
    stor11 = 10
    uint8(stor14.field_160) = 0
    require not msg.value
    stor8 = code.data[6937 len 20]
    stor9 = code.data[6969 len 20]
    stor12 = code.data[7001 len 20]
    stor13 = code.data[7033 len 20]
    address(stor14.field_0) = code.data[7065 len 20]
    stor1[code.data[7097 len 20]] = stor6
    return code.data[588 len 6337]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
uint256 cap;
address rbInformationStoreAddress;
address rateAddress;
uint256 minimumSupport;
uint256 etherRatioForInvestor;
address sponseeAddress;
address multiSigAddress;
uint8 isPayableEnabled; offset 160
uint128 stor14; offset 160
address accountAddressForSponseeAddress;

function name() {
    return name[0 len name.length].field_0
}

function multiSigAddress() {
    return multiSigAddress
}

function totalSupply() {
    return totalSupply
}

function sponseeAddress() {
    return sponseeAddress
}

function rate() {
    return rateAddress
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function etherRatioForInvestor() {
    return etherRatioForInvestor
}

function accountAddressForSponseeAddress() {
    return accountAddressForSponseeAddress
}

function minimumSupport() {
    return minimumSupport
}

function isPayableEnabled() {
    return bool(isPayableEnabled)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function rbInformationStore() {
    return rbInformationStoreAddress
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function changeMultiSigAddress(address arg1) {
    require multiSigAddress == msg.sender
    multiSigAddress = arg1
    emit LogChangeMultiSigAddress(arg1);
}

function changeIsPayableEnabled() {
    require multiSigAddress == msg.sender
    stor14 = Mask(96, 0, not isPayableEnabled)
    emit LogChangeIsPayableEnabled()
}

function changeSponseeAddress(address arg1) {
    require accountAddressForSponseeAddress == msg.sender
    sponseeAddress = arg1
    emit LogChangeSponseeAddress(arg1);
}

function setRBInformationStoreAddress(address arg1) {
    require multiSigAddress == msg.sender
    rbInformationStoreAddress = arg1
    emit LogSetRBInformationStoreAddress(arg1);
}

function changeAccountAddressForSponseeAddress(address arg1) {
    require accountAddressForSponseeAddress == msg.sender
    accountAddressForSponseeAddress = arg1
    emit LogChangeAccountAddressForSponseeAddress(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function increaseCap(uint256 arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 + cap >= cap
    cap += arg1
    emit LogIncreaseCap(arg1);
}

function mint(address arg1, uint256 arg2) {
    require multiSigAddress == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + totalSupply <= cap
    emit LogMint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function setSymbol(string arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    symbol[] = Array(len=arg1.length, data=arg1[all])
    emit LogSetSymbol(Array(len=arg1.length, data=arg1[all]));
}

function buy(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit LogBuy(arg3, msg.sender, arg1, arg2);
}

function decreaseCap(uint256 arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 <= cap
    require totalSupply <= cap - arg1
    require arg1 <= cap
    cap -= arg1
    emit LogDecreaseCap(arg1);
}

function rollbackTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require multiSigAddress == msg.sender
    require arg3 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg3
    require arg3 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
    emit LogRollbackTransfer(arg3, arg1, arg2);
    emit Transfer(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function setName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if 0 < arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit LogSetName(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length]));
}

function _fallback() payable {
    require isPayableEnabled
    require msg.value > 0
    require ext_code.size(rateAddress)
    call rateAddress.0xe7a6e75c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_call.return_data[0] * msg.value == (10^18 * ext_call.return_data[0] * msg.value / 10^18) + (ext_call.return_data[0] * msg.value % 10^18)
    require ext_call.return_data[0] * msg.value / 10^18 >= minimumSupport
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.0xd3400a1d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 100
    require etherRatioForInvestor <= -ext_call.return_data[0] + 100
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_call.return_data[0] * msg.value == (100 * ext_call.return_data[0] * msg.value / 100) + (ext_call.return_data[0] * msg.value % 100)
    if msg.value:
        require msg.value
        require etherRatioForInvestor * msg.value / msg.value == etherRatioForInvestor
    require etherRatioForInvestor * msg.value == (100 * etherRatioForInvestor * msg.value / 100) + (etherRatioForInvestor * msg.value % 100)
    if msg.value:
        require msg.value
        require (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) / msg.value == -ext_call.return_data[0] + -etherRatioForInvestor + 100
    require (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) == (100 * (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) / 100) + ((100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) % 100)
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.0x25cb4f2c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.companyWalletAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       value etherRatioForInvestor * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call ext_call.return_data[12 len 20] with:
       value ext_call.return_data[0] * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call sponseeAddress with:
       value (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(rateAddress)
    call rateAddress.0xe7a6e75c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require (ext_call.return_data[0] * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += ext_call.return_data[0] * msg.value
    require (ext_call.return_data[0] * msg.value) + totalSupply >= totalSupply
    totalSupply += ext_call.return_data[0] * msg.value
    require (ext_call.return_data[0] * msg.value) + totalSupply <= cap
    emit LogExchange((ext_call.return_data[0] * msg.value), msg.sender, this.address);
    mem[192] = uint256(name.field_0)
    idx = 192
    s = 0
    while name.length + 192 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit LogReceivedEther(msg.value, Array(len=name.length, data=mem[192 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32)]), msg.sender, this.address);
    emit Transfer((ext_call.return_data[0] * msg.value), 0, msg.sender);
}



}
