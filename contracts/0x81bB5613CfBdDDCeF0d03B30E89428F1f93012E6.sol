contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[87 len 4859]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 tokens;
address beneficiaryAddress;

function beneficiary() {
    return beneficiaryAddress
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function owner() {
    return owner
}

function assert(bool arg1) {
    require arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    emit SetOwner(owner, arg1);
    owner = arg1
}

function setBeneficiary(address arg1) {
    require msg.sender == owner
    beneficiaryAddress = arg1
    emit 0x4d55a8be: arg1
    return 1
}

function _fallback() payable {
    require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
    require tokens[0][address(msg.sender)] + msg.value >= msg.value
    tokens[0][address(msg.sender)] += msg.value
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xb6065fe5: address(msg.sender), 0, msg.value, tokens[0][address(msg.sender)]
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 <= tokens[address(arg1)][address(arg2)]
    tokens[address(arg1)][address(arg2)] -= arg3
    if not arg1:
        call msg.sender with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            return 1
    else:
        if ext_code.size(arg1):
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args address(arg2), arg3
            if ext_call.success:
                if ext_call.return_data[0]:
                    return 1
    revert 
}

function deposit(address arg1, uint256 arg2) payable {
    if not arg1:
        require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
        require tokens[0][address(msg.sender)] + msg.value >= msg.value
        tokens[0][address(msg.sender)] += msg.value
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xb6065fe5: address(msg.sender), 0, msg.value, tokens[0][address(msg.sender)]
    else:
        require msg.value <= 0
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 50 wei
            args msg.sender, beneficiaryAddress, arg2
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require tokens[address(arg1)][address(msg.sender)] >= tokens[address(arg1)][address(msg.sender)]
        require tokens[address(arg1)][address(msg.sender)] >= 0
        emit 0xb6065fe5: address(msg.sender), address(arg1), 0, tokens[address(arg1)][address(msg.sender)]
    return 1
}



}
