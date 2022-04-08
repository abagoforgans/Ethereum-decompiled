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

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '0.1' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 1498657800
    stor5 = stor4 + (336 * 24 * 3600)
    stor6 = 100000000000000000 * 10^18
    stor7 = 0
    stor8 = 0xa20f37b82967dda1159a5f415d6f6411c6b2e0e8711c624b4082578bf5e55d6f
    stor9 = 0xee0fc7d5931aaae35967bd230513418ec581981b
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[5309 len 20]
    return code.data[634 len 4663]
}



// =====================  Runtime code  =====================


const TOKEN_PRICE_D = 100

const DURATION = (336 * 24 * 3600)

const TOKEN_PRICE_N = 1


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

function newOwner() {
    return newOwner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_5641a3d8(?) {
    totalEtherCap = arg1
}

function transferOwnership(address arg1) {
    newOwner = arg1
}

function computeRealCap(uint256 arg1, uint256 arg2) {
    return sha3(arg1, arg2)
}

function acceptOwnership() {
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function acceptTokenOwnership() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function disableTokenTransfers(bool arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.disableTransfers(bool rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function transferTokenOwnership() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args 0xee0fc7d5931aaae35967bd230513418ec581981b
    require ext_call.success
}

function destroyTokens(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.destroy(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function issueTokens() {
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0xee0fc7d5931aaae35967bd230513418ec581981b, 10 * 10^18
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
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function processContribution() {
    call beneficiaryAddress with:
       value 10^17 wei
         gas 0 wei
    require ext_call.success
    totalEtherContributed = 10^17
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 10 * 10^18
    require ext_call.success
    return 10 * 10^18
}



}
