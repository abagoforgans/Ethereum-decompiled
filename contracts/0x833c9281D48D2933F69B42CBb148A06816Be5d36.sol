contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10; offset 160
address stor10;
address stor11;
address stor12;

function _fallback() payable {
    stor5 = 0
    stor6 = 0
    stor7 = 100 * 10^6
    stor8 = 500
    stor9 = 10
    uint8(stor10.field_160) = 1
    require not msg.value
    mem[96 len -7338] = code.data[7790 len -7338]
    mem[64] = -7242
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor11 = mem[172 len 20]
    stor12 = mem[204 len 20]
    address(stor10.field_0) = mem[236 len 20]
    return code.data[452 len 7338]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 cap;
uint256 minimumSupport;
uint256 etherRatioForInvestor;
uint8 stor10; offset 160
uint128 stor10; offset 160
address sponseeAddress;
address rbInformationStoreAddress;
address rateAddress;

function name() {
    return name[0 len name.length].field_0
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

function minimumSupport() {
    return minimumSupport
}

function isPayableEnabled() {
    return bool(uint8(stor10.field_160))
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
    return 1
}

function changeSponseeAddress(address arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    sponseeAddress = arg1
    emit LogChangeSponseeAddress(arg1);
}

function increaseCap(uint256 arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require arg1 + cap >= cap
    cap += arg1
    emit LogIncreaseCap(arg1);
}

function setRBInformationStoreAddress(address arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.multiSigAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    rbInformationStoreAddress = arg1
    emit LogSetRBInformationStoreAddress(arg1);
}

function setSymbol(string arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    symbol[] = Array(len=arg1.length, data=arg1[all])
    emit LogSetSymbol(Array(len=arg1.length, data=arg1[all]));
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseCap(uint256 arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require arg1 <= cap
    require totalSupply <= cap - arg1
    require arg1 <= cap
    cap -= arg1
    emit LogDecreaseCap(arg1);
}

function changeIsPayableEnabled() {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.multiSigAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    Mask(96, 0, stor10.field_160) = Mask(96, 0, not uint8(stor10.field_160))
    emit LogChangeIsPayableEnabled(bool(0 or uint8(not uint8(stor10.field_160))));
}

function buy(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit LogBuy(arg3, msg.sender, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + totalSupply <= cap
    emit LogMint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function rollbackTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.multiSigAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require arg3 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg3
    require arg3 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
    emit LogRollbackTransfer(arg3, arg1, arg2);
    emit Transfer(arg3, arg1, arg2);
}

function setName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if 0 < arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit LogSetName(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length]));
}

function _fallback() payable {
    require uint8(stor10.field_160)
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.isPayableEnabledForAll() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require msg.value > 0
    require ext_code.size(rateAddress)
    call rateAddress.ETH_USD_rate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_call.return_data[0] * msg.value == (10^18 * ext_call.return_data[0] * msg.value / 10^18) + (ext_call.return_data[0] * msg.value % 10^18)
    require ext_call.return_data[0] * msg.value / 10^18 >= minimumSupport
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.etherRatioForOwner() with:
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
    call rbInformationStoreAddress.profitContainerAddress() with:
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
    call rateAddress.ETH_USD_rate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
    require ext_call.return_data[0] * msg.value == (10^18 * ext_call.return_data[0] * msg.value / 10^18) + (ext_call.return_data[0] * msg.value % 10^18)
    require (ext_call.return_data[0] * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
    require (ext_call.return_data[0] * msg.value / 10^18) + totalSupply >= totalSupply
    totalSupply += ext_call.return_data[0] * msg.value / 10^18
    require (ext_call.return_data[0] * msg.value / 10^18) + totalSupply <= cap
    emit LogExchange((ext_call.return_data[0] * msg.value / 10^18), msg.sender, this.address);
    mem[192] = uint256(name.field_0)
    idx = 192
    s = 0
    while name.length + 192 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit LogReceivedEther(msg.value, Array(len=name.length, data=mem[192 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32)]), msg.sender, this.address);
    emit Transfer((ext_call.return_data[0] * msg.value / 10^18), 0, msg.sender);
}



}
