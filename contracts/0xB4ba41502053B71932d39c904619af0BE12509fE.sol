contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[55 len 2084]
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

function create(uint256 arg1, uint256 arg2, int256 arg3, address arg4, address arg5) payable {
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
    require ext_code.size(0xbf12806b40c8fbcb454f06cc756f8a4e4d1e9a21)
    delegate 0xbf12806b40c8fbcb454f06cc756f8a4e4d1e9a21.create(uint256 rg1, uint256 rg2, int256 rg3, address rg4) with:
         gas gas_remaining - 50 wei
        args 0, uint32(arg1), arg2, arg3, arg4
    require delegate.return_code
    require ext_code.size(address(delegate.return_data[0]))
    if arg5:
        if arg4:
            call address(delegate.return_data[0]).0x5c19a95c with:
                 gas gas_remaining - 50 wei
                args arg4
        else:
            call address(delegate.return_data[0]).changeMembership(address rg1, bool rg2, string rg3) with:
                 gas gas_remaining - 50 wei
                args 0, 0, 1, 96, 7, 'founder'
            require ext_call.success
            require ext_code.size(address(delegate.return_data[0]))
            call address(delegate.return_data[0]).0x5c19a95c with:
                 gas gas_remaining - 50 wei
                args arg5
        require ext_call.success
        uint256(lastContract[address(arg5)])++
        if not uint256(lastContract[address(arg5)]) <= uint256(lastContract[address(arg5)]) + 1:
            idx = uint256(lastContract[address(arg5)]) + 1
            while uint256(lastContract[address(arg5)]) > idx:
                uint256(lastContract[address(arg5)][idx]) = 0
                idx = idx + 1
                continue 
        address(lastContract[address(arg5)][uint256(lastContract[address(arg5)])]) = address(delegate.return_data[0])
        emit Builded(arg5, address(delegate.return_data[0]));
    else:
        if arg4:
            call address(delegate.return_data[0]).0x5c19a95c with:
                 gas gas_remaining - 50 wei
                args arg4
        else:
            call address(delegate.return_data[0]).changeMembership(address rg1, bool rg2, string rg3) with:
                 gas gas_remaining - 50 wei
                args 0, 0, 1, 96, 7, 'founder'
            require ext_call.success
            require ext_code.size(address(delegate.return_data[0]))
            call address(delegate.return_data[0]).0x5c19a95c with:
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
