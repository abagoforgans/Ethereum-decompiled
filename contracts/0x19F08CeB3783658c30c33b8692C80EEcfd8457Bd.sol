contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 100
    return code.data[102 len 1330]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of struct amountByCoupon;
uint256 stor2;

function getRedemptionStatus(bytes32 arg1) {
    return bool(amountByCoupon[arg1].field_512)
}

function owner() {
    return owner
}

function getAmountByCoupon(bytes32 arg1) {
    return amountByCoupon[arg1].field_256
}

function _fallback() payable {
    revert
}

function createGift(bytes32 arg1) payable {
    if 1000 * msg.value >= 1:
        require stor2
        amountByCoupon[arg1].field_0 = msg.value
        amountByCoupon[arg1].field_256 = msg.value - (msg.value / stor2)
        amountByCoupon[arg1].field_520 = msg.sender
        amountByCoupon[arg1].field_512 = 0
        call owner with:
           value msg.value / stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function redeemGift(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if amountByCoupon[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 <= 0:
        return 0
    if amountByCoupon[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512:
        return 0
    call arg2 with:
       value amountByCoupon[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    amountByCoupon[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512 = 1
    mem[ceil32(arg1.length) + 128] = amountByCoupon[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256
    return memory
      from ceil32(arg1.length) + 128
       len 32
}



}
