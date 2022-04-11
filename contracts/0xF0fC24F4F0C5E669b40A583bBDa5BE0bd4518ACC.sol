contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint8 stor3;
address stor3;
address stor3; offset 8
address stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint256 stor12;

function _fallback() payable {
    stor1 = 0
    stor2 = 108931 * 10^9
    uint8(stor3.field_0) = 0
    stor5 = 0
    stor6 = 0
    stor7 = 50000 * 10^18
    stor8 = 100000000 * 10^18
    stor9 = 25
    stor10 = 0
    require not msg.value
    address(stor3.field_8) = msg.sender
    require stor12[address(msg.sender)] + 500000 * 10^18 >= stor12[address(msg.sender)]
    stor12[address(stor3.field_0)] = stor12[address(msg.sender)] + 500000 * 10^18
    require stor1 + 500000 * 10^18 >= stor1
    stor1 += 500000 * 10^18
    stor4 = 0x6c5140f605a9add003b3626aae4f08f41e6c6fff
    stor11 = 420648 * 24 * 3600
    return code.data[346 len 4015]
}



// =====================  Runtime code  =====================


const name = 'OwO.World Token'

const decimals = 18

const symbol = 'OWO'

const dust = 10^15


uint256 _owoAmount;
uint256 totalSupply;
uint256 _oneTokenInWei;
uint8 stor3;
address stor3;
address _ownerWallet; offset 8
address _multiSigWalletAddress;
uint256 _totalEthCollected;
uint8 stor6;
uint256 _cap;
uint256 _capOwO;
uint256 MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE;
uint256 totalPlayers;
uint256 _endsAt;
mapping of uint256 balanceOf;
mapping of uint256 stor13;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;

function _cap() {
    return _cap
}

function getTotalEth() {
    return _totalEthCollected
}

function _capOwO() {
    return _capOwO
}

function _investorCount() {
    return totalPlayers
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function _totalSupply() {
    return totalSupply
}

function getTotalPlayers() {
    return totalPlayers
}

function _ownerWallet() {
    return _ownerWallet
}

function MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE() {
    return MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE
}

function getMultiSigWallet() {
    return _multiSigWalletAddress
}

function _totalEthCollected() {
    return _totalEthCollected
}

function _multiSigWallet() {
    return _multiSigWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function _saleFinalized() {
    return bool(stor6)
}

function _owoAmount() {
    return _owoAmount
}

function getTotalSupply() {
    return totalSupply
}

function _endsAt() {
    return _endsAt
}

function getMultiSigBalance() {
    return balanceOf[stor4]
}

function _oneTokenInWei() {
    return _oneTokenInWei
}

function _CROWDSALE_PAUSED() {
    return bool(uint8(stor3.field_0))
}

function setOneTokenInWei(uint256 arg1) {
    require _ownerWallet == msg.sender
    _oneTokenInWei = arg1
    emit changed(msg.sender);
}

function setPause(bool arg1) {
    require _ownerWallet == msg.sender
    uint8(stor3.field_0) = uint8(arg1)
    emit changed(msg.sender);
}

function setEndsAt(uint256 arg1) {
    require _ownerWallet == msg.sender
    require block.timestamp < arg1
    _endsAt = arg1
    emit EndsAtChanged(arg1);
}

function withdraw() payable {
    require _ownerWallet == msg.sender
    call _multiSigWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setMultiSigWallet(address arg1) {
    require _ownerWallet == msg.sender
    require arg1
    require totalPlayers < MAX_INVESTMENTS_BEFORE_MULTISIG_CHANGE
    _multiSigWalletAddress = arg1
    emit changed(msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setFinalized(bool arg1) {
    require _ownerWallet == msg.sender
    stor6 = uint8(arg1)
    emit changed(msg.sender);
    if bool(stor6) != 1:
    require _ownerWallet == msg.sender
    call _multiSigWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require _ownerWallet == msg.sender
    require stor13[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 <= stor13[address(arg1)][address(msg.sender)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require totalSupply < _capOwO
    require not uint8(stor3.field_0)
    require not stor6
    require block.timestamp < _endsAt
    if not investedAmountOf[address(msg.sender)]:
        require totalPlayers + 1 >= totalPlayers
        totalPlayers++
    require _oneTokenInWei
    _owoAmount = msg.value / _oneTokenInWei
    require (msg.value / _oneTokenInWei) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / _oneTokenInWei
    require _owoAmount + totalSupply >= totalSupply
    totalSupply += _owoAmount
    require msg.value + _totalEthCollected >= _totalEthCollected
    _totalEthCollected += msg.value
    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] += msg.value
    require balanceOf[address(msg.sender)] >= msg.value
    require msg.value > 0
    require msg.value <= balanceOf[address(msg.sender)]
    require msg.value + balanceOf[address(stor3.field_0)] >= balanceOf[address(stor3.field_0)]
    emit Transfer(msg.value, msg.sender, _ownerWallet);
}

function createTokens() payable {
    require msg.value > 0
    require totalSupply < _capOwO
    require not uint8(stor3.field_0)
    require not stor6
    require block.timestamp < _endsAt
    if not investedAmountOf[address(msg.sender)]:
        require totalPlayers + 1 >= totalPlayers
        totalPlayers++
    require _oneTokenInWei
    _owoAmount = msg.value / _oneTokenInWei
    require (msg.value / _oneTokenInWei) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / _oneTokenInWei
    require _owoAmount + totalSupply >= totalSupply
    totalSupply += _owoAmount
    require msg.value + _totalEthCollected >= _totalEthCollected
    _totalEthCollected += msg.value
    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] += msg.value
    require balanceOf[address(msg.sender)] >= msg.value
    require msg.value > 0
    require msg.value <= balanceOf[address(msg.sender)]
    require msg.value + balanceOf[address(stor3.field_0)] >= balanceOf[address(stor3.field_0)]
    emit Transfer(msg.value, msg.sender, _ownerWallet);
}



}
