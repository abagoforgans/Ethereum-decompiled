contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[55 len 1830]
}



// =====================  Runtime code  =====================


address owner;
array of address lastContract;
address beneficiaryAddress;
uint256 buildingCostWei;
array of uint256 securityCheckURI;

function beneficiary() {
    return beneficiaryAddress
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

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function delegate(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setCost(uint256 arg1) {
    require owner == msg.sender
    buildingCostWei = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function setSecurityCheck(string arg1) {
    require owner == msg.sender
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}

function create(address arg1, address arg2, address arg3, address arg4) payable {
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
    require ext_code.size(0xaa8003250c165ee65ab2686cce8344b436cf7e53)
    delegate 0xaa8003250c165ee65ab2686cce8344b436cf7e53.create(address rg1, address rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3
    require delegate.return_code
    if arg4:
        uint256(lastContract[address(arg4)])++
        if not uint256(lastContract[address(arg4)]) <= uint256(lastContract[address(arg4)]) + 1:
            idx = uint256(lastContract[address(arg4)]) + 1
            while uint256(lastContract[address(arg4)]) > idx:
                uint256(lastContract[address(arg4)][idx]) = 0
                idx = idx + 1
                continue 
        address(lastContract[address(arg4)][uint256(lastContract[address(arg4)])]) = address(delegate.return_data[0])
        emit Builded(arg4, address(delegate.return_data[0]));
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0x5c19a95c with:
             gas gas_remaining - 50 wei
            args arg4
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
        call address(delegate.return_data[0]).0x5c19a95c with:
             gas gas_remaining - 50 wei
            args msg.sender
    require ext_call.success
    return address(delegate.return_data[0])
}



}
