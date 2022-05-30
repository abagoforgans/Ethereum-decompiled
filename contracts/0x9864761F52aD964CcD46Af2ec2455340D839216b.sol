contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 checkBalance;

function CheckBalance(address arg1) {
    return checkBalance[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only for owner'
    if arg1:
        owner = arg1
}

function sub_1aeaaae8(?) {
    if owner != msg.sender:
        revert with 0, 'only for owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function withdrawAllFunds() {
    if owner != msg.sender:
        revert with 0, 'only for owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() payable {
    if bool(uint8(stor0.field_160)) != 1:
        revert with 0, 'Wait a moment, I am not ready.'
    if checkBalance[msg.sender] <= 0:
        revert with 0, 'Your vault is empty.'
    checkBalance[msg.sender] = 0
    call msg.sender with:
       value checkBalance[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf74fad99: msg.sender, checkBalance[msg.sender]
}

function sub_50883b2d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'only for owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        checkBalance[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_7fcff511(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'only for owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        checkBalance[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}



}
