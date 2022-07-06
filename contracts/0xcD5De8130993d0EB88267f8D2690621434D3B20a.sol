contract main {




// =====================  Runtime code  =====================


address owner;
array of struct operators;
mapping of uint8 stor2;

function permissions(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function operators(uint256 arg1) {
    require arg1 < operators.length
    return address(operators[arg1].field_0)
}

function _fallback() {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addOperator(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor2[address(arg1)]
    operators.length++
    address(operators[operators.length].field_0) = arg1
    stor2[address(arg1)] = 1
    emit OperatorAdded(arg1);
}

function sub_b99d320d(?) {
    require stor2[msg.sender]
    create contract with 0 wei
                    code: code.data[2364 len 5885], arg1, arg2, arg3, arg4, arg8.length > 0, address(arg5), address(arg6), address(arg7), Array(len=(32 * arg8.length) + 352, data=arg8.length, call.data[arg8 + 36 len 32 * arg8.length], arg9.length, call.data[arg9 + 36 len 32 * arg9.length])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x5c8f9a2a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(create.new_address), ext_call.return_data[0]
}

function getOperators() {
    if not operators.length:
        mem[(32 * operators.length) + 128] = 32
        mem[(32 * operators.length) + 160] = operators.length
        mem[(32 * operators.length) + 192 len floor32(operators.length)] = mem[128 len floor32(operators.length)]
        return memory
          from (32 * operators.length) + 128
           len (96 * operators.length) + 64
    mem[128] = address(operators.field_0)
    idx = 128
    s = 0
    while (32 * operators.length) + 96 > idx:
        mem[idx + 32] = address(operators[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * operators.length) + 192 len floor32(operators.length)] = mem[128 len floor32(operators.length)]
    return Array(len=operators.length, data=mem[128 len floor32(operators.length)], mem[(32 * operators.length) + floor32(operators.length) + 192 len (32 * operators.length) - floor32(operators.length)]), 
}

function removeOperator(address arg1) {
    require msg.sender == owner
    require arg1
    require stor2[address(arg1)]
    idx = 0
    while idx <= operators.length - 1:
        require idx < operators.length
        mem[0] = 1
        if address(operators[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require operators.length - 1 < operators.length
        if idx < operators.length - 1:
            require idx < operators.length
            address(operators[idx].field_0) = address(operators[operators.length].field_0)
        address(operators[operators.length].field_0) = 0
        operators.length--
        if operators.length > operators.length - 1:
            idx = operators.length + sha3(1) - 1
            while sha3(1) + operators.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor2[address(arg1)] = 0
        emit OperatorRemoved(arg1);
    require operators.length - 1 < operators.length
    if 0 < operators.length - 1:
        require 0 < operators.length
        address(operators.field_0) = address(operators[operators.length].field_0)
    address(operators[operators.length].field_0) = 0
    operators.length--
    if operators.length > operators.length - 1:
        idx = operators.length - 1
        while operators.length > idx:
            operators[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg1)] = 0
    emit OperatorRemoved(arg1);
}



}
