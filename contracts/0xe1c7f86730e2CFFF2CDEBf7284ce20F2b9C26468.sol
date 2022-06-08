contract main {




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

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buy(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit LogBuy(arg3, msg.sender, arg1, arg2);
}

function changeSponseeAddress(address arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    sponseeAddress = arg1
    emit LogChangeSponseeAddress(arg1);
}

function increaseCap(uint256 arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require cap + arg1 >= cap
    cap += arg1
    emit LogIncreaseCap(arg1);
}

function setRBInformationStoreAddress(address arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.multiSigAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    rbInformationStoreAddress = arg1
    emit LogSetRBInformationStoreAddress(arg1);
}

function setSymbol(string arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    symbol[] = Array(len=arg1.length, data=arg1[all])
    emit LogSetSymbol(Array(len=arg1.length, data=arg1[all]));
}

function setName(string arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    emit LogSetName(Array(len=arg1.length, data=arg1[all]));
}

function decreaseCap(uint256 arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    Mask(96, 0, stor10.field_160) = Mask(96, 0, not bool(uint8(stor10.field_160)))
    emit LogChangeIsPayableEnabled(bool(uint8(stor10.field_160)));
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.accountAddressForSponsee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require totalSupply <= cap
    emit LogMint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function rollbackTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.multiSigAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require arg3 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg3
    require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg3
    emit LogRollbackTransfer(arg3, arg1, arg2);
    emit Transfer(arg3, arg1, arg2);
}

function _fallback() payable {
    require uint8(stor10.field_160)
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.isPayableEnabledForAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.value > 0
    require ext_code.size(rateAddress)
    call rateAddress.ETH_USD_rate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
    require msg.value * ext_call.return_data[0] == (10^18 * msg.value * ext_call.return_data[0] / 10^18) + (msg.value * ext_call.return_data[0] % 10^18)
    require msg.value * ext_call.return_data[0] / 10^18 >= minimumSupport
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.etherRatioForOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 100
    require etherRatioForInvestor <= -ext_call.return_data[0] + 100
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
    require msg.value * ext_call.return_data[0] == (100 * msg.value * ext_call.return_data[0] / 100) + (msg.value * ext_call.return_data[0] % 100)
    if msg.value:
        require msg.value
        require msg.value * etherRatioForInvestor / msg.value == etherRatioForInvestor
    require msg.value * etherRatioForInvestor == (100 * msg.value * etherRatioForInvestor / 100) + (msg.value * etherRatioForInvestor % 100)
    if msg.value:
        require msg.value
        require (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) / msg.value == -ext_call.return_data[0] + -etherRatioForInvestor + 100
    require (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) == (100 * (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) / 100) + ((100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) % 100)
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.profitContainerAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.companyWalletAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(ext_call.return_data[0]) with:
       value msg.value * etherRatioForInvestor / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value * ext_call.return_data[0] / 100 wei
         gas 2300 * is_zero(value) wei
    call sponseeAddress with:
       value (100 * msg.value) - (ext_call.return_data[0] * msg.value) - (etherRatioForInvestor * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(rateAddress)
    call rateAddress.ETH_USD_rate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
    require msg.value * ext_call.return_data[0] == (10^18 * msg.value * ext_call.return_data[0] / 10^18) + (msg.value * ext_call.return_data[0] % 10^18)
    require balanceOf[address(msg.sender)] + (msg.value * ext_call.return_data[0] / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * ext_call.return_data[0] / 10^18
    require totalSupply + (msg.value * ext_call.return_data[0] / 10^18) >= totalSupply
    totalSupply += msg.value * ext_call.return_data[0] / 10^18
    require totalSupply <= cap
    emit LogExchange((msg.value * ext_call.return_data[0] / 10^18), msg.sender, this.address);
    mem[192] = uint256(name.field_0)
    idx = 192
    s = 0
    while name.length + 192 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit LogReceivedEther(msg.value, Array(len=name.length, data=mem[192 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32)]), msg.sender, this.address);
    emit Transfer((msg.value * ext_call.return_data[0] / 10^18), 0, msg.sender);
}



}
