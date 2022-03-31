contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[65 len 2534]
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
    require hammerAddress == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setCost(uint256 arg1) {
    require owner == msg.sender
    buildingCostWei = arg1
}

function setHammer(address arg1) {
    require hammerAddress == msg.sender
    hammerAddress = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function setSecurityCheck(string arg1) {
    require owner == msg.sender
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}

function create(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
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
    require ext_code.size(0x7ca240a2f7db1dda2a1e84f67214216f85542d90)
    delegate 0x7ca240a2f7db1dda2a1e84f67214216f85542d90.0x5165da30 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, arg3
    require delegate.return_code
    require ext_code.size(address(delegate.return_data[0]))
    if arg4:
        call address(delegate.return_data[0]).0x13af4035 with:
             gas gas_remaining - 50 wei
            args arg4
        require ext_call.success
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0xd31fdffd with:
             gas gas_remaining - 50 wei
            args arg4
        require ext_call.success
        uint256(lastContract[address(arg4)])++
        if not uint256(lastContract[address(arg4)]) <= uint256(lastContract[address(arg4)]) + 1:
            idx = uint256(lastContract[address(arg4)]) + 1
            while uint256(lastContract[address(arg4)]) > idx:
                uint256(lastContract[address(arg4)][idx]) = 0
                idx = idx + 1
                continue 
        address(lastContract[address(arg4)][uint256(lastContract[address(arg4)])]) = address(delegate.return_data[0])
        emit Builded(arg4, address(delegate.return_data[0]));
    else:
        call address(delegate.return_data[0]).0x13af4035 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0xd31fdffd with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        uint256(lastContract[address(msg.sender)])++
        if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
            idx = uint256(lastContract[address(msg.sender)]) + 1
            while uint256(lastContract[address(msg.sender)]) > idx:
                uint256(lastContract[address(msg.sender)][idx]) = 0
                idx = idx + 1
                continue 
        address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
        emit Builded(msg.sender, address(delegate.return_data[0]));
    return address(delegate.return_data[0])
}



}
