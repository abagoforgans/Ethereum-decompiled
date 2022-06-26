contract main {




// =====================  Runtime code  =====================


const sub_d8e32287(?) = 0x821a08770c428fb15b49f562f606f209de535e80

const sub_ddd934dd(?) = 0xdf552a7eadf42b5be39e71bfc662f1c39440e548


function _fallback() payable {
    call 0xdf552a7eadf42b5be39e71bfc662f1c39440e548 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xebc0dd10: msg.value, this.address
}

function sub_631e95dd(?) {
    call 0xdf552a7eadf42b5be39e71bfc662f1c39440e548 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xebc0dd10: eth.balance(this.address), this.address
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    call msg.sender.0xa9059cbb with:
         gas gas_remaining wei
        args 0x821a08770c428fb15b49f562f606f209de535e80, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'ERC223 transfer failed'
}

function sub_1ecd5d28(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x821a08770c428fb15b49f562f606f209de535e80, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer error'
}



}
