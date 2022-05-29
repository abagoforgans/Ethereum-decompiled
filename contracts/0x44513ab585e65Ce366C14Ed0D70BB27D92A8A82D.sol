contract main {




// =====================  Runtime code  =====================


const name = 'NAME_PLACEHOLDER'

const symbol = 'SYMBOL_PLACEHOLDER'

const OWNER = 0x56f2364ab7c177d240a7bcf04392366bfd9f5889

const TOKEN = 0x87aa74199104c015b9e3fd78f4b31635c35515b1


function _fallback() payable {
    revert
}

function decimals() {
    require ext_code.size(0x87aa74199104c015b9e3fd78f4b31635c35515b1)
    call 0x87aa74199104c015b9e3fd78f4b31635c35515b1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function totalSupply() {
    require ext_code.size(0x87aa74199104c015b9e3fd78f4b31635c35515b1)
    call 0x87aa74199104c015b9e3fd78f4b31635c35515b1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if arg1 != 0x56f2364ab7c177d240a7bcf04392366bfd9f5889:
        return 0
    require ext_code.size(0x87aa74199104c015b9e3fd78f4b31635c35515b1)
    call 0x87aa74199104c015b9e3fd78f4b31635c35515b1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recoverTokens(address arg1, address arg2, uint256 arg3) {
    if msg.sender != 0x56f2364ab7c177d240a7bcf04392366bfd9f5889:
        revert with 0, 'Access denied'
    if 0x87aa74199104c015b9e3fd78f4b31635c35515b1 == arg1:
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
    if msg.sender != 0x56f2364ab7c177d240a7bcf04392366bfd9f5889:
        revert with 0, 'Access denied'
    require ext_code.size(0x87aa74199104c015b9e3fd78f4b31635c35515b1)
    call 0x87aa74199104c015b9e3fd78f4b31635c35515b1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Withdrawal failed'
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  arg2,
    emit 0x56f2364a: arg2
    emit 0x0: arg2
    return 1
}

function deposit(uint256 arg1) {
    if msg.sender != 0x56f2364ab7c177d240a7bcf04392366bfd9f5889:
        revert with 0, 'Access denied'
    require ext_code.size(0x87aa74199104c015b9e3fd78f4b31635c35515b1)
    call 0x87aa74199104c015b9e3fd78f4b31635c35515b1.0x23b872dd with:
         gas gas_remaining wei
        args 0x56f2364ab7c177d240a7bcf04392366bfd9f5889, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Deposit failed'
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  arg1,
    emit 0x0: arg1
    emit 0x56f2364a: arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender != 0x56f2364ab7c177d240a7bcf04392366bfd9f5889:
        revert with 0, 'Access denied'
    require ext_code.size(0x87aa74199104c015b9e3fd78f4b31635c35515b1)
    if arg1 != this.address:
        call 0x87aa74199104c015b9e3fd78f4b31635c35515b1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Withdrawal failed'
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      arg2,
        emit 0x56f2364a: arg2
        emit 0x0: arg2
    else:
        call 0x87aa74199104c015b9e3fd78f4b31635c35515b1.0x23b872dd with:
             gas gas_remaining wei
            args 0x56f2364ab7c177d240a7bcf04392366bfd9f5889, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Deposit failed'
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      arg2,
        emit 0x0: arg2
        emit 0x56f2364a: arg2
    return 1
}



}
