contract main {




// =====================  Runtime code  =====================


const isPluginInterface = 1


uint8 stor0; offset 160
address owner;
uint16 ownerFee; offset 160
address coreContractAddress;
address operatorAddress;

function operatorAddress() {
    return operatorAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
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

function run(uint40 arg1, uint256 arg2, address arg3) payable {
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

function runSigned(uint40 arg1, uint256 arg2, address arg3) payable {
    require msg.sender == coreContractAddress
    require stor0
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function setupCutie(uint40 arg1, uint16 arg2) {
    require not stor0
    require msg.sender == operatorAddress
    require ext_code.size(coreContractAddress)
    call coreContractAddress.changeGeneration(uint40 arg1, uint16 arg2) with:
         gas gas_remaining wei
        args arg1 << 216, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(coreContractAddress)
    call coreContractAddress.config() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getCooldownIndexFromGeneration(uint16 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coreContractAddress)
    call coreContractAddress.changeCooldownIndex(uint40 arg1, uint16 arg2) with:
         gas gas_remaining wei
        args arg1 << 216, uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
