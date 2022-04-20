contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[94 len 1944]
}



// =====================  Runtime code  =====================


address owner;

function Owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdraw() payable {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_5bd74afe(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
}

function sub_a2b2cad2(?) payable {
    require owner == msg.sender
    call arg1 with:
       funct Mask(32, 224, sha3('init()')) >> 224
       value msg.value wei
         gas gas_remaining - 34710 wei
    call arg1 with:
       funct Mask(32, 224, sha3('setRelease(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args 1
    require msg.value
    idx = 0
    while idx < eth.balance(arg1) / msg.value:
        mem[96] = Mask(32, 224, sha3('withdraw(uint256)'))
        mem[100] = msg.value
        call arg1 with:
           funct Mask(32, 224, sha3('withdraw(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.value
        require ext_call.success
        idx = idx + 1
        continue 
    call arg1 with:
       funct Mask(32, 224, sha3('withdraw(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args (eth.balance(arg1) - (msg.value * eth.balance(arg1) / msg.value))
    require eth.balance(this.address) > eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
