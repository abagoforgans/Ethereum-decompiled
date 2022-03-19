contract main {


// =======================  Init code  ======================


array of uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[114 len 4657]
}



// =====================  Runtime code  =====================


mapping of address index;
mapping of uint256 recoveredIndex;
array of address recovered;
uint256 totalSupply;

function recovered(uint256 arg1) payable {
    require arg1 < recovered.length
    return address(recovered[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function getAddress(bytes32 arg1) payable {
    return address(index[arg1])
}

function index(bytes32 arg1) payable {
    return address(index[arg1])
}

function recoveredIndex(address arg1) payable {
    return recoveredIndex[arg1]
}

function _fallback() payable {
  stop
}

function setAddress(bytes32 arg1, address arg2) payable {
    uint256(index[arg1]) = arg2 or Mask(96, 160, uint256(index[arg1]))
}

function balanceOf(address arg1) payable {
    call address(index['ezcoinDb']).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getAccountBalance(address arg1) payable {
    call address(index['ezcoinDb']).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function issueCoin(address arg1, uint256 arg2) payable {
    call address(index['ezcoinDb']).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    require ext_call.success
    totalSupply += arg2
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    call address(index['ezcoinDb']).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        return 0
    call address(index['ezcoinDb']).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    require ext_call.success
    call address(index['ezcoinDb']).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg2, 0, 0
    emit Transfer(arg2, tx.origin, arg1);
    return 1
}

function transferPool(address arg1, address arg2, uint256 arg3) payable {
    call address(index['ezcoinDb']).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        return 0
    call address(index['ezcoinDb']).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    call address(index['ezcoinDb']).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferTo(address arg1, address arg2, uint256 arg3) payable {
    if arg1 != tx.origin:
        emit Error(9, tx.origin, msg.sender);
        return 0
    if arg1 != msg.sender:
        emit Error(9, tx.origin, msg.sender);
        return 0
    call address(index['ezcoinDb']).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        return 0
    call address(index['ezcoinDb']).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    require ext_call.success
    call address(index['ezcoinDb']).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, arg3, 0, 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function recoverAccount(address arg1, address arg2) payable {
    if recoveredIndex[address(arg1)]:
        return 0
    recovered.length++
    if not recovered.length <= recovered.length + 1:
        idx = recovered.length + 1
        while recovered.length > idx:
            uint256(recovered[idx]) = 0
            idx = idx + 1
            continue 
    require recovered.length < recovered.length
    uint256(recovered[recovered.length]) = arg1 or Mask(96, 160, uint256(recovered[recovered.length]))
    recoveredIndex[address(arg1)] = recovered.length
    call address(index['ezcoinDb']).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(index['ezcoinDb']).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    if not ext_call.return_data[0]:
        emit Error(5, tx.origin, msg.sender);
        return 0
    call address(index['ezcoinDb']).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
         gas gas_remaining - 25050 wei
        args 0, 0, ext_call.return_data[0], 0, 0
    require ext_call.success
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
            require idx < arg2.length
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        emit Error(7, tx.origin, msg.sender);
        return 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = tx.origin
    call address(index['ezcoinDb']).getBalance(address rg1) with:
         gas gas_remaining - 25050 wei
        args tx.origin
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] >= s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None:
        idx = 0
        while uint8(idx) < arg1.length:
            require idx < arg1.length
            _75 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _79 = mem[(32 * idx) + (32 * arg1.length) + 160]
            call address(index['ezcoinDb']).withdraw(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args tx.origin, mem[(32 * idx) + (32 * arg1.length) + 160], 0, 0
            require ext_call.success
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _79
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 0
            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 0
            call address(index['ezcoinDb']).deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
                 gas gas_remaining - 25050 wei
                args address(_75), _79, 0, 0
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _79
            emit Transfer(_79, tx.origin, address(_75));
            idx = idx + 1
            continue 
        return 1
    emit Error(8, tx.origin, msg.sender);
    return 0
}



}
