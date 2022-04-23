contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;

function _fallback() payable {
    stor2 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = msg.sender
    stor6 = msg.sender
    return code.data[134 len 7781]
}



// =====================  Runtime code  =====================


const name = 'Gizer Gaming Presale Token'

const decimals = 6

const atNow = block.timestamp

const symbol = 'GZRPRE'

const DATE_PRESALE_START = (420014 * 3600)

const TOKETH_PRESALE_THREE = 1075 * 10^6

const MIN_CONTRIBUTION = 10^17

const PRIVATE_SALE_MAX_ETHER = 1000 * 10^18

const DATE_PRESALE_END = (420254 * 3600)

const CUTOFF_PRESALE_ONE = 100

const TOKETH_PRESALE_ONE = 1150 * 10^6

const MAX_CONTRIBUTION = 2300 * 10^18

const FUNDING_PRESALE_MAX = 2300 * 10^18

const TOKETH_PRESALE_TWO = 1100 * 10^6

const CUTOFF_PRESALE_TWO = 500


address owner;
address newOwner;
uint256 tokensIssuedTotal;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address walletAddress;
address redemptionWalletAddress;
uint256 etherReceivedPrivate;
uint256 etherReceivedCrowd;
uint256 tokensIssuedPrivate;
uint256 tokensIssuedCrowd;
uint256 tokensBurnedTotal;
uint256 presaleContributorCount;
uint8 tokensFrozen;
mapping of uint256 balanceEthPrivate;
mapping of uint256 balanceEthCrowd;
mapping of uint256 balancesPrivate;
mapping of uint256 balancesCrowd;

function totalSupply() {
    return tokensIssuedTotal
}

function etherReceivedCrowd() {
    return etherReceivedCrowd
}

function balancesPrivate(address arg1) {
    return balancesPrivate[arg1]
}

function tokensFrozen() {
    return bool(tokensFrozen)
}

function tokensIssuedPrivate() {
    return tokensIssuedPrivate
}

function presaleContributorCount() {
    return presaleContributorCount
}

function tokensIssuedCrowd() {
    return tokensIssuedCrowd
}

function wallet() {
    return walletAddress
}

