contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[2727 len 20]
    return code.data[112 len 2603]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function newWallet() {
    require owner == msg.sender
    create contract with 0 wei
                    code: code.data[1703 len 857], address(this.address)
    require create.new_address
    emit NewWallet(address(create.new_address));
}

function sub_325533f5(?) {
    require owner == msg.sender
    call arg1 with:
       funct Mask(32, 224, sha3('collectToken(address,address)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg2), arg3
    require ext_call.success
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(address(arg1), arg2);
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require owner == msg.sender
    require arg3
    require arg1
    require arg2 > 0
    require ext_code.size(arg3)
    call arg3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit WithdrawToken(address(arg1), arg2, arg3);
}

function collect(address arg1, uint256 arg2) {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    if arg2 > 0:
        if arg1:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Collect(address(arg1), arg2);
        else:
            call owner with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Collect(owner, arg2);
    else:
        if arg1:
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Collect(address(arg1), eth.balance(this.address));
        else:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Collect(owner, eth.balance(this.address));
}



}
