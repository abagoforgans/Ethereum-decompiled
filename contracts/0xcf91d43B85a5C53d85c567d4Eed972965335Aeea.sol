contract main {




// =====================  Runtime code  =====================


const sub_373420d9(?) = eth.balance(this.address)


address owner;
address newOwner;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_2157c46a(?) {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_984a2df1(?) {
    require ext_code.size(0xb172bb8baae74f27ade3211e0c145388d3b4f8d8)
    call 0xb172bb8baae74f27ade3211e0c145388d3b4f8d8.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function validate() {
    require msg.sender == owner
    require ext_code.size(0xb172bb8baae74f27ade3211e0c145388d3b4f8d8)
    call 0xb172bb8baae74f27ade3211e0c145388d3b4f8d8.0xa73598fd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d69ff352(?) {
    require ext_code.size(0xb172bb8baae74f27ade3211e0c145388d3b4f8d8)
    call 0xb172bb8baae74f27ade3211e0c145388d3b4f8d8.0xffe6bbd8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5ce093de(?) payable {
    require msg.sender == owner
    require ext_code.size(0xb172bb8baae74f27ade3211e0c145388d3b4f8d8)
    call 0xb172bb8baae74f27ade3211e0c145388d3b4f8d8.0x680478b1 with:
       value 10^17 wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
