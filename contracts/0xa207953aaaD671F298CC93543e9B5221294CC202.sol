contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor3;
array of uint256 stor5;
uint8 stor6;
address stor6; offset 8
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 6
    stor5.length.field_8 = 'LOK1.0' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_0) = 0
    stor8 = 3 * 10^6
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor1 = msg.sender
    address(stor6.field_8) = code.data[6364 len 20]
    stor1 = msg.sender
    stor0 = code.data[6384 len 32]
    stor3[address(msg.sender)] = code.data[6384 len 32]
    return code.data[455 len 5897]
}



// =====================  Runtime code  =====================


const name = 'LookRev'

const decimals = 18

const symbol = 'LOK'

const TOKENS_TOTAL = 4000000000 * 10^18

const KYC_THRESHOLD = 10000 * 10^18

const START_DATE = (417473 * 3600)

const TOKENS_SOFT_CAP = 10000000 * 10^18

const END_DATE = (418217 * 3600)

const TOKENS_HARD_CAP = 2000000000 * 10^18

const DECIMALSFACTOR = 10^18


uint256 totalSupply;
address owner;
address newOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 VERSION;
uint8 stor6;
address walletAddress; offset 8
mapping of uint8 stor7;
uint256 tokensPerKEther;
uint256 CONTRIBUTIONS_MIN;
uint256 CONTRIBUTIONS_MAX;

function totalSupply() {
    return totalSupply
}

function finalised() {
    return bool(stor6)
}

function CONTRIBUTIONS_MIN() {
    return CONTRIBUTIONS_MIN
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function CONTRIBUTIONS_MAX() {
    return CONTRIBUTIONS_MAX
}

function tokensPerKEther() {
    return tokensPerKEther
}

function kycRequired(address arg1) {
    return bool(stor7[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function VERSION() {
    return VERSION[0 len VERSION.length]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        newOwner = arg1
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
    emit WalletUpdated(arg1);
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function kycVerify(address arg1, bool arg2) {
    require owner == msg.sender
    stor7[address(arg1)] = uint8(arg2)
    emit KycVerified(bool(uint8(arg2)), arg1);
}

function finalise() {
    require owner == msg.sender
    if totalSupply < 10000000 * 10^18:
        require block.timestamp > 418217 * 3600
    require not stor6
    stor6 = 1
}

function setTokensPerKEther(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp < 417473 * 3600
    require arg1 > 0
    tokensPerKEther = arg1
    emit TokensPerKEtherUpdated(arg1);
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

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addPrecommitment(address arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp < 417473 * 3600
    require arg2 > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    emit PrecommitmentAdded(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require stor6
    require not stor7[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    require totalSupply >= arg2
    if balanceOf[address(arg1)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[0] + arg2 <= balanceOf[0]:
        return 0
    require arg2 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + balanceOf[0] >= balanceOf[0]
    require arg2 + balanceOf[0] >= arg2
    balanceOf[0] += arg2
    require arg2 <= totalSupply
    require totalSupply - arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor6
    require not stor7[address(arg1)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function proxyPayment(address arg1) payable {
    require not stor6
    require block.timestamp <= 418217 * 3600
    require msg.value > CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require (msg.value * tokensPerKEther / 1000) + totalSupply <= 2000000000 * 10^18
    require (msg.value * tokensPerKEther / 1000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require (msg.value * tokensPerKEther / 1000) + balanceOf[address(arg1)] >= msg.value * tokensPerKEther / 1000
    balanceOf[address(arg1)] += msg.value * tokensPerKEther / 1000
    require (msg.value * tokensPerKEther / 1000) + totalSupply >= totalSupply
    require (msg.value * tokensPerKEther / 1000) + totalSupply >= msg.value * tokensPerKEther / 1000
    totalSupply += msg.value * tokensPerKEther / 1000
    emit Transfer((msg.value * tokensPerKEther / 1000), 0, arg1);
    emit TokensBought(msg.value, balanceOf[address(arg1)], msg.value * tokensPerKEther / 1000, totalSupply, tokensPerKEther, arg1);
    if msg.value > 10000 * 10^18:
        stor7[address(arg1)] = 1
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor6
    require block.timestamp <= 418217 * 3600
    require msg.value > CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require (msg.value * tokensPerKEther / 1000) + totalSupply <= 2000000000 * 10^18
    require (msg.value * tokensPerKEther / 1000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (msg.value * tokensPerKEther / 1000) + balanceOf[address(msg.sender)] >= msg.value * tokensPerKEther / 1000
    balanceOf[address(msg.sender)] += msg.value * tokensPerKEther / 1000
    require (msg.value * tokensPerKEther / 1000) + totalSupply >= totalSupply
    require (msg.value * tokensPerKEther / 1000) + totalSupply >= msg.value * tokensPerKEther / 1000
    totalSupply += msg.value * tokensPerKEther / 1000
    emit Transfer((msg.value * tokensPerKEther / 1000), 0, msg.sender);
    emit TokensBought(msg.value, balanceOf[address(msg.sender)], msg.value * tokensPerKEther / 1000, totalSupply, tokensPerKEther, msg.sender);
    if msg.value > 10000 * 10^18:
        stor7[address(msg.sender)] = 1
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
