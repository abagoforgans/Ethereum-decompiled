contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;

function sub_5cf9712b(?) payable {
  stop
}

function test_revert() payable {
    revert
}

function sub_b6d95641(?) {
    return sha3(arg1, arg2, arg3, arg4, arg5)
}

function _fallback() payable {
    if not address(stor1):
        require not uint256(stor1)
    delegate address(stor1) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a692e4c0(?) payable {
    if arg2 == eth.balance(0x6e4382f198979a598dc5cbef188486ce9510ecb7):
        require ext_code.size(0x6e4382f198979a598dc5cbef188486ce9510ecb7)
        call 0x6e4382f198979a598dc5cbef188486ce9510ecb7.getDevBalance() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == arg3:
            require (sha3(arg1, block.hash(block.number - 1), block.coinbase, block.difficulty, block.timestamp) % 80) + 1 > 24
}

function proxy() payable {
    mem[64] = 96
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require calldata.size >= 28
    mem[24 len calldata.size] = call.data[0 len calldata.size]
    if not mem[0] % 16:
        call mem[32 len 20].mem[52 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[56 len calldata.size - 32]
        if not Mask(4, 4, mem[0]):
            require ext_call.success
        require Mask(4, 4, mem[0]) == 16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require mem[0] % 16 == 1
        delegate mem[32 len 20].mem[52 len 4] with:
             gas gas_remaining wei
            args mem[56 len calldata.size - 32]
        if not Mask(4, 4, mem[0]):
            require delegate.return_code
        require Mask(4, 4, mem[0]) == 16
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
