contract main {




// =====================  Runtime code  =====================


address stor0;
address tokenContractAddress;
address paymentAddress;
uint128 sub_f68748ad;
mapping of struct sub_a845276e;

function PaymentAddress() {
    return paymentAddress
}

function TokenContract() {
    return tokenContractAddress
}

function sub_a845276e(?) {
    return sub_a845276e[arg1].field_0, 
           sub_a845276e[arg1].field_256,
           sub_a845276e[arg1].field_512,
           sub_a845276e[arg1].field_768,
           sub_a845276e[arg1].field_1024,
           sub_a845276e[arg1].field_1280
}

function sub_f68748ad(?) {
    return sub_f68748ad
}

function _fallback() payable {
    revert
}

function deploy(bytes arg1) {
    create contract with 0 wei
                    code: arg1[all]
    return address(create.new_address)
}

function sub_6ffcb792(?) {
    require ext_code.size(stor0)
    call stor0.isAdmin(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must be an Administrator'
    paymentAddress = arg1
    return 0
}

function getHash(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_bdbcd573(?) {
    if sub_a845276e[arg1].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must use original purchasing Wallet'
    if sub_a845276e[arg1].field_0 <= 0:
        revert with 0, 'Already Refunded Purchase'
    if sub_a845276e[arg1].field_1024:
        revert with 0, 'Already Deployed Contract'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_a845276e[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to approve withdrawal amount'
    sub_a845276e[arg1].field_768 = block.number
    sub_a845276e[arg1].field_0 = 0
    emit 0xccb417b5: arg1, msg.sender
    return 1
}

function sub_65c90521(?) {
    if sub_a845276e[arg1].field_512:
        if sub_a845276e[arg1].field_512 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Error: Already started Purchase using another Wallet'
    if sub_a845276e[arg1].field_1024:
        revert with 0, 'Contract Already Deployed'
    if sub_a845276e[arg1].field_0 + arg2 <= sub_a845276e[arg1].field_0:
        revert with 0, 'Error: Payment Overflow'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could Not Withdraw Payment'
    sub_a845276e[arg1].field_0 += arg2
    sub_a845276e[arg1].field_256 = block.number
    sub_a845276e[arg1].field_512 = msg.sender
    emit 0xb1e603f9: sub_a845276e[arg1].field_0, arg1
    return 1
}

function sub_d8bfcc7f(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    if sub_a845276e[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]].field_0 < arg1:
        revert with 0, 'Insufficient Payment for Deployment'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args paymentAddress, sub_a845276e[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to Retrieve Payment'
    create contract with 0 wei
                    code: arg2[all]
    sub_a845276e[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]].field_1280 = address(create.new_address)
    sub_a845276e[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]].field_1024 = block.number
    sub_a845276e[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]].field_0 = 0
    emit 0xa9c31872: sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]), address(create.new_address)
    return address(create.new_address)
}



}