function balanceEthPrivate(address arg1) {
    return balanceEthPrivate[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function redemptionWallet() {
    return redemptionWalletAddress
}

function tokensIssuedTotal() {
    return tokensIssuedTotal
}

function owner() {
    return owner
}

function tokensBurnedTotal() {
    return tokensBurnedTotal
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function balanceEthCrowd(address arg1) {
    return balanceEthCrowd[arg1]
}

function etherReceivedPrivate() {
    return etherReceivedPrivate
}

function balancesCrowd(address arg1) {
    return balancesCrowd[arg1]
}

function freezeTokens() {
    require owner == msg.sender
    require block.timestamp > 420254 * 3600
    tokensFrozen = 1
}

function acceptOwnership() {
    require newOwner == msg.sender
    owner = newOwner
    emit OwnershipTransferred(newOwner);
}

function setWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
    emit WalletUpdated(arg1);
}

function setRedemptionWallet(address arg1) {
    require owner == msg.sender
    redemptionWalletAddress = arg1
    emit RedemptionWalletUpdated(arg1);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    require arg1
    newOwner = arg1
    emit OwnershipTransferProposed(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
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

function burnOwnerTokens() {
    require owner == msg.sender
    require balanceOf[stor0] > 0
    balanceOf[stor0] = 0
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args tokensIssuedTotal, balanceOf[stor0]
    require delegate.return_code
    tokensIssuedTotal = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args tokensBurnedTotal, balanceOf[stor0]
    require delegate.return_code
    tokensBurnedTotal = delegate.return_data[0]
    emit Transfer(balanceOf[stor0], owner, 0);
    emit OwnerTokensBurned(balanceOf[stor0], tokensBurnedTotal);
}

function transfer(address arg1, uint256 arg2) {
    if owner != arg1:
        require not tokensFrozen
        require redemptionWalletAddress == arg1
    require balanceOf[address(msg.sender)] >= arg2
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(msg.sender)], arg2
    require delegate.return_code
    balanceOf[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[arg1], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not tokensFrozen
    require redemptionWalletAddress == arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg1)], arg3
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args allowance[address(arg1)][address(msg.sender)], arg3
    require delegate.return_code
    allowance[address(arg1)][address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg2)], arg3
    require delegate.return_code
    balanceOf[address(arg2)] = delegate.return_data[0]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function privateSaleContribution(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require block.timestamp < 420254 * 3600
    require arg2 >= 10^17
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args etherReceivedPrivate, arg2
    require delegate.return_code
    require delegate.return_data[0] <= 1000 * 10^18
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xc8a4ac9c with:
         gas gas_remaining - 710 wei
        args 1150 * 10^6, arg2
    require delegate.return_code
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg1)], delegate.return_data[0] / 10^18
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args tokensIssuedCrowd, delegate.return_data[0] / 10^18
    require delegate.return_code
    tokensIssuedCrowd = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args tokensIssuedTotal, delegate.return_data[0] / 10^18
    require delegate.return_code
    tokensIssuedTotal = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args tokensIssuedPrivate, delegate.return_data[0] / 10^18
    require delegate.return_code
    tokensIssuedPrivate = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args etherReceivedPrivate, arg2
    require delegate.return_code
    etherReceivedPrivate = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balancesPrivate[address(arg1)], delegate.return_data[0] / 10^18
    require delegate.return_code
    balancesPrivate[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceEthPrivate[address(arg1)], arg2
    require delegate.return_code
    balanceEthPrivate[address(arg1)] = delegate.return_data[0]
    emit Transfer((delegate.return_data[0] / 10^18), 0, arg1);
    emit TokensIssued(delegate.return_data[0] / 10^18, balanceOf[address(arg1)], tokensIssuedCrowd, arg2, arg1, 1);
    if eth.balance(this.address) > 0:
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    require block.timestamp > 420014 * 3600
    require block.timestamp < 420254 * 3600
    require msg.value >= 10^17
    require msg.value <= 2300 * 10^18
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args etherReceivedCrowd, msg.value
    require delegate.return_code
    require delegate.return_data[0] <= 2300 * 10^18
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    if presaleContributorCount < 100:
        delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xc8a4ac9c with:
             gas gas_remaining - 710 wei
            args 1150 * 10^6, msg.value
    else:
        if presaleContributorCount >= 500:
            delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xc8a4ac9c with:
                 gas gas_remaining - 710 wei
                args 1075 * 10^6, msg.value
        else:
            delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0xc8a4ac9c with:
                 gas gas_remaining - 710 wei
                args 1100 * 10^6, msg.value
    require delegate.return_code
    presaleContributorCount++
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(msg.sender)], delegate.return_data[0] / 10^18
    require delegate.return_code
    balanceOf[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args tokensIssuedCrowd, delegate.return_data[0] / 10^18
    require delegate.return_code
    tokensIssuedCrowd = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args tokensIssuedTotal, delegate.return_data[0] / 10^18
    require delegate.return_code
    tokensIssuedTotal = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args etherReceivedCrowd, msg.value
    require delegate.return_code
    etherReceivedCrowd = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balancesCrowd[address(msg.sender)], delegate.return_data[0] / 10^18
    require delegate.return_code
    balancesCrowd[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0xc7dc19502db685fbfe3399042d443fef240d513b)
    delegate 0xc7dc19502db685fbfe3399042d443fef240d513b.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceEthCrowd[address(msg.sender)], msg.value
    require delegate.return_code
    balanceEthCrowd[address(msg.sender)] = delegate.return_data[0]
    emit Transfer((delegate.return_data[0] / 10^18), 0, msg.sender);
    emit TokensIssued(delegate.return_data[0] / 10^18, balanceOf[address(msg.sender)], tokensIssuedCrowd, msg.value, msg.sender, 0);
    if eth.balance(this.address) > 0:
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
