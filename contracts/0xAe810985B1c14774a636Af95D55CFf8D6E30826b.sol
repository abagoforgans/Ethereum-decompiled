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
    require code.data[7993 len 20]
    stor2 = code.data[7993 len 20]
    require code.data[8057 len 20]
    require code.data[8089 len 20]
    require block.timestamp < code.data[8013 len 32]
    stor4 = code.data[8013 len 32]
    stor5 = stor4 + (336 * 24 * 3600)
    stor9 = code.data[8057 len 20]
    stor10 = code.data[8089 len 20]
    stor8 = code.data[8109 len 32]
    return code.data[968 len 7013]
}



// =====================  Runtime code  =====================


const computeReturn(uint256 arg1) = 10^10

const BTCS_ETHER_CAP = 50000 * 10^18

const TOKEN_PRICE_D = 10^9

const DURATION = (336 * 24 * 3600)

const TOKEN_PRICE_N = 1

const MAX_GAS_PRICE = 5 * 10^10


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

function computeRealCap(uint256 arg1, uint256 arg2) {
    return sha3(arg1, arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function acceptTokenOwnership() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function transferTokenOwnership(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function disableTokenTransfers(bool arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.disableTransfers(bool rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function issueTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function destroyTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.destroy(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawFromToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5e35359e with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function enableRealCap(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require arg1 < totalEtherCap
    totalEtherCap = arg1
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require block.gasprice <= 5 * 10^10
    call beneficiaryAddress with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    require totalEtherContributed + 1 >= totalEtherContributed
    totalEtherContributed++
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^10
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 10^10
    require ext_call.success
    emit Contribution(10^10, msg.sender);
}

function contributeETH() payable {
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require block.gasprice <= 5 * 10^10
    call beneficiaryAddress with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    require totalEtherContributed + 1 >= totalEtherContributed
    totalEtherContributed++
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^10
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 10^10
    require ext_call.success
    emit Contribution(10^10, msg.sender);
    return 10^10
}

function contributeBTCs() payable {
    require msg.sender == btcsAddress
    require block.timestamp < startTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require block.gasprice <= 5 * 10^10
    call beneficiaryAddress with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    require totalEtherContributed + 1 >= totalEtherContributed
    totalEtherContributed++
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^10
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 10^10
    require ext_call.success
    emit Contribution(10^10, msg.sender);
    return 10^10
}



}
