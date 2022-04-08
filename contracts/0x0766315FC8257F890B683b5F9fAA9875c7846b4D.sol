contract main {


// =======================  Init code  ======================


uint8 stor5;
uint256 stor5; offset 16
uint256 stor5; offset 8
address stor7;

function _fallback() payable {
    uint8(stor5.field_0) = 1
    Mask(248, 0, stor5.field_8) = 1
    Mask(240, 0, stor5.field_16) = 1
    require not msg.value
    stor7 = code.data[8525 len 20]
    return code.data[205 len 8308]
}



// =====================  Runtime code  =====================


const name = 'ICO Lab Fund Token'

const decimals = 8

const symbol = 'ILF'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint8 minterChangeable;
uint8 burnerChangeable; offset 8
uint8 manualEmissionEnabled; offset 16
address stor5;
address burnerAddress; offset 24
uint256 stor5; offset 16
uint256 stor5; offset 8
address minterAddress;
address iLFManagerAddress;
address iLFManagerCandidateAddress;
uint256 iLFManagerCandidateKeyHash;
address stor10;

function totalSupply() {
    return totalSupply
}

function minterAddress() {
    return minterAddress
}

function burnerChangeable() {
    return bool(burnerChangeable)
}

function previousBurners(address arg1) {
    return bool(stor4[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ILFManagerCandidateKeyHash() {
    return iLFManagerCandidateKeyHash
}

function ILFManagerCandidate() {
    return iLFManagerCandidateAddress
}

function ILFManager() {
    return iLFManagerAddress
}

function manualEmissionEnabled() {
    return bool(manualEmissionEnabled)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function previousMinters(address arg1) {
    return bool(stor3[arg1])
}

function burnerAddress() {
    return burnerAddress
}

function minterChangeable() {
    return bool(minterChangeable)
}

function _fallback() payable {
    revert
}

function sealMinter(bytes32 arg1) {
    require msg.sender == iLFManagerAddress
    require sha3(minterAddress) == arg1
    minterChangeable = 0
}

function sealBurner(bytes32 arg1) {
    require msg.sender == iLFManagerAddress
    require sha3(burnerAddress) == arg1
    Mask(248, 0, stor5.field_8) = 0
}

function changeMinter(address arg1) {
    require msg.sender == iLFManagerAddress
    require minterChangeable
    stor3[stor6] = 1
    minterAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function disableManualEmission(bytes32 arg1) {
    require msg.sender == iLFManagerAddress
    require sha3(iLFManagerAddress) == arg1
    Mask(240, 0, stor5.field_16) = 0
}

function changeILFManager(address arg1, bytes32 arg2) {
    require msg.sender == iLFManagerAddress
    iLFManagerCandidateAddress = arg1
    iLFManagerCandidateKeyHash = arg2
}

function changeBurner(address arg1) {
    require msg.sender == iLFManagerAddress
    require burnerChangeable
    stor10 = arg1
    stor4[address(stor5.field_0)] = 1
    burnerAddress = arg1
}

function burnToken(address arg1, uint256 arg2) {
    require msg.sender == burnerAddress
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}

function emitToken(address arg1, uint256 arg2) {
    require arg2 > 0
    if minterAddress != msg.sender:
        require msg.sender == iLFManagerAddress
        require manualEmissionEnabled
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Emission(arg2, arg1);
}

function acceptManagement(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == iLFManagerCandidateAddress
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == iLFManagerCandidateKeyHash
    iLFManagerAddress = iLFManagerCandidateAddress
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(arg1)]
    require not stor3[address(arg1)]
    require arg1 != minterAddress
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if not arg1:
        return 0
    if arg1 == this.address:
        return 0
    if arg1 != burnerAddress:
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require ext_code.size(stor10)
    call stor10.burnILF(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4[address(arg2)]
    require not stor3[address(arg2)]
    require arg2 != minterAddress
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if not arg2:
        return 0
    if arg2 == this.address:
        return 0
    if arg2 == burnerAddress:
        require ext_code.size(stor10)
        call stor10.burnILF(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3
        require ext_call.success
        return 1
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
