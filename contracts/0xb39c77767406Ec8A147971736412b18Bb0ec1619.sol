contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2515]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
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

function newOwner() {
    return newOwner
}

function getContractsOf(address arg1, uint256 arg2) {
    require arg2 < uint256(lastContract[arg1])
    return address(lastContract[arg1][arg2])
}

function securityCheckURI() {
    return securityCheckURI[0 len securityCheckURI.length]
}

function _fallback() payable {
    revert
}

function setCost(uint256 arg1) {
    require owner == msg.sender
    buildingCostWei = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function setSecurityCheck(string arg1) {
    require owner == msg.sender
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function create(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) payable {
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
    if arg5:
        if ext_code.size(0x7ca2fbb495052a305810563d9722324c75568662):
            delegate 0x7ca2fbb495052a305810563d9722324c75568662.0x477cdbb5 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(arg1), arg2, arg3, arg4
            if delegate.return_code:
                uint256(lastContract[address(arg5)])++
                if not uint256(lastContract[address(arg5)]) <= uint256(lastContract[address(arg5)]) + 1:
                    idx = uint256(lastContract[address(arg5)]) + 1
                    while uint256(lastContract[address(arg5)]) > idx:
                        uint256(lastContract[address(arg5)][idx]) = 0
                        idx = idx + 1
                        continue 
                address(lastContract[address(arg5)][uint256(lastContract[address(arg5)])]) = address(delegate.return_data[0])
                emit Builded(arg5, address(delegate.return_data[0]));
                if ext_code.size(address(delegate.return_data[0])):
                    call address(delegate.return_data[0]).0xf2fde38b with:
                         gas gas_remaining - 710 wei
                        args arg5
                    if ext_call.success:
                        return address(delegate.return_data[0])
    else:
        if ext_code.size(0x7ca2fbb495052a305810563d9722324c75568662):
            delegate 0x7ca2fbb495052a305810563d9722324c75568662.0x477cdbb5 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(arg1), arg2, arg3, arg4
            if delegate.return_code:
                uint256(lastContract[address(msg.sender)])++
                if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
                    idx = uint256(lastContract[address(msg.sender)]) + 1
                    while uint256(lastContract[address(msg.sender)]) > idx:
                        uint256(lastContract[address(msg.sender)][idx]) = 0
                        idx = idx + 1
                        continue 
                address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = address(delegate.return_data[0])
                emit Builded(msg.sender, address(delegate.return_data[0]));
                if ext_code.size(address(delegate.return_data[0])):
                    call address(delegate.return_data[0]).0xf2fde38b with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    if ext_call.success:
                        return address(delegate.return_data[0])
    revert
}



}
