contract main {




// =====================  Runtime code  =====================


#
#  - sub_473b97ea(?)
#
const getBalance = eth.balance(this.address)

const getMaxBet = ext_call.return_data[0]

const getTargetBalance = eth.balance(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)


uint8 sub_4fc59df4;
address stor0; offset 8

function sub_4fc59df4(?) {
    return bool(sub_4fc59df4)
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_82a42b32(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
    staticcall 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.0xf4d024da with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function random(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
    staticcall 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.0xf4d024da with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require arg1
    return (sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(arg2), arg3) % arg1)
}

function sub_744f78d2(?) payable {
    require msg.sender == stor0
    require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
    staticcall 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.maxBet() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
    call 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.play() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4fc59df4 = 1
}



}
