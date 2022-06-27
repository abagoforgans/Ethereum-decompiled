contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_64a51d97(?) {
    call 0xce0d3b44a9415c5be856fbf3ed9a27739477dea7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd90a7eb(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x95428ac02714244929215638f8f99e9a5a43c8ed)
    call 0x95428ac02714244929215638f8f99e9a5a43c8ed.getHistory(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 1376
        require block.timestamp
        if bool(sha3(block.number << 224 or block.difficulty % 17592186044416 << 180 or arg1 << 176 or arg2 << 168 or uint32(sha3(Mask(160, 96, block.coinbase) >> 96) % block.timestamp) << 136 or block.timestamp << 104 or Mask(104, 0, ext_call.return_data[640]))) == arg2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
        else:
            if bool(sha3(block.number << 224 or block.difficulty % 17592186044416 << 180 or arg1 << 176 or arg2 << 168 or uint32(sha3(Mask(160, 96, block.coinbase) >> 96) % block.timestamp) << 136 or block.timestamp << 104 or Mask(104, 0, ext_call.return_data[640]))) >= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
            else:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
}



}
