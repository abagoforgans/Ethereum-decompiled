contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[142 len 3579]
}



// =====================  Runtime code  =====================


address owner;
address hammerAddress;
array of address lastContract;
address beneficiaryAddress;
uint256 buildingCostWei;
array of uint256 securityCheckURI;

function beneficiary() {
    return beneficiaryAddress
}

function hammer() {
    return hammerAddress
}

function buildingCostWei() {
    return buildingCostWei
}

function owner() {
    return owner
}

function getLastContract() {
    require uint256(lastContract[address(msg.sender)]) - 1 < uint256(lastContract[address(msg.sender)])
    return address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])])
}

function getContractsOf(address arg1, uint256 arg2) {
    require arg2 < uint256(lastContract[arg1])
    return address(lastContract[arg1][arg2])
}

function securityCheckURI() {
    return securityCheckURI[0 len securityCheckURI.length]
}

function destroy() {
    require msg.sender == hammerAddress
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setCost(uint256 arg1) {
    require msg.sender == owner
    buildingCostWei = arg1
}

function setHammer(address arg1) {
    require msg.sender == hammerAddress
    hammerAddress = arg1
}

function setBeneficiary(address arg1) {
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function setSecurityCheck(string arg1) {
    require msg.sender == owner
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}

function create(address arg1) payable {
    if buildingCostWei <= 0:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if not beneficiaryAddress:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require msg.value >= buildingCostWei
            call beneficiaryAddress with:
               value buildingCostWei wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value > buildingCostWei:
                call msg.sender with:
                   value msg.value - buildingCostWei wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    require ext_code.size(0x4987da47f2d3db1b7a32a67933044ba976324237)
    delegate 0x4987da47f2d3db1b7a32a67933044ba976324237.0xefc81a8c with:
         gas gas_remaining - 50 wei
        args 
    require delegate.return_code
    if arg1:
        uint256(lastContract[address(arg1)])++
        if not uint256(lastContract[address(arg1)]) <= uint256(lastContract[address(arg1)]) + 1:
            idx = uint256(lastContract[address(arg1)]) + 1
            while uint256(lastContract[address(arg1)]) > idx:
                uint256(lastContract[address(arg1)][idx]) = 0
                idx = idx + 1
                continue 
        address(lastContract[address(arg1)][uint256(lastContract[address(arg1)])]) = address(delegate.return_data[0])
        emit Builded(arg1, address(delegate.return_data[0]));
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0x13af4035 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0xd31fdffd with:
             gas gas_remaining - 50 wei
            args arg1
    else:
        uint256(lastContract[address(msg.sender)])++
        if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
            idx = uint256(lastContract[address(msg.sender)]) + 1
            while uint256(lastContract[address(msg.sender)]) > idx:
                uint256(lastContract[address(msg.sender)][idx]) = 0
                idx = idx + 1
                continue 
        address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
        emit Builded(msg.sender, address(delegate.return_data[0]));
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0x13af4035 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0xd31fdffd with:
             gas gas_remaining - 50 wei
            args msg.sender
    require ext_call.success
    return address(delegate.return_data[0])
}



}
