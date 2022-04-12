contract main {


// =======================  Init code  ======================


bool stor2; offset 256
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 168
address stor2; offset 16
uint8 stor3; offset 160
address stor3;

function _fallback() payable {
    uint8(stor2.field_0) = 100
    uint8(stor2.field_8) = 45
    stor2.field_256 % 1 = 0
    uint8(stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = 0x60f4025c67477edf3a8eda7d1bf6b3b035a664eb
    Mask(152, 0, stor2.field_16) = 0x9a55a3c16953a359484afd299ebdc444200edb
    uint8(stor2.field_168) = 0
    return code.data[154 len 3052]
}



// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2, bytes arg3)
#
const name = 'Pre-TGE Experty Token'

const decimals = 18

const symbol = 'PEXY'


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 basicRate;
uint8 preTgeBonus; offset 8
address preTgeManagerAddress; offset 16
uint8 stor3; offset 160
address multisigWalletAddress;
mapping of uint256 burnedTokens;

function basicRate() {
    return basicRate
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function multisigWallet() {
    return multisigWalletAddress
}

function preTgeBonus() {
    return preTgeBonus
}

function burnedTokens(address arg1) {
    return burnedTokens[arg1]
}

function isClosed() {
    return bool(stor3)
}

function preTgeManager() {
    return preTgeManagerAddress
}

function close() {
    require preTgeManagerAddress == msg.sender
    stor3 = 1
}

function changeBonus(uint8 arg1) {
    require preTgeManagerAddress == msg.sender
    require arg1 <= preTgeBonus
    preTgeBonus = arg1
}

function burnTokens(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + burnedTokens[address(msg.sender)] >= burnedTokens[address(msg.sender)]
    burnedTokens[address(msg.sender)] += arg1
}

function _fallback() payable {
    require not stor3
    balanceOf[address(msg.sender)] = (msg.value * basicRate) + (msg.value * preTgeBonus) + balanceOf[address(msg.sender)]
    totalSupply = (msg.value * basicRate) + (msg.value * preTgeBonus) + totalSupply
    call multisigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
}



}
