contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address stor0;
array of struct stor1;
mapping of struct product;
uint8 stor3;

function product(uint256 arg1) {
    if bool(product[arg1].field_520) != 1:
        revert with 0, 'product_not_found'
    mem[128] = product[arg1].field_0
    idx = 128
    s = 0
    while product[arg1].length + 96 > idx:
        mem[idx + 32] = product[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=product[arg1].length, data=mem[128 len product[arg1].length]), 
           product[arg1].field_256,
           product[arg1].field_512,
           bool(product[arg1].field_528)
}

function stopSale() {
    if stor0 != msg.sender:
        revert with 0, 'not_the_owner'
    if stor3:
        revert with 0, 'already_stoped'
    stor3 = 1
    return 1
}

function startSale() {
    if stor0 != msg.sender:
        revert with 0, 'not_the_owner'
    if bool(stor3) != 1:
        revert with 0, 'already_started'
    stor3 = 0
    return 1
}

function sub_fd76416a(?) {
    if stor0 != msg.sender:
        revert with 0, 'not_the_owner'
    if bool(product[arg1].field_520) != 1:
        revert with 0, 'product_not_found'
    if product[arg1].field_528:
        revert with 0, 'already_enabled'
    product[arg1].field_528 = 1
    return 1
}

function sub_54e4b5c2(?) {
    if stor0 != msg.sender:
        revert with 0, 'not_the_owner'
    if bool(product[arg1].field_520) != 1:
        revert with 0, 'product_not_found'
    if bool(product[arg1].field_528) != 1:
        revert with 0, 'already_disabled'
    product[arg1].field_528 = 0
    return 1
}

function sub_c0eb03b0(?) {
    if stor0 != msg.sender:
        revert with 0, 'not_the_owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'no_balance_to_withdraw'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_b15247d9(?) {
    if stor0 != msg.sender:
        revert with 0, 'not_the_owner'
    if product[arg2].field_520:
        revert with 0, 'product_with_price_already_exists'
    stor1.length++
    stor1[stor1.length].field_0 = arg2
    product[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
    product[arg2].field_256 = 0
    product[arg2].field_512 = 0
    product[arg2].field_520 = 1
    product[arg2].field_528 = 1
    return 1
}

function sub_c71e261f(?) {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = uint256(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function _fallback() payable {
    if stor3:
        revert with 0, 'sale_stoped'
    if bool(product[msg.value].field_520) != 1:
        revert with 0, 'product_not_found'
    if bool(product[msg.value].field_528) != 1:
        revert with 0, 'product_not_found'
    product[msg.value].field_512 = uint8(product[msg.value].field_512 + 1)
    require product[msg.value].field_256 + msg.value >= product[msg.value].field_256
    product[msg.value].field_256 += msg.value
    mem[192] = product[msg.value].field_0
    idx = 192
    s = 0
    while product[msg.value].length + 192 > idx + 32:
        mem[idx + 32] = product[msg.value][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x6b9a951e: Array(len=product[msg.value].length, data=mem[192 len product[msg.value].length + (floor32(product[msg.value].length - 1) + -product[msg.value].length + 32 % 32)]), msg.value, msg.sender
}



}
