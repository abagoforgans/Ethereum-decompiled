contract main {




// =====================  Runtime code  =====================


const isPluginInterface = 1


uint8 stor0; offset 160
address owner;
uint16 ownerFee; offset 160
address coreContractAddress;
mapping of uint256 sub_ada8663d;
mapping of uint8 stor3;
address operatorAddress;

function operatorAddress() {
    return operatorAddress
}

function isBlacklisted(uint40 arg1) {
    return bool(stor3[arg1 << 216])
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_97cc7089(?) {
    return bool(stor3[arg1 % 1099511627776])
}

function sub_ada8663d(?) {
    return sub_ada8663d[arg1]
}

function ownerFee() {
    return ownerFee
}

function coreContract() {
    return coreContractAddress
}

function _fallback() payable {
    revert
}

function runSigned(uint40 arg1, uint256 arg2, address arg3) payable {
    revert
}

function setOperator(address arg1) {
    require msg.sender == owner
    operatorAddress = arg1
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function setFee(uint16 arg1) {
    require arg1 <= 10000
    require msg.sender == owner
    ownerFee = arg1
}

function addToBlacklist(uint40 arg1) {
    if operatorAddress != msg.sender:
        require msg.sender == owner
    stor3[arg1 << 216] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setCustodyFee(uint256 arg1, uint256 arg2) {
    if operatorAddress != msg.sender:
        require msg.sender == owner
    sub_ada8663d[arg1] = arg2
}

function withdraw() {
    if owner != msg.sender:
        require msg.sender == coreContractAddress
    if eth.balance(this.address) > 0:
        call coreContractAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function recoverCutie(uint40 arg1, address arg2) {
    if operatorAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(coreContractAddress)
    call coreContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isUnique(uint40 arg1) {
    require ext_code.size(coreContractAddress)
    call coreContractAddress.getGenes(uint40 arg1) with:
         gas gas_remaining wei
        args (arg1 % 1099511627776)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (1 == Mask(4, 20, ext_call.return_data[0]) >> 20)
}

function onRemove() {
    require msg.sender == coreContractAddress
    if owner != msg.sender:
        require msg.sender == coreContractAddress
    if eth.balance(this.address) > 0:
        call coreContractAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function setup(address arg1, uint16 arg2) {
    require arg2 <= 10000
    require msg.sender == owner
    ownerFee = arg2
    require ext_code.size(arg1)
    call arg1.isCutieCore() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    coreContractAddress = arg1
}

function run(uint40 arg1, uint256 arg2, address arg3) payable {
    require msg.sender == coreContractAddress
    require not stor3[arg1 << 216]
    require ext_code.size(coreContractAddress)
    call coreContractAddress.getGenes(uint40 arg1) with:
         gas gas_remaining wei
        args (arg1 % 1099511627776)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(4, 20, ext_call.return_data[0]) >> 20 != 1
    require sub_ada8663d[arg2] > 0
    require msg.value >= sub_ada8663d[arg2]
    require ext_code.size(coreContractAddress)
    call coreContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), 0, arg1 % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RIP(address(arg3), arg1 << 216, arg2);
}



}
