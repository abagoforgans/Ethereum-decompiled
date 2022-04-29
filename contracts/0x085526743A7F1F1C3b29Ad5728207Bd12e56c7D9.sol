contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    stor2 = 400
    bool(stor3.length) = 0
    stor3.length.field_1 = 6
    stor3.length.field_8 = 'Tier 1' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = '1 : 1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender
    return code.data[427 len 21180]
}



// =====================  Runtime code  =====================


const name = 'SilverToken'

const decimals = 8

const symbol = 'SLVT'


address owner;
address stor1;
uint256 infoAboveSpot;
array of uint256 infoTier;
array of uint256 infoTokenSilverRatio;
mapping of uint256 allowance;
mapping of uint256 stor6;

function infoTier() {
    return infoTier[0 len infoTier.length]
}

function infoTokenSilverRatio() {
    return infoTokenSilverRatio[0 len infoTokenSilverRatio.length]
}

function owner() {
    return owner
}

function infoAboveSpot() {
    return infoAboveSpot
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function _setStore(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function setInfoAboveSpot(uint256 arg1) {
    require msg.sender == owner
    infoAboveSpot = arg1
}

function setInfoTier(string arg1) {
    require msg.sender == owner
    infoTier[] = Array(len=arg1.length, data=arg1[all])
}

function setInfoTokenSilverRatio(string arg1) {
    require msg.sender == owner
    infoTokenSilverRatio[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _approve(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function _withdraw(address arg1) {
    require msg.sender == owner
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupply() {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='totalSupply')
    require ext_call.success
    return ext_call.return_data[0]
}

function getSetting(string arg1) {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function _setSetting(string arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0xae530504 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all]), arg2
    require ext_call.success
}

function _transfer(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    if arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokensInAction() {
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='deadTokensAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    return 0
}

function resetDeadTokens(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='deadTokensAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), owner, arg1
    require ext_call.success
    return 0
}

function _startContract() {
    require msg.sender == owner
    require stor1
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='totalSupply')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xe30443bc with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xae530504 with:
         gas gas_remaining - 710 wei
        args 0, 64, block.timestamp, 12, 'icoTimestamp'
    require ext_call.success
}

function getTokensPrice(uint256 arg1, bool arg2) {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='tokenPrice')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='multiplier')
    require ext_call.success
    require ext_call.return_data[0]
    if not arg2:
        return (arg1 * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseFee')
    require ext_call.success
    require ext_call.return_data[0]
    return ((arg1 * ext_call.return_data[0] / ext_call.return_data[0]) + (arg1 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='transferFee')
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + (arg2 * ext_call.return_data[0] / ext_call.return_data[0]) > 0
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='feeReturnAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(ext_call.return_data[0]), arg2 * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function canPurchase(address arg1, uint256 arg2) {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='multiplier')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=15, data='purchaseTimeout')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseCap')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return ext_call.return_data[0] <= 0, 
               ext_call.return_data[0] - arg2 >= 0,
               arg2 > 0,
               arg2 < ext_call.return_data[0] * ext_call.return_data[0]
    return block.timestamp - stor6[address(arg1)] > ext_call.return_data[0], 
           ext_call.return_data[0] - arg2 >= 0,
           arg2 > 0,
           arg2 < ext_call.return_data[0] * ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='transferFee')
    require ext_call.success
    require ext_call.return_data[0]
    require arg3 + (arg3 * ext_call.return_data[0] / ext_call.return_data[0]) > 0
    require allowance[address(arg1)][address(arg2)] >= arg3 + (arg3 * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='feeReturnAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(ext_call.return_data[0]), arg3 * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    allowance[address(arg1)][address(arg2)] = allowance[address(arg1)][address(arg2)] - arg3 - (arg3 * ext_call.return_data[0] / ext_call.return_data[0])
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function redeem(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=12, data='icoTimestamp')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='redemptionTimeout')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='deadTokensAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='deadTokensAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=13, data='redemptionFee')
    require ext_call.success
    require ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require block.timestamp > 2 * ext_call.return_data[0]
    require arg1 + (arg1 * ext_call.return_data[0] / ext_call.return_data[0]) >= 0
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= arg1 + (arg1 * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(ext_call.return_data[0]), arg1
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(ext_call.return_data[0]), arg1 * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    emit TokenSold(msg.sender, arg1);
}

function _redeem(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=12, data='icoTimestamp')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='redemptionTimeout')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='deadTokensAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=17, data='deadTokensAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=13, data='redemptionFee')
    require ext_call.success
    require ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require block.timestamp > 2 * ext_call.return_data[0]
    require arg2 + (arg2 * ext_call.return_data[0] / ext_call.return_data[0]) >= 0
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg2 + (arg2 * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(ext_call.return_data[0]), arg2
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(ext_call.return_data[0]), arg2 * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    emit TokenSold(address(arg1), arg2);
}

function _purchase(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='multiplier')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseFee')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=15, data='purchaseTimeout')
    require ext_call.success
    require 2 * ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='tokenPrice')
    require ext_call.success
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require block.timestamp - stor6[address(arg1)] > ext_call.return_data[0]
    require ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >= 0
    require ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseCap')
    require ext_call.success
    require ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x5b86f599 with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xff056949 with:
         gas gas_remaining - 710 wei
        args owner, (ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='feeReturnAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x5b86f599 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    stor6[address(arg1)] = block.timestamp
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='exhaustingNumber')
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
        emit TokenPoolExhausting(ext_call.return_data[0]);
    emit TokenPurchased(address(arg1), msg.value, ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]);
    emit Transfer((ext_call.return_data[0] * arg2 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), owner, arg1);
}

function purchase() payable {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='multiplier')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseFee')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=15, data='purchaseTimeout')
    require ext_call.success
    require 2 * ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='tokenPrice')
    require ext_call.success
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require block.timestamp - stor6[address(msg.sender)] > ext_call.return_data[0]
    require ext_call.return_data[0] - (ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >= 0
    require ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseCap')
    require ext_call.success
    require ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x5b86f599 with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xff056949 with:
         gas gas_remaining - 710 wei
        args owner, (ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='feeReturnAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x5b86f599 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    stor6[address(msg.sender)] = block.timestamp
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='exhaustingNumber')
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
        emit TokenPoolExhausting(ext_call.return_data[0]);
    emit TokenPurchased(msg.sender, msg.value, ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]);
    emit Transfer((ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), owner, msg.sender);
}

function _fallback() payable {
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='multiplier')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='percentage')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseFee')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=15, data='purchaseTimeout')
    require ext_call.success
    require 2 * ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=10, data='tokenPrice')
    require ext_call.success
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require block.timestamp - stor6[address(msg.sender)] > ext_call.return_data[0]
    require ext_call.return_data[0] - (ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >= 0
    require ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=11, data='purchaseCap')
    require ext_call.success
    require ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x5b86f599 with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xff056949 with:
         gas gas_remaining - 710 wei
        args owner, (ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x1386a244 with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='feeReturnAddress')
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x5b86f599 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.success
    stor6[address(msg.sender)] = block.timestamp
    require ext_code.size(stor1)
    call stor1.0xaa6b631a with:
         gas gas_remaining - 710 wei
        args Array(len=16, data='exhaustingNumber')
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
        emit TokenPoolExhausting(ext_call.return_data[0]);
    emit TokenPurchased(msg.sender, msg.value, ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]);
    emit Transfer((ext_call.return_data[0] * msg.value / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), owner, msg.sender);
}



}
