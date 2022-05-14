contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[5798 len 2048], 0x23a8939f3af99c286a3890b02452e82c0bed38a1
    require create.new_address
    stor1 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[5798 len 2048], 0x23a8939f3af99c286a3890b02452e82c0bed38a1
    stor2 = address(create.new_address)
    require not msg.value
    return code.data[276 len 5522]
}



// =====================  Runtime code  =====================


const sub_316a4ed8(?) = 2 * 10^16

const sub_412a6b03(?) = 0x23a8939f3af99c286a3890b02452e82c0bed38a1

const sub_cc4179b0(?) = 37 * 10^18


address owner;
address sub_7a746b3aAddress;
address sub_f63defffAddress;

function sub_7a746b3a(?) {
    return sub_7a746b3aAddress
}

function owner() {
    return owner
}

function sub_f63defff(?) {
    return sub_f63defffAddress
}

function _fallback() payable {
  stop
}

function withdraw() {
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0x3ccfd60b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x3ccfd60b with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function exit() {
    if owner != msg.sender:
        require msg.sender == 0x47169f78750be1e6ec2deb2974458ac4f8751714
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0xe9fad8ee with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0xe9fad8ee with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function ownerWithdraw() {
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0x4311de8f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x4311de8f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_35451aca(?) {
    if owner != msg.sender:
        require msg.sender == 0x47169f78750be1e6ec2deb2974458ac4f8751714
    create contract with 0 wei
                    code: code.data[3431 len 2048], address(arg1)
    require create.new_address
    sub_7a746b3aAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[3431 len 2048], address(arg1)
    sub_f63defffAddress = address(create.new_address)
}

function buy() payable {
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.myTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(sub_7a746b3aAddress)
        call sub_7a746b3aAddress.0x9547dd5b with:
           value 2 * 10^16 wei
             gas gas_remaining - 9710 wei
            args 0, 37 * 10^18
        require ext_call.success
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.0x9547dd5b with:
       value msg.value - 2 * 10^16 wei
         gas gas_remaining - 9710 wei
        args sub_7a746b3aAddress, 37 * 10^18
    require ext_call.success
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function dump() {
    if owner != msg.sender:
        require msg.sender == 0x47169f78750be1e6ec2deb2974458ac4f8751714
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.0xe9fad8ee with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.myTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_f63defffAddress)
    if ext_call.return_data[0] / 5 > 0:
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
    call sub_f63defffAddress.0xe9fad8ee with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sellAll() {
    if owner != msg.sender:
        require msg.sender == 0x47169f78750be1e6ec2deb2974458ac4f8751714
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.myTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_7a746b3aAddress)
    call sub_7a746b3aAddress.sell(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(sub_f63defffAddress)
    call sub_f63defffAddress.myTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] / 5 > 0:
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
        require ext_code.size(sub_f63defffAddress)
        call sub_f63defffAddress.sell(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] / 5)
        require ext_call.success
}



}
