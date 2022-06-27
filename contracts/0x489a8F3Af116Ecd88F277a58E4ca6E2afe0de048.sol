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
        emit 0x10c026e8: bool(sha3(block.number << 224 and block.difficulty % 17592186044416 << 180 and arg1 << 176 and arg2 << 168 and uint32(sha3(Mask(160, 96, block.coinbase) >> 96) % block.timestamp) << 136 and block.timestamp << 104 and Mask(104, 0, ext_call.return_data[640])))
        if bool(sha3(block.number << 224 and block.difficulty % 17592186044416 << 180 and arg1 << 176 and arg2 << 168 and uint32(sha3(Mask(160, 96, block.coinbase) >> 96) % block.timestamp) << 136 and block.timestamp << 104 and Mask(104, 0, ext_call.return_data[640]))) == arg2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
        else:
            if bool(sha3(block.number << 224 and block.difficulty % 17592186044416 << 180 and arg1 << 176 and arg2 << 168 and uint32(sha3(Mask(160, 96, block.coinbase) >> 96) % block.timestamp) << 136 and block.timestamp << 104 and Mask(104, 0, ext_call.return_data[640]))) >= 0:
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
