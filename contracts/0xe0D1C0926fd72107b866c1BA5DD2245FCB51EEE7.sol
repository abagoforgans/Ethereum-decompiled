contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[65 len 2844]
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

function create(address arg1, address arg2, string arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, address arg12) payable {
    mem[128 len arg3.length] = arg3[all]
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
    mem[ceil32(arg3.length) + 128] = 0x7226d05500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 228] = arg4
    mem[ceil32(arg3.length) + 260] = arg5
    mem[ceil32(arg3.length) + 292] = arg6
    mem[ceil32(arg3.length) + 324] = arg7
    mem[ceil32(arg3.length) + 356] = arg8
    mem[ceil32(arg3.length) + 388] = arg9
    mem[ceil32(arg3.length) + 420] = arg10
    mem[ceil32(arg3.length) + 452] = arg11
    mem[ceil32(arg3.length) + 196] = 352
    mem[ceil32(arg3.length) + 484] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(0x1bed48d6ce1a76d4e0578cfb234c6eb4ed0691fe)
            delegate 0x1bed48d6ce1a76d4e0578cfb234c6eb4ed0691fe.0x7226d055 with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, 352, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg3.length, mem[ceil32(arg3.length) + 516 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 516] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 548 len arg3.length % 32]
            require ext_code.size(0x1bed48d6ce1a76d4e0578cfb234c6eb4ed0691fe)
            delegate 0x1bed48d6ce1a76d4e0578cfb234c6eb4ed0691fe.0x7226d055 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 516 len floor32(arg3.length) + 32]), arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
    else:
        mem[ceil32(arg3.length) + 516] = mem[128]
        mem[ceil32(arg3.length) + 548 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(0x1bed48d6ce1a76d4e0578cfb234c6eb4ed0691fe)
        delegate 0x1bed48d6ce1a76d4e0578cfb234c6eb4ed0691fe.0x7226d055 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 516 len arg3.length]), arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
    require delegate.return_code
    require ext_code.size(address(delegate.return_data[0]))
    if arg12:
        call address(delegate.return_data[0]).0x13af4035 with:
             gas gas_remaining - 50 wei
            args arg12
        require ext_call.success
        require ext_code.size(address(delegate.return_data[0]))
        call address(delegate.return_data[0]).0xd31fdffd with:
             gas gas_remaining - 50 wei
            args arg12
        require ext_call.success
        uint256(lastContract[address(arg12)])++
        if not uint256(lastContract[address(arg12)]) <= uint256(lastContract[address(arg12)]) + 1:
            idx = uint256(lastContract[address(arg12)]) + 1
            while uint256(lastContract[address(arg12)]) > idx:
                uint256(lastContract[address(arg12)][idx]) = 0
                idx = idx + 1
                continue 
        address(lastContract[address(arg12)][uint256(lastContract[address(arg12)])]) = address(delegate.return_data[0])
        emit Builded(arg12, address(delegate.return_data[0]));
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
