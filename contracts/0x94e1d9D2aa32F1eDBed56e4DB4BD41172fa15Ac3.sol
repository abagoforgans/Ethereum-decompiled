contract main {




// =====================  Runtime code  =====================


const getRandom = uint8(sha3(block.difficulty, 0, Mask(208, 48, block.timestamp) >> 48 >> 256, block.timestamp % 281474976710656) % 100)


address stor1;

function _fallback() payable {
  stop
}

function go() payable {
    require msg.value == 39 * 10^16
    require uint8(sha3(block.difficulty, 0, Mask(208, 48, block.timestamp) >> 48 >> 256, block.timestamp % 281474976710656) % 100) >= 70
    # nil
}

function sub_88156247(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
