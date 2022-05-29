contract main {




// =====================  Runtime code  =====================


const name = 'Optherium Airdrop Tokens'

const symbol = 'OPEXairdrop'

const OWNER = 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8

const TOKEN = 0xb34a04b77aa9bd2c07ef365c05f7d0234c95630


function _fallback() payable {
    revert
}

function decimals() {
    require ext_code.size(0xb34a04b77aa9bd2c07ef365c05f7d0234c95630)
    call 0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function totalSupply() {
    require ext_code.size(0xb34a04b77aa9bd2c07ef365c05f7d0234c95630)
    call 0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if arg1 != 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8:
        return 0
    require ext_code.size(0xb34a04b77aa9bd2c07ef365c05f7d0234c95630)
    call 0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recoverTokens(address arg1, address arg2, uint256 arg3) {
    if msg.sender != 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8:
        revert with 0, 'Access denied'
    if 0xb34a04b77aa9bd2c07ef365c05f7d0234c95630 == arg1:
        revert with 0, 'Can not recover this token'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdraw(address arg1, uint256 arg2) {
    if msg.sender != 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8:
        revert with 0, 'Access denied'
    require ext_code.size(0xb34a04b77aa9bd2c07ef365c05f7d0234c95630)
    call 0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Withdrawal failed'
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  arg2,
    emit 0xcba6ee74: arg2
    emit 0x0: arg2
    return 1
}

function deposit(uint256 arg1) {
    if msg.sender != 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8:
        revert with 0, 'Access denied'
    require ext_code.size(0xb34a04b77aa9bd2c07ef365c05f7d0234c95630)
    call 0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630.0x23b872dd with:
         gas gas_remaining wei
        args 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Deposit failed'
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  arg1,
    emit 0x0: arg1
    emit 0xcba6ee74: arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender != 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8:
        revert with 0, 'Access denied'
    require ext_code.size(0xb34a04b77aa9bd2c07ef365c05f7d0234c95630)
    if arg1 != this.address:
        call 0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Withdrawal failed'
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      arg2,
        emit 0xcba6ee74: arg2
        emit 0x0: arg2
    else:
        call 0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630.0x23b872dd with:
             gas gas_remaining wei
            args 0xcba6ee74b7ca65bd0506cf21d62bdd7c71f86ad8, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Deposit failed'
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      arg2,
        emit 0x0: arg2
        emit 0xcba6ee74: arg2
    return 1
}



}
