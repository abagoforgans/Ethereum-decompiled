contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getMaxBet = ext_call.return_data[0]

const getTargetBalance = eth.balance(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)


uint8 stor0;
address stor0; offset 8

function sub_4fc59df4(?) {
    return bool(uint8(stor0.field_0))
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == address(stor0.field_8)
    call address(stor0.field_8) with:
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
    require msg.sender == address(stor0.field_8)
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
    uint8(stor0.field_0) = 1
}

function sub_473b97ea(?) {
    require msg.sender == address(stor0.field_8)
    require 1 == bool(uint8(stor0.field_0))
    require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
    staticcall 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.0xf4d024da with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 >= 50:
        if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 < 75:
            require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
            call 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.result() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 >= 350:
                if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 < 375:
                    require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
                    call 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.result() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 >= 650:
                        if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 < 675:
                            require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
                            call 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.result() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 >= 950:
                                if sha3(block.hash(ext_call.return_data[0]), block.timestamp, address(this.address), 0) % 1000 < 975:
                                    require ext_code.size(0xe9b94a004875a7d59b539b9240ede4f6fee5c52a)
                                    call 0xe9b94a004875a7d59b539b9240ede4f6fee5c52a.result() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
}



}
