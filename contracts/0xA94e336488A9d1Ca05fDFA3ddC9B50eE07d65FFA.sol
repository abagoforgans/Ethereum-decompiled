contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
address contractOwner; offset 8
uint256 stor0; offset 8
bool stor1; offset 256
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 176
address pendingContractOwner;
uint256 sub_485484e5;
mapping of uint256 userBalance;

function userBalance(address arg1) {
    return userBalance[arg1]
}

function sub_359b77cc(?) {
    return bool(uint8(stor1.field_160))
}

function isConstructedOwned() {
    return bool(uint8(stor0.field_0))
}

function sub_449730b8(?) {
    return bool(uint8(stor1.field_168))
}

function sub_485484e5(?) {
    return sub_485484e5
}

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    if uint8(stor1.field_168):
        revert with 'Listing is still in progress'
}

function deposit() payable {
    if uint8(stor1.field_168):
        revert with 'Listing is still in progress'
    return 1
}

function constructOwned() {
    if uint8(stor0.field_0):
        return 0
    uint8(stor0.field_0) = 1
    contractOwner = msg.sender
    stor0.field_256 % 1 = 0
    emit ContractOwnerChanged(msg.sender);
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        emit Error('Not a contract owner');
        return 0
    pendingContractOwner = arg1
    emit PendingContractOwnerChanged(arg1);
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        emit Error('Not a pending contract owner');
        return 0
    Mask(248, 0, stor0.field_8) = pendingContractOwner
    pendingContractOwner = 0
    emit ContractOwnerChanged(pendingContractOwner);
    return 1
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        emit Error('Not a contract owner');
        return 0
    contractOwner = arg1
    emit ContractOwnerChanged(address arg1):
                              0,
                              arg1,
    return 1
}

function sub_6a0f334f(?) {
    if contractOwner != msg.sender:
        emit Error('Not a contract owner');
        return 0
    if not uint8(stor1.field_168):
        emit Error('Listing is already finished');
        return 0
    uint8(stor1.field_168) = 0
    emit 0xfc3d4eb1: sub_485484e5
    return 1
}

function withdrawAllFundsFromContract() {
    if contractOwner != msg.sender:
        emit Error('Not a contract owner');
        return 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_fec7380c(?) {
    if uint8(stor1.field_168):
        emit Error('Listing is still in progress');
        return 0
    userBalance[address(arg1)] = 0
    call arg1 with:
       value userBalance[address(arg1)] wei
         gas gas_remaining wei
    require ext_call.success
    emit 0x94462964: address(arg1), userBalance[address(arg1)]
    return 1
}

function sub_96ee54e1(?) {
    if not uint8(stor0.field_0):
        uint8(stor0.field_0) = 1
        contractOwner = msg.sender
        stor0.field_256 % 1 = 0
        emit ContractOwnerChanged(msg.sender);
    if uint8(stor1.field_160):
        return 0
    uint8(stor1.field_160) = 1
    uint8(stor1.field_168) = 1
    Mask(80, 0, stor1.field_176) = 0
    stor1.field_256 % 1 = 0
    return 1
}

function sub_a6c19f4f(?) {
    if contractOwner != msg.sender:
        emit Error('Not a contract owner');
        return 0
    if not uint8(stor1.field_168):
        emit Error('Listing is already finished');
        return 0
    userBalance[address(arg1)] = arg2
    emit 0x5fdcf20c: address(arg1), arg2
    sub_485484e5 = sha3(sub_485484e5, arg1, arg2)
    emit 0x5435b006: sha3(sub_485484e5, arg1, arg2)
    return 1
}

function sub_ee800dc9(?) {
    if uint8(stor1.field_168):
        emit Error('Listing is still in progress');
    else:
        if not userBalance[address(arg1)]:
            return 1
        userBalance[address(arg1)] = 0
        call arg1 with:
           value userBalance[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0x94462964: address(arg1), userBalance[address(arg1)]
            return 1
        emit 0xf4cc964b: address(arg1), userBalance[address(arg1)]
    return 0
}

function withdrawAllTokensFromContract(address arg1) {
    if contractOwner != msg.sender:
        emit Error('Not a contract owner');
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function distribute(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if uint8(stor1.field_168):
        emit Error('Listing is still in progress');
        return 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        _22 = sha3(mem[(32 * idx) + 140 len 20], 3)
        if userBalance[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            userBalance[address(mem[(32 * idx) + 128])] = 0
            call mem[(32 * idx) + 140 len 20] with:
               value userBalance[mem[(32 * idx) + 140 len 20]] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 160] = stor[_22]
                emit 0x94462964: mem[(32 * arg1.length) + 128], stor[_22]
            else:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                userBalance[address(mem[(32 * idx) + 128])] = userBalance[mem[(32 * idx) + 140 len 20]]
                mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 160] = stor[_22]
                emit 0xf4cc964b: mem[(32 * arg1.length) + 128], stor[_22]
        idx = idx + 1
        continue 
    return 1
}

function sub_140c2f6a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if contractOwner != msg.sender:
        emit Error('Not a contract owner');
        return 0
    if not uint8(stor1.field_168):
        emit Error('Listing is already finished');
        return 0
    if arg1.length != arg2.length:
        emit Error('Invalid input');
        return 0
    idx = 0
    s = sub_485484e5
    while idx < arg1.length:
        require idx < arg1.length
        _32 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _34 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        userBalance[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
        emit 0x5fdcf20c: mem[(32 * arg2.length) + (32 * arg1.length) + 160], _34
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = s
        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = address(_32)
        mem[(32 * arg2.length) + (32 * arg1.length) + 212] = _34
        idx = idx + 1
        s = sha3(s, address(_32), _34)
        continue 
    sub_485484e5 += _40 * arg1.length
    emit 0x5435b006: (sub_485484e5 + (_40 * arg1.length))
    return 1
}



}
