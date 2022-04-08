contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '0.1' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = 0
    stor6 = 1000000 * 10^18
    stor7 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[6351 len 20]
    stor2 = code.data[6351 len 20]
    require code.data[6415 len 20]
    require code.data[6447 len 20]
    stor4 = code.data[6371 len 32]
    stor5 = stor4 + (336 * 24 * 3600)
    stor9 = code.data[6415 len 20]
    stor10 = code.data[6447 len 20]
    stor8 = code.data[6467 len 32]
    return code.data[953 len 5386]
}



// =====================  Runtime code  =====================


const BTCS_ETHER_CAP = 50000 * 10^18

const TOKEN_PRICE_D = 10^9

const DURATION = (336 * 24 * 3600)

const TOKEN_PRICE_N = 1

const MAX_GAS_PRICE = 59 * 10^9


address owner;
address newOwner;
address tokenAddress;
array of uint256 version;
uint256 startTime;
uint256 endTime;
uint256 totalEtherCap;
uint256 totalEtherContributed;
uint256 realEtherCapHash;
address beneficiaryAddress;
address btcsAddress;

function endTime() {
    return endTime
}

function totalEtherCap() {
    return totalEtherCap
}

function beneficiary() {
    return beneficiaryAddress
}

function version() {
    return version[0 len version.length]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function realEtherCapHash() {
    return realEtherCapHash
}

function totalEtherContributed() {
    return totalEtherContributed
}

function btcs() {
    return btcsAddress
}

function newOwner() {
    return newOwner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    newOwner = arg1
}

function enableRealCap(uint256 arg1, uint256 arg2) {
    totalEtherCap = arg1
}

function computeRealCap(uint256 arg1, uint256 arg2) {
    return sha3(arg1, arg2)
}

function acceptOwnership() {
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function computeReturn(uint256 arg1) {
    if not arg1:
        return (10^9 * arg1)
    require arg1
    require 10^9 * arg1 / arg1 == 10^9
    return (10^9 * arg1)
}

function acceptTokenOwnership() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function transferTokenOwnership(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function disableTokenTransfers(bool arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.disableTransfers(bool rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function issueTokens(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function destroyTokens(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.destroy(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawFromToken(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5e35359e with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function _fallback() payable {
    call beneficiaryAddress with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    require totalEtherContributed + 1 >= totalEtherContributed
    totalEtherContributed++
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^9
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 10^9
    require ext_call.success
    emit Contribution(10^9, msg.sender);
}

function contributeETH() payable {
    call beneficiaryAddress with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    require totalEtherContributed + 1 >= totalEtherContributed
    totalEtherContributed++
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^9
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 10^9
    require ext_call.success
    emit Contribution(10^9, msg.sender);
    return 10^9
}

function contributeBTCs() payable {
    call beneficiaryAddress with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    require totalEtherContributed + 1 >= totalEtherContributed
    totalEtherContributed++
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^9
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 10^9
    require ext_call.success
    emit Contribution(10^9, msg.sender);
    return 10^9
}



}
