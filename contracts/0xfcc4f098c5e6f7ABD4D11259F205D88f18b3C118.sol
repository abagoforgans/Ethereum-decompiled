contract main {


// =======================  Init code  ======================


uint256 stor6;
uint256 stor8;
uint256 stor9;
uint8 stor10;
address stor10; offset 8
uint256 stor11;
uint8 stor12;
uint256 stor12; offset 8
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor6 = 0
    stor8 = 0
    stor9 = 108931 * 10^9
    uint8(stor10.field_0) = 0
    stor11 = 0
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
    stor13 = 50000 * 10^18
    stor14 = 10 * 10^6
    require not msg.value
    require not address(stor10.field_8)
    address(stor10.field_8) = msg.sender
    return code.data[299 len 5419]
}



// =====================  Runtime code  =====================


const name = 'OwO Token'

const totalSupply = 0

const decimals = 18

const symbol = 'OWO'

const dust = 10^15


uint256 sub_2931ce06;
uint256 sub_55c57ba3;
uint256 sub_7ab36b53;
uint256 sub_2f8845f2;
uint8 sub_a2694b34;
uint256 _owoAmount;
uint256 _totalSupply;
uint256 sub_f8b9f1e5;
uint256 sub_4264dfea;
uint256 _oneTokenInWei;
uint8 _CROWDSALE_PAUSED;
address _teamWalletAddress; offset 8
uint256 _totalEthCollected;
uint8 stor12;
uint8 stor12; offset 8
uint256 _cap;
uint256 _capOwO;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function _cap() {
    return _cap
}

function _capOwO() {
    return _capOwO
}

function sub_2931ce06(?) {
    return sub_2931ce06
}

function sub_2f8845f2(?) {
    return sub_2f8845f2
}

function _teamWallet() {
    return _teamWalletAddress
}

function _totalSupply() {
    return _totalSupply
}

function sub_4264dfea(?) {
    return sub_4264dfea
}

function sub_55c57ba3(?) {
    return sub_55c57ba3
}

function _totalEthCollected() {
    return _totalEthCollected
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7ab36b53(?) {
    return sub_7ab36b53
}

function _saleFinalized() {
    return bool(uint8(stor12.field_8))
}

function sub_a008ae30(?) {
    return bool(uint8(stor12.field_0))
}

function sub_a2694b34(?) {
    return sub_a2694b34
}

function _owoAmount() {
    return _owoAmount
}

function _oneTokenInWei() {
    return _oneTokenInWei
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _CROWDSALE_PAUSED() {
    return bool(_CROWDSALE_PAUSED)
}

function sub_f8b9f1e5(?) {
    return sub_f8b9f1e5
}

function computeCap(uint256 arg1, uint256 arg2) {
    return sha3(arg1, arg2)
}

function isValidCap(uint256 arg1, uint256 arg2) {
    return (sha3(arg1, arg2) == sub_f8b9f1e5)
}

function setPause(bool arg1) {
    require msg.sender == _teamWalletAddress
    _CROWDSALE_PAUSED = uint8(arg1)
    emit changed(msg.sender);
}

function setOneTokenInWei(uint256 arg1) {
    require msg.sender == _teamWalletAddress
    _oneTokenInWei = arg1
    emit changed(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() payable {
    require msg.sender == _teamWalletAddress
    require block.number > sub_55c57ba3
    require bool(uint8(stor12.field_8)) == 1
    call _teamWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require _totalSupply < _capOwO
    require not _CROWDSALE_PAUSED
    require _totalEthCollected + msg.value >= _totalEthCollected
    require _totalEthCollected + msg.value < _cap
    require _oneTokenInWei
    _owoAmount = msg.value / _oneTokenInWei
    require balanceOf[address(msg.sender)] + _owoAmount >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += _owoAmount
    require _totalSupply + _owoAmount >= _totalSupply
    _totalSupply += _owoAmount
    require _totalEthCollected + msg.value >= _totalEthCollected
    _totalEthCollected += msg.value
    call _teamWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value > 0
    require _totalSupply < _capOwO
    require not _CROWDSALE_PAUSED
    require _totalEthCollected + msg.value >= _totalEthCollected
    require _totalEthCollected + msg.value < _cap
    require _oneTokenInWei
    _owoAmount = msg.value / _oneTokenInWei
    require balanceOf[address(msg.sender)] + _owoAmount >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += _owoAmount
    require _totalSupply + _owoAmount >= _totalSupply
    _totalSupply += _owoAmount
    require _totalEthCollected + msg.value >= _totalEthCollected
    _totalEthCollected += msg.value
    call _teamWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
